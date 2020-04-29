##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'FunctionVersion' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .functions('ZHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .function_versions.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Functions/ZHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Versions',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "function_versions": [],
          "meta": {
              "first_page_url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Functions/ZH00000000000000000000000000000000/Versions?PageSize=50&Page=0",
              "key": "function_versions",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Functions/ZH00000000000000000000000000000000/Versions?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .functions('ZHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .function_versions.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .functions('ZHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                           .function_versions('ZNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Functions/ZHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Versions/ZNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "ZN00000000000000000000000000000000",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ZS00000000000000000000000000000000",
          "function_sid": "ZH00000000000000000000000000000000",
          "path": "/test-path",
          "visibility": "public",
          "date_created": "2018-11-10T20:00:00Z",
          "url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Functions/ZH00000000000000000000000000000000/Versions/ZN00000000000000000000000000000000",
          "links": {
              "function_version_content": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Functions/ZH00000000000000000000000000000000/Versions/ZN00000000000000000000000000000000/Content"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .functions('ZHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .function_versions('ZNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end
end