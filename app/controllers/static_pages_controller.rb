class StaticPagesController < ApplicationController
  def home
    articles = Article.all

    # 協調性フィルタ
    if logged_in? then
      child = Child.find_by(user_id: current_user.id)
      children = Child.all
      top_match = top_matches(children, child)
      # @top_match = top_matches(children, child)
      top_match_id = []
      @a = Array.new
      for i in 0..9
        top_match_id[i] = top_match[i][1].id
        @a << Article.find_by(child_id: top_match[i][1].id)
        # @a << top_match[i][1].id
      end
      articles = Article.where(child_id: top_match_id)
      # @articles = Article.where(child_id: top_match_id)
      @lists = @a
    else
      @lists = Article.all
    end

    # @lists = articles
  end

  def help
  end

  private

  def sim_pearson(prefs, person1, person2)

    p1 = [person1.char_sukinamono, person1.char_kyocho, person1.char_kyomi,
          person1.char_syuchu, person1.char_ochitsuki, person1.char_gakuryoku]
    p2 = [person2.char_sukinamono, person2.char_kyocho, person2.char_kyomi,
          person2.char_syuchu, person2.char_ochitsuki, person2.char_gakuryoku]

    n = p1.size

    sum1 = p1.inject(:+)

    sum2 = p2.inject(:+)

    sum1_sq = p1.inject(0) {|result,si|
      result + si**2
    }
    sum2_sq = p2.inject(0) {|result,si|
      result + si**2
    }
    p12 = []
    for i in 0..n-1
      p12[i] = p1[i] * p2[i]
    end
    sum_products = p12.inject(:+)

    num = sum_products - (sum1*sum2/n)
    den = Math.sqrt((sum1_sq - sum1**2/n)*(sum2_sq - sum2**2/n))
    return 0 if den == 0
    return num/den
  end

  def top_matches(prefs, person, n=10, similarity=:sim_pearson)
    scores = Array.new
    prefs.each do |child| # ハッシュを each して
      if child.id != person.id
        # 類似度算出アルゴリズムのメソッドに人名とアイテム、スコアを送信する
        scores << [__send__(similarity,prefs,person,child),child]
      end
    end
    scores.sort.reverse[0,n] # スコアの降順にソートして返却
  end

end
