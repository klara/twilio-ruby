##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Environment' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .environments.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Environments',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "environments": [],
          "meta": {
              "first_page_url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments?PageSize=50&Page=0",
              "key": "environments",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .environments.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .environments('ZEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Environments/ZEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "ZE00000000000000000000000000000000",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ZS00000000000000000000000000000000",
          "build_sid": "ZB00000000000000000000000000000000",
          "unique_name": "testing-environment",
          "domain_suffix": "testing",
          "domain_name": "foobar-1234-testing.twil.io",
          "custom_domain_name": null,
          "date_created": "2018-11-10T20:00:00Z",
          "date_updated": "2018-11-10T20:00:00Z",
          "url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments/ZE00000000000000000000000000000000",
          "links": {
              "variables": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments/ZE00000000000000000000000000000000/Variables",
              "deployments": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments/ZE00000000000000000000000000000000/Deployments",
              "logs": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments/ZE00000000000000000000000000000000/Logs"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .environments('ZEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .environments.create(unique_name: 'unique_name')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'UniqueName' => 'unique_name', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Environments',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "ZE00000000000000000000000000000000",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ZS00000000000000000000000000000000",
          "build_sid": null,
          "unique_name": "staging",
          "domain_suffix": "stage",
          "domain_name": "foobar-1234-stage.twil.io",
          "custom_domain_name": null,
          "date_created": "2018-11-10T20:00:00Z",
          "date_updated": "2018-11-10T20:00:00Z",
          "url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments/ZE00000000000000000000000000000000",
          "links": {
              "variables": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments/ZE00000000000000000000000000000000/Variables",
              "deployments": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments/ZE00000000000000000000000000000000/Deployments",
              "logs": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments/ZE00000000000000000000000000000000/Logs"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .environments.create(unique_name: 'unique_name')

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .environments('ZEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Environments/ZEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .environments('ZEXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end
end