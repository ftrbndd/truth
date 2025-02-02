# frozen_string_literal: true

class REST::Admin::ReportSerializer < ActiveModel::Serializer
  attributes :id, :action_taken, :comment, :created_at, :updated_at

  has_one :account, serializer: REST::Admin::AccountSerializer
  has_one :target_account, serializer: REST::Admin::AccountSerializer
  has_one :assigned_account, serializer: REST::Admin::AccountSerializer
  has_one :action_taken_by_account, serializer: REST::Admin::AccountSerializer

  has_many :statuses, serializer: REST::Admin::StatusSerializer
  has_many :rules, serializer: REST::RuleSerializer

  def id
    object.id.to_s
  end
end
