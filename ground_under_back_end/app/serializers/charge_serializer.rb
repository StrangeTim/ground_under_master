class ChargeSerializer < ActiveModel::Serializer
  attributes :id, :amount, :token
end
