##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Verify < Domain
      class V2 < Version
        class ServiceContext < InstanceContext
          class EntityContext < InstanceContext
            ##
            # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
            class AccessTokenList < ListResource
              ##
              # Initialize the AccessTokenList
              # @param [Version] version Version that contains the resource
              # @param [String] service_sid The unique SID identifier of the Service.
              # @param [String] identity Customer unique identity for the Entity of the Service.
              #   This could be anything the customer wants, an email, a phone number, a Twitter
              #   handle, a site username, etc.
              # @return [AccessTokenList] AccessTokenList
              def initialize(version, service_sid: nil, identity: nil)
                super(version)

                # Path Solution
                @solution = {service_sid: service_sid, identity: identity}
                @uri = "/Services/#{@solution[:service_sid]}/Entities/#{@solution[:identity]}/AccessTokens"
              end

              ##
              # Retrieve a single page of AccessTokenInstance records from the API.
              # Request is executed immediately.
              # @param [access_token.FactorTypes] factor_type The Type of this Factor. eg. push
              # @return [AccessTokenInstance] Newly created AccessTokenInstance
              def create(factor_type: nil)
                data = Twilio::Values.of({'FactorType' => factor_type, })

                payload = @version.create(
                    'POST',
                    @uri,
                    data: data
                )

                AccessTokenInstance.new(
                    @version,
                    payload,
                    service_sid: @solution[:service_sid],
                    identity: @solution[:identity],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '#<Twilio.Verify.V2.AccessTokenList>'
              end
            end

            ##
            # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
            class AccessTokenPage < Page
              ##
              # Initialize the AccessTokenPage
              # @param [Version] version Version that contains the resource
              # @param [Response] response Response from the API
              # @param [Hash] solution Path solution for the resource
              # @return [AccessTokenPage] AccessTokenPage
              def initialize(version, response, solution)
                super(version, response)

                # Path Solution
                @solution = solution
              end

              ##
              # Build an instance of AccessTokenInstance
              # @param [Hash] payload Payload response from the API
              # @return [AccessTokenInstance] AccessTokenInstance
              def get_instance(payload)
                AccessTokenInstance.new(
                    @version,
                    payload,
                    service_sid: @solution[:service_sid],
                    identity: @solution[:identity],
                )
              end

              ##
              # Provide a user friendly representation
              def to_s
                '<Twilio.Verify.V2.AccessTokenPage>'
              end
            end

            ##
            # PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
            class AccessTokenInstance < InstanceResource
              ##
              # Initialize the AccessTokenInstance
              # @param [Version] version Version that contains the resource
              # @param [Hash] payload payload that contains response from Twilio
              # @param [String] service_sid The unique SID identifier of the Service.
              # @param [String] identity Customer unique identity for the Entity of the Service.
              #   This could be anything the customer wants, an email, a phone number, a Twitter
              #   handle, a site username, etc.
              # @return [AccessTokenInstance] AccessTokenInstance
              def initialize(version, payload, service_sid: nil, identity: nil)
                super(version)

                # Marshaled Properties
                @properties = {'token' => payload['token'], }
              end

              ##
              # @return [String] Generated access token.
              def token
                @properties['token']
              end

              ##
              # Provide a user friendly representation
              def to_s
                "<Twilio.Verify.V2.AccessTokenInstance>"
              end

              ##
              # Provide a detailed, user friendly representation
              def inspect
                "<Twilio.Verify.V2.AccessTokenInstance>"
              end
            end
          end
        end
      end
    end
  end
end