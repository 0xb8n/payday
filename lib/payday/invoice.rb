module Payday
  # Basically just an invoice. Stick a ton of line items in it, add some details, and then render it out!
  class Invoice
    include Payday::Invoiceable

    attr_accessor :invoice_number, :bill_to, :ship_to, :notes, :line_items, :shipping_rate, :shipping_description,
      :tax_rate, :tax_description, :due_at, :paid_at, :refunded_at, :currency, :invoice_details, :invoice_date,
      :subtotal, :grandtotal, :discount_rate, :total_paid, :total_owed

    def initialize(options =  {})
      self.invoice_number = options[:invoice_number] || nil
      self.bill_to = options[:bill_to] || nil
      self.ship_to = options[:ship_to] || nil
      self.notes = options[:notes] || nil
      self.line_items = options[:line_items] || []
      self.shipping_rate = options[:shipping_rate] || nil
      self.shipping_description = options[:shipping_description] || nil
      self.tax_rate = options[:tax_rate] || nil
      self.tax_description = options[:tax_description] || nil
      self.due_at = options[:due_at] || nil
      self.paid_at = options[:paid_at] || nil
      self.refunded_at = options[:refunded_at] || nil
      self.currency = options[:currency] || nil
      self.invoice_details = options[:invoice_details] || []
      self.invoice_date = options[:invoice_date] || nil

      self.discount_rate = options[:discount_rate] || nil
      self.grandtotal = options[:grandtotal] || nil
      self.subtotal = options[:subtotal] || nil
      self.total_paid = options[:total_paid] || nil
      self.total_owed = options[:total_owed] || nil
    end

    # The tax rate that we're applying, as a BigDecimal
    def tax_rate=(value)
      @tax_rate = BigDecimal(value.nil? ? 0 : value.to_s)
    end

    # Shipping rate
    def shipping_rate=(value)
      @shipping_rate = BigDecimal(value.nil? ? 0 : value.to_s)
    end

    def discount_rate=(value)
      @discount_rate = BigDecimal(value.nil? ? 0 : value.to_s)
    end

    def subtotal=(value)
      @subtotal = BigDecimal(value.nil? ? 0 : value.to_s)
    end

    def grandtotal=(value)
      @grandtotal = BigDecimal(value.nil? ? 0 : value.to_s)
    end

    def total_paid=(value)
      @total_paid = BigDecimal(value.nil? ? 0 : value.to_s)
    end

    def total_owed=(value)
      @total_owed = BigDecimal(value.nil? ? 0 : value.to_s)
    end

  end
end
