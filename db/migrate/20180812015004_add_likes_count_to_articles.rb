class AddLikesCountToArticles < ActiveRecord::Migration[5.2]
  class MigrationUser < ApplicationRecord
    self.table_name = :articles
  end

  def up
    _up
  rescue => e
    _down
    raise e
  end

  def down
    _down
  end

  private

  def _up
    MigrationUser.reset_column_information

    add_column :articles, :likes_count, :integer, null: false, default: 0 unless column_exists? :articles, :likes_count
  end

  def _down
    MigrationUser.reset_column_information

    remove_column :articles, :likes_count if column_exists? :articles, :likes_count
  end
end
