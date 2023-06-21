##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Message' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .messages.create(to: '+15558675310')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'To' => '+15558675310', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Messages.json',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "body": "Hello! \ud83d\udc4d",
          "date_created": "Thu, 30 Jul 2015 20:12:31 +0000",
          "date_sent": "Thu, 30 Jul 2015 20:12:33 +0000",
          "date_updated": "Thu, 30 Jul 2015 20:12:33 +0000",
          "direction": "outbound-api",
          "error_code": null,
          "error_message": null,
          "from": "+14155552345",
          "messaging_service_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "num_media": "0",
          "num_segments": "1",
          "price": null,
          "price_unit": null,
          "sid": "SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "sent",
          "subresource_uris": {
              "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Media.json"
          },
          "tags": {
              "campaign_name": "Spring Sale 2022",
              "message_type": "cart_abandoned"
          },
          "to": "+14155552345",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.create(to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_wo_service responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "body": "Hello! \ud83d\udc4d",
          "date_created": "Thu, 30 Jul 2015 20:12:31 +0000",
          "date_sent": "Thu, 30 Jul 2015 20:12:33 +0000",
          "date_updated": "Thu, 30 Jul 2015 20:12:33 +0000",
          "direction": "outbound-api",
          "error_code": null,
          "error_message": null,
          "from": "+14155552345",
          "messaging_service_sid": null,
          "num_media": "0",
          "num_segments": "1",
          "price": null,
          "price_unit": null,
          "sid": "SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "sent",
          "subresource_uris": {
              "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Media.json"
          },
          "tags": {},
          "to": "+14155552345",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.create(to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_messaging_service responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "body": "Hello! \ud83d\udc4d",
          "date_created": "Thu, 30 Jul 2015 20:12:31 +0000",
          "date_sent": "Thu, 30 Jul 2015 20:12:33 +0000",
          "date_updated": "Thu, 30 Jul 2015 20:12:33 +0000",
          "direction": "outbound-api",
          "error_code": null,
          "error_message": null,
          "from": null,
          "messaging_service_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "num_media": "0",
          "num_segments": "1",
          "price": null,
          "price_unit": null,
          "sid": "SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "sent",
          "subresource_uris": {
              "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Media.json"
          },
          "tags": {},
          "to": "+14155552345",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.create(to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_with_queued_status responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "body": "Hello! \ud83d\udc4d",
          "date_created": "Thu, 30 Jul 2015 20:12:31 +0000",
          "date_sent": "Thu, 30 Jul 2015 20:12:33 +0000",
          "date_updated": "Thu, 30 Jul 2015 20:12:33 +0000",
          "direction": "outbound-api",
          "error_code": null,
          "error_message": null,
          "from": "+14155552345",
          "messaging_service_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "num_media": "0",
          "num_segments": "1",
          "price": null,
          "price_unit": null,
          "sid": "SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "queued",
          "subresource_uris": {
              "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Media.json"
          },
          "tags": {},
          "to": "+14155552345",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.create(to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_scheduled_message_sms responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "body": "Hello! \ud83d\udc4d",
          "date_created": "Mon, 29 Nov 2021 22:40:10 +0000",
          "date_sent": null,
          "date_updated": "Mon, 29 Nov 2021 22:40:10 +0000",
          "direction": "outbound-api",
          "error_code": null,
          "error_message": null,
          "from": null,
          "messaging_service_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "num_media": "0",
          "num_segments": "0",
          "price": null,
          "price_unit": null,
          "sid": "SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "scheduled",
          "subresource_uris": {
              "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Media.json"
          },
          "tags": {},
          "to": "+15558675310",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.create(to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_scheduled_message_mms responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "body": "Hello! \ud83d\udc4d",
          "date_created": "Mon, 29 Nov 2021 22:40:10 +0000",
          "date_sent": null,
          "date_updated": "Mon, 29 Nov 2021 22:40:10 +0000",
          "direction": "outbound-api",
          "error_code": null,
          "error_message": null,
          "from": null,
          "messaging_service_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "num_media": "1",
          "num_segments": "1",
          "price": null,
          "price_unit": null,
          "sid": "MMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "scheduled",
          "subresource_uris": {
              "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/MMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Media.json"
          },
          "tags": {},
          "to": "+15558675310",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/MMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.create(to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "receives create_scheduled_message_whatsapp responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "body": "Hello! \ud83d\udc4d",
          "date_created": "Mon, 29 Nov 2021 22:40:10 +0000",
          "date_sent": null,
          "date_updated": "Mon, 29 Nov 2021 22:40:10 +0000",
          "direction": "outbound-api",
          "error_code": null,
          "error_message": null,
          "from": null,
          "messaging_service_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "num_media": "0",
          "num_segments": "0",
          "price": null,
          "price_unit": null,
          "sid": "SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "scheduled",
          "subresource_uris": {
              "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Media.json"
          },
          "tags": {},
          "to": "whatsapp:+15558675310",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.create(to: '+15558675310')

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .messages('MMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Messages/MMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages('MMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .messages('MMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Messages/MMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "body": "testing",
          "date_created": "Fri, 24 May 2019 17:18:27 +0000",
          "date_sent": "Fri, 24 May 2019 17:18:28 +0000",
          "date_updated": "Fri, 24 May 2019 17:18:28 +0000",
          "direction": "outbound-api",
          "error_code": 30007,
          "error_message": "Carrier violation",
          "from": "+12019235161",
          "messaging_service_sid": "MGdeadbeefdeadbeefdeadbeefdeadbeef",
          "num_media": "0",
          "num_segments": "1",
          "price": "-0.00750",
          "price_unit": "USD",
          "sid": "SMb7c0a2ce80504485a6f653a7110836f5",
          "status": "sent",
          "subresource_uris": {
              "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMb7c0a2ce80504485a6f653a7110836f5/Media.json",
              "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMb7c0a2ce80504485a6f653a7110836f5/Feedback.json"
          },
          "tags": {
              "campaign_name": "Spring Sale 2022",
              "message_type": "cart_abandoned"
          },
          "to": "+18182008801",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMb7c0a2ce80504485a6f653a7110836f5.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages('MMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .messages.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Messages.json',
    ))).to eq(true)
  end

  it "receives read_full_page1 responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 1,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3E=2008-01-02&PageSize=2&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 2,
          "previous_page_uri": null,
          "messages": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "api_version": "2010-04-01",
                  "body": "testing",
                  "date_created": "Fri, 24 May 2019 17:44:46 +0000",
                  "date_sent": "Fri, 24 May 2019 17:44:50 +0000",
                  "date_updated": "Fri, 24 May 2019 17:44:50 +0000",
                  "direction": "outbound-api",
                  "error_code": null,
                  "error_message": null,
                  "from": "+12019235161",
                  "messaging_service_sid": null,
                  "num_media": "0",
                  "num_segments": "1",
                  "price": "-0.00750",
                  "price_unit": "USD",
                  "sid": "SMded05904ccb347238880ca9264e8fe1c",
                  "status": "sent",
                  "subresource_uris": {
                      "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMded05904ccb347238880ca9264e8fe1c/Media.json",
                      "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMded05904ccb347238880ca9264e8fe1c/Feedback.json"
                  },
                  "tags": {
                      "campaign_name": "Spring Sale 2022",
                      "message_type": "cart_abandoned"
                  },
                  "to": "+18182008801",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMded05904ccb347238880ca9264e8fe1c.json"
              },
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "api_version": "2010-04-01",
                  "body": "look mom I have media!",
                  "date_created": "Fri, 24 May 2019 17:44:46 +0000",
                  "date_sent": "Fri, 24 May 2019 17:44:49 +0000",
                  "date_updated": "Fri, 24 May 2019 17:44:49 +0000",
                  "direction": "inbound",
                  "error_code": 30004,
                  "error_message": "Message blocked",
                  "from": "+12019235161",
                  "messaging_service_sid": null,
                  "num_media": "3",
                  "num_segments": "1",
                  "price": "-0.00750",
                  "price_unit": "USD",
                  "sid": "MMc26223853f8c46b4ab7dfaa6abba0a26",
                  "status": "received",
                  "subresource_uris": {
                      "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/MMc26223853f8c46b4ab7dfaa6abba0a26/Media.json",
                      "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/MMc26223853f8c46b4ab7dfaa6abba0a26/Feedback.json"
                  },
                  "tags": {
                      "campaign_name": "Spring Sale 2022",
                      "message_type": "cart_abandoned"
                  },
                  "to": "+18182008801",
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/MMc26223853f8c46b4ab7dfaa6abba0a26.json"
              }
          ],
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3E=2008-01-02&PageSize=2&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty_sentdate_less responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3C=2008-01-02&PageSize=25&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 25,
          "previous_page_uri": null,
          "messages": [],
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3C=2008-01-02&PageSize=25&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty_sentdate_equals responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent=2008-01-02&PageSize=25&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 25,
          "previous_page_uri": null,
          "messages": [],
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent=2008-01-02&PageSize=25&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty_sentdate_greater responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3E=2008-01-02&PageSize=25&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 25,
          "previous_page_uri": null,
          "messages": [],
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3E=2008-01-02&PageSize=25&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty_sentdate_greater_format1 responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3E=06%2F11%2F2019+22%3A05%3A25+MST&PageSize=25&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 25,
          "previous_page_uri": null,
          "messages": [],
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3E=06%2F11%2F2019+22%3A05%3A25+MST&PageSize=25&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty_sentdate_greater_format2 responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3E=2019-06-11+22%3A05%3A25.000&PageSize=25&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 25,
          "previous_page_uri": null,
          "messages": [],
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3E=2019-06-11+22%3A05%3A25.000&PageSize=25&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty_sentdate_greater_format3 responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3E=Wed%2C+19+Jun+2019+22%3A04%3A00+-0000&PageSize=25&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 25,
          "previous_page_uri": null,
          "messages": [],
          "start": 0,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages.json?To=%2B123456789&From=%2B987654321&DateSent%3E=Wed%2C+19+Jun+2019+22%3A04%3A00+-0000&PageSize=25&Page=0"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages.list()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .messages('MMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Messages/MMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives redact_body responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "body": "",
          "date_created": "Fri, 24 May 2019 17:18:27 +0000",
          "date_sent": "Fri, 24 May 2019 17:18:28 +0000",
          "date_updated": "Fri, 24 May 2019 17:18:28 +0000",
          "direction": "outbound-api",
          "error_code": null,
          "error_message": null,
          "from": "+12019235161",
          "messaging_service_sid": "MGdeadbeefdeadbeefdeadbeefdeadbeef",
          "num_media": "0",
          "num_segments": "1",
          "price": null,
          "price_unit": "USD",
          "sid": "SMb7c0a2ce80504485a6f653a7110836f5",
          "status": "sent",
          "subresource_uris": {
              "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMb7c0a2ce80504485a6f653a7110836f5/Media.json",
              "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMb7c0a2ce80504485a6f653a7110836f5/Feedback.json"
          },
          "tags": {},
          "to": "+18182008801",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMb7c0a2ce80504485a6f653a7110836f5.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages('MMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  it "receives cancel_message responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "body": "Hello World!",
          "date_created": "Fri, 24 May 2019 17:18:27 +0000",
          "date_sent": null,
          "date_updated": "Fri, 24 May 2019 18:18:28 +0000",
          "direction": "outbound-api",
          "error_code": null,
          "error_message": null,
          "from": null,
          "messaging_service_sid": "MGdeadbeefdeadbeefdeadbeefdeadbeef",
          "num_media": "0",
          "num_segments": "1",
          "price": null,
          "price_unit": "USD",
          "sid": "SMb7c0a2ce80504485a6f653a7110836f5",
          "status": "canceled",
          "subresource_uris": {
              "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMb7c0a2ce80504485a6f653a7110836f5/Media.json",
              "feedback": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMb7c0a2ce80504485a6f653a7110836f5/Feedback.json"
          },
          "tags": {},
          "to": "+18182008801",
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMb7c0a2ce80504485a6f653a7110836f5.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .messages('MMXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end

  context "when the rails environment is production" do
    before do
      allow(ENV).to receive(:fetch).with("RAILS_ENV", "production").and_return("production")
    end

    context "when the number is not whitelisted" do
      before do
        allow(ENV).to receive(:fetch).with("WHITELISTED_NUMBERS", "").and_return("")
      end

      it "sends the message" do
        @holodeck.mock(Twilio::Response.new(
            201,
          %q[
          {
              "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "api_version": "2010-04-01",
              "body": "Hello! \ud83d\udc4d",
              "date_created": "Thu, 30 Jul 2015 20:12:31 +0000",
              "date_sent": "Thu, 30 Jul 2015 20:12:33 +0000",
              "date_updated": "Thu, 30 Jul 2015 20:12:33 +0000",
              "direction": "outbound-api",
              "error_code": null,
              "error_message": null,
              "from": "+14155552345",
              "messaging_service_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "num_media": "0",
              "num_segments": "1",
              "price": null,
              "price_unit": null,
              "sid": "SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "status": "sent",
              "subresource_uris": {
                  "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Media.json"
              },
              "tags": {
                  "campaign_name": "Spring Sale 2022",
                  "message_type": "cart_abandoned"
              },
              "to": "+14155552345",
              "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
          }
          ]
        ))

        actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .messages.create(to: '+15558675310')

        expect(actual.body).to eq('Hello! 👍')
      end
    end
  end

  context "when the rails environment is not production" do
    before do
      allow(Twilio).to receive(:whitelisted_environments).and_return(["staging"])
      allow(Twilio).to receive(:environment).and_return("staging")
    end

    context "when sending a message to non whitelisted number" do
      before do
        allow(Twilio).to receive(:whitelisted_numbers).and_return(nil)
      end

      it "returns a fake response" do
        actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .messages.create(to: '+15558675310')

        expect(actual.body).to eq(nil)
      end
    end

    context "when sending a message to a whitelisted number" do
      before do
        allow(Twilio).to receive(:whitelisted_numbers).and_return(['+15558675310'])
      end

      it "sends the message" do
        @holodeck.mock(Twilio::Response.new(
            201,
          %q[
          {
              "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "api_version": "2010-04-01",
              "body": "Hello! \ud83d\udc4d",
              "date_created": "Thu, 30 Jul 2015 20:12:31 +0000",
              "date_sent": "Thu, 30 Jul 2015 20:12:33 +0000",
              "date_updated": "Thu, 30 Jul 2015 20:12:33 +0000",
              "direction": "outbound-api",
              "error_code": null,
              "error_message": null,
              "from": "+14155552345",
              "messaging_service_sid": "MGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "num_media": "0",
              "num_segments": "1",
              "price": null,
              "price_unit": null,
              "sid": "SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
              "status": "sent",
              "subresource_uris": {
                  "media": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Media.json"
              },
              "tags": {
                  "campaign_name": "Spring Sale 2022",
                  "message_type": "cart_abandoned"
              },
              "to": "+14155552345",
              "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Messages/SMaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json"
          }
          ]
        ))

        actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                                  .messages.create(to: '+15558675310')

        expect(actual.body).to eq('Hello! 👍')
      end
    end
  end
end
