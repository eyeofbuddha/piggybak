module Piggybak
  class Notifier < ActionMailer::Base
    default :from => Piggybak.config.email_sender,
            :bcc => Piggybak.config.order_cc

    def order_notification(order)
      @order = order

      mail(:to => order.email,
           :subject => "Order ##{@order.id}")
    end
  end
end
