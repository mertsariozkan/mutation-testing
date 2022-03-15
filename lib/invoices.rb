# frozen_string_literal: true

module Invoices
  class Calculator
    attr_reader :total_amount, :vat_rate

    def initialize(total_amount, vat_rate)
      @total_amount = total_amount
      @vat_rate = vat_rate
    end

    def calculate
      total_amount * vat_rate / 100
    end
  end
end
