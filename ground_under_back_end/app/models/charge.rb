class Charge < ActiveRecord::Base
  before_save :create_charge

  def create_charge
    amount = self.amount
    Stripe.api_key = ENV['SECRET_KEY']

    # Get the credit card details submitted by the form
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => amount *= 100, # amount in cents, again
        :currency => "usd",
        :source => token,
        :description => "Example charge"
      )
    rescue Stripe::CardError => e
      # The card has been declined
    end
  end
end
