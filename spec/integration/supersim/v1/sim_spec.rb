##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Sim' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.supersim.v1.sims('HSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://supersim.twilio.com/v1/Sims/HSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "My SIM",
          "status": "new",
          "fleet_sid": null,
          "iccid": "iccid",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://supersim.twilio.com/v1/Sims/HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.supersim.v1.sims('HSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.supersim.v1.sims('HSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://supersim.twilio.com/v1/Sims/HSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update_unique_name responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "MySIM",
          "status": "new",
          "fleet_sid": null,
          "iccid": "iccid",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://supersim.twilio.com/v1/Sims/HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.supersim.v1.sims('HSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "receives update_status responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": null,
          "status": "scheduled",
          "fleet_sid": null,
          "iccid": "iccid",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://supersim.twilio.com/v1/Sims/HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.supersim.v1.sims('HSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "receives update_fleet_with_sid responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": null,
          "status": "new",
          "fleet_sid": "HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "iccid": "iccid",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://supersim.twilio.com/v1/Sims/HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.supersim.v1.sims('HSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "receives update_fleet_with_unique_name responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": null,
          "status": "new",
          "fleet_sid": "HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "iccid": "iccid",
          "date_created": "2015-07-30T20:00:00Z",
          "date_updated": "2015-07-30T20:00:00Z",
          "url": "https://supersim.twilio.com/v1/Sims/HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.supersim.v1.sims('HSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.supersim.v1.sims.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://supersim.twilio.com/v1/Sims',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sims": [],
          "meta": {
              "first_page_url": "https://supersim.twilio.com/v1/Sims?Status=new&Fleet=HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0",
              "key": "sims",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://supersim.twilio.com/v1/Sims?Status=new&Fleet=HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.supersim.v1.sims.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full_by_fleet_sid responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://supersim.twilio.com/v1/Sims?Status=new&Fleet=HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0",
              "key": "sims",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://supersim.twilio.com/v1/Sims?Status=new&Fleet=HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0"
          },
          "sims": [
              {
                  "sid": "HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "unique_name": "My SIM",
                  "status": "new",
                  "fleet_sid": "HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "iccid": "iccid",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "url": "https://supersim.twilio.com/v1/Sims/HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))

    actual = @client.supersim.v1.sims.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full_by_fleet_name responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://supersim.twilio.com/v1/Sims?Status=new&Fleet=MyFleet&PageSize=50&Page=0",
              "key": "sims",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://supersim.twilio.com/v1/Sims?Status=new&Fleet=MyFleet&PageSize=50&Page=0"
          },
          "sims": [
              {
                  "sid": "HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "unique_name": "My SIM",
                  "status": "new",
                  "fleet_sid": "HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "iccid": "iccid",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "url": "https://supersim.twilio.com/v1/Sims/HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))

    actual = @client.supersim.v1.sims.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_by_iccid responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://supersim.twilio.com/v1/Sims?Iccid=11111111111111111111&PageSize=50&Page=0",
              "key": "sims",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://supersim.twilio.com/v1/Sims?Iccid=11111111111111111111&PageSize=50&Page=0"
          },
          "sims": [
              {
                  "sid": "HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "unique_name": "My SIM",
                  "status": "new",
                  "fleet_sid": null,
                  "iccid": "11111111111111111111",
                  "date_created": "2015-07-30T20:00:00Z",
                  "date_updated": "2015-07-30T20:00:00Z",
                  "url": "https://supersim.twilio.com/v1/Sims/HSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))

    actual = @client.supersim.v1.sims.list()

    expect(actual).to_not eq(nil)
  end
end