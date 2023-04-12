##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Interaction' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.interaction('KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://flex-api.twilio.com/v1/Interactions/KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "channel": {
              "type": "sms",
              "sid": "UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          },
          "routing": {
              "properties": {
                  "workflow_sid": "WWxx",
                  "attributes": "WWxx",
                  "task_channel_unique_name": "sms",
                  "routing_target": "WKXX",
                  "queue_name": "WQXX"
              }
          },
          "url": "https://flex-api.twilio.com/v1/Interactions/KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "channels": "https://flex-api.twilio.com/v1/Interactions/KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels"
          }
      }
      ]
    ))

    actual = @client.flex_api.v1.interaction('KDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.interaction.create(channel: {}, routing: {})
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Channel' => Twilio.serialize_object({}), 'Routing' => Twilio.serialize_object({}), }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Interactions',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "channel": {
              "type": "sms",
              "sid": "UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
          },
          "routing": {
              "reservation": null,
              "properties": {
                  "date_updated": 1634845217,
                  "task_queue_entered_date": 1634845217,
                  "workflow_name": "Default Fifo Workflow",
                  "age_in_queue": 0,
                  "task_channel_unique_name": "default",
                  "assignment_status": "pending",
                  "queue_name": "Sample Queue",
                  "assignmentCounter": 0,
                  "priority": 0,
                  "sid": "WTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "workflow_sid": "WWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "routing_target": "WKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "reason": "",
                  "attributes": "{\\"customerAddress\\":\\"customer phone address\\",\\"flexChannelInviteSid\\":\\"KGaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\",\\"conversationSid\\":\\"CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\",\\"channelType\\":\\"sms\\",\\"customers\\":{\\"phone\\":\\"customer phone address\\",\\"name\\":\\"customer name\\"},\\"conversations\\":{\\"initiated_by\\":\\"customer\\",\\"conversation_id\\":\\"KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\",\\"media\\":[{\\"type\\":\\"ChatTranscript\\",\\"sid\\":\\"CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\"}]},\\"customerName\\":\\"customer name\\",\\"flexInteractionChannelSid\\":\\"UOaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\",\\"initiatedBy\\":\\"customer\\",\\"flexInteractionSid\\":\\"KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\\",\\"direction\\":\\"inbound\\"}",
                  "task_channel_sid": "TCaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "age": 0,
                  "workspace_sid": "WSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "timeout": 86400,
                  "date_created": 1634845217,
                  "addons": "{}",
                  "queue_sid": "WQaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          },
          "url": "https://flex-api.twilio.com/v1/Interactions/KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "channels": "https://flex-api.twilio.com/v1/Interactions/KDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels"
          }
      }
      ]
    ))

    actual = @client.flex_api.v1.interaction.create(channel: {}, routing: {})

    expect(actual).to_not eq(nil)
  end
end