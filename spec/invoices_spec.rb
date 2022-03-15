# frozen_string_literal: true
require 'simplecov'

SimpleCov.start
require 'rspec'
require_relative '../lib/invoices'

RSpec.describe Invoices::Calculator do
  subject { Invoices::Calculator.new(total_amount, vat_rate) }

  context 'success' do
    let(:total_amount) { 100 }
    let(:vat_rate) { 1 }

    it 'calculates net amount' do
      expect(subject.calculate).to eq(1)
    end
  end
end
