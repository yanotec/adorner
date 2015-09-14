require 'spec_helper'

RSpec.describe Adorner::Base, :type => :decorator do
  let(:resource) { { :a => 1 } }

    subject { described_class.new resource }

  describe "#resource_class" do
    it "call the resource`s class method" do
      expect(resource).to receive(:class).and_return(Hash)
      subject.resource_class
    end

    it "maintains cache value after being called once" do
      expect(resource).to receive(:class).once.and_return(Hash)
      subject.resource_class
      subject.resource_class
    end
  end

  describe "#resource_name" do
    it "returns the name of resource in parameter format" do
      expect(subject.resource_name).to eql "hash"
    end

    context "when resource_class has namespace" do
      before { allow(subject).to receive(:resource_class).and_return( RSpec::Core ) }

      it "returns the name of resource in parameter format without namespace" do
        expect(subject.resource_name).to eql "core"
      end
    end
  end

  xdescribe "#attributes_to_display" do
    it "returns the all attributes of resource" do
      expect(subject.attributes_to_display).to eql [
        :id, :name, :phone, :type, :profile, :email,
        :encrypted_password, :reset_password_token,
        :reset_password_sent_at, :remember_created_at,
        :sign_in_count, :current_sign_in_at,
        :last_sign_in_at, :current_sign_in_ip,
        :last_sign_in_ip, :confirmation_token,
        :confirmed_at, :confirmation_sent_at,
        :unconfirmed_email, :failed_attempts,
        :unlock_token, :locked_at, :created_at,
        :updated_at, :prefecture_id
      ]
    end
  end

  describe "#resource" do
    it "returns the model's instance" do
      expect(subject.resource).to eql resource
    end
  end
end
