##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Messaging < Domain
      class V1 < Version
        class ServiceContext < InstanceContext
          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class UsAppToPersonList < ListResource
            ##
            # Initialize the UsAppToPersonList
            # @param [Version] version Version that contains the resource
            # @param [String] messaging_service_sid The SID of the {Messaging
            #   Service}[https://www.twilio.com/docs/messaging/services/api] that the resource
            #   is associated with.
            # @return [UsAppToPersonList] UsAppToPersonList
            def initialize(version, messaging_service_sid: nil)
              super(version)

              # Path Solution
              @solution = {messaging_service_sid: messaging_service_sid}
              @uri = "/Services/#{@solution[:messaging_service_sid]}/Compliance/Usa2p"
            end

            ##
            # Create the UsAppToPersonInstance
            # @param [String] brand_registration_sid A2P Brand Registration SID
            # @param [String] description A short description of what this SMS campaign does.
            # @param [Array[String]] message_samples Message samples, up to 5 sample messages,
            #   <=1024 chars each.
            # @param [String] us_app_to_person_usecase A2P Campaign Use Case. Examples: [ 2FA,
            #   EMERGENCY, MARKETING..]
            # @param [Boolean] has_embedded_links Indicates that this SMS campaign will send
            #   messages that contain links.
            # @param [Boolean] has_embedded_phone Indicates that this SMS campaign will send
            #   messages that contain phone numbers.
            # @return [UsAppToPersonInstance] Created UsAppToPersonInstance
            def create(brand_registration_sid: nil, description: nil, message_samples: nil, us_app_to_person_usecase: nil, has_embedded_links: nil, has_embedded_phone: nil)
              data = Twilio::Values.of({
                  'BrandRegistrationSid' => brand_registration_sid,
                  'Description' => description,
                  'MessageSamples' => Twilio.serialize_list(message_samples) { |e| e },
                  'UsAppToPersonUsecase' => us_app_to_person_usecase,
                  'HasEmbeddedLinks' => has_embedded_links,
                  'HasEmbeddedPhone' => has_embedded_phone,
              })

              payload = @version.create('POST', @uri, data: data)

              UsAppToPersonInstance.new(
                  @version,
                  payload,
                  messaging_service_sid: @solution[:messaging_service_sid],
              )
            end

            ##
            # Lists UsAppToPersonInstance records from the API as a list.
            # Unlike stream(), this operation is eager and will load `limit` records into
            # memory before returning.
            # @param [Integer] limit Upper limit for the number of records to return. stream()
            #    guarantees to never return more than limit.  Default is no limit
            # @param [Integer] page_size Number of records to fetch per request, when
            #    not set will use the default value of 50 records.  If no page_size is defined
            #    but a limit is defined, stream() will attempt to read the limit with the most
            #    efficient page size, i.e. min(limit, 1000)
            # @return [Array] Array of up to limit results
            def list(limit: nil, page_size: nil)
              self.stream(limit: limit, page_size: page_size).entries
            end

            ##
            # Streams UsAppToPersonInstance records from the API as an Enumerable.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            # @param [Integer] limit Upper limit for the number of records to return. stream()
            #    guarantees to never return more than limit. Default is no limit.
            # @param [Integer] page_size Number of records to fetch per request, when
            #    not set will use the default value of 50 records. If no page_size is defined
            #    but a limit is defined, stream() will attempt to read the limit with the most
            #    efficient page size, i.e. min(limit, 1000)
            # @return [Enumerable] Enumerable that will yield up to limit results
            def stream(limit: nil, page_size: nil)
              limits = @version.read_limits(limit, page_size)

              page = self.page(page_size: limits[:page_size], )

              @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
            end

            ##
            # When passed a block, yields UsAppToPersonInstance records from the API.
            # This operation lazily loads records as efficiently as possible until the limit
            # is reached.
            def each
              limits = @version.read_limits

              page = self.page(page_size: limits[:page_size], )

              @version.stream(page,
                              limit: limits[:limit],
                              page_limit: limits[:page_limit]).each {|x| yield x}
            end

            ##
            # Retrieve a single page of UsAppToPersonInstance records from the API.
            # Request is executed immediately.
            # @param [String] page_token PageToken provided by the API
            # @param [Integer] page_number Page Number, this value is simply for client state
            # @param [Integer] page_size Number of records to return, defaults to 50
            # @return [Page] Page of UsAppToPersonInstance
            def page(page_token: :unset, page_number: :unset, page_size: :unset)
              params = Twilio::Values.of({
                  'PageToken' => page_token,
                  'Page' => page_number,
                  'PageSize' => page_size,
              })

              response = @version.page('GET', @uri, params: params)

              UsAppToPersonPage.new(@version, response, @solution)
            end

            ##
            # Retrieve a single page of UsAppToPersonInstance records from the API.
            # Request is executed immediately.
            # @param [String] target_url API-generated URL for the requested results page
            # @return [Page] Page of UsAppToPersonInstance
            def get_page(target_url)
              response = @version.domain.request(
                  'GET',
                  target_url
              )
              UsAppToPersonPage.new(@version, response, @solution)
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Messaging.V1.UsAppToPersonList>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class UsAppToPersonPage < Page
            ##
            # Initialize the UsAppToPersonPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @return [UsAppToPersonPage] UsAppToPersonPage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of UsAppToPersonInstance
            # @param [Hash] payload Payload response from the API
            # @return [UsAppToPersonInstance] UsAppToPersonInstance
            def get_instance(payload)
              UsAppToPersonInstance.new(
                  @version,
                  payload,
                  messaging_service_sid: @solution[:messaging_service_sid],
              )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Messaging.V1.UsAppToPersonPage>'
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class UsAppToPersonContext < InstanceContext
            ##
            # Initialize the UsAppToPersonContext
            # @param [Version] version Version that contains the resource
            # @param [String] messaging_service_sid The SID of the {Messaging
            #   Service}[https://www.twilio.com/docs/messaging/services/api] to fetch the
            #   resource from.
            # @param [String] sid The SID of the US A2P Compliance resource to fetch
            #   `QE2c6890da8086d771620e9b13fadeba0b`.
            # @return [UsAppToPersonContext] UsAppToPersonContext
            def initialize(version, messaging_service_sid, sid)
              super(version)

              # Path Solution
              @solution = {messaging_service_sid: messaging_service_sid, sid: sid, }
              @uri = "/Services/#{@solution[:messaging_service_sid]}/Compliance/Usa2p/#{@solution[:sid]}"
            end

            ##
            # Delete the UsAppToPersonInstance
            # @return [Boolean] true if delete succeeds, false otherwise
            def delete
               @version.delete('DELETE', @uri)
            end

            ##
            # Fetch the UsAppToPersonInstance
            # @return [UsAppToPersonInstance] Fetched UsAppToPersonInstance
            def fetch
              payload = @version.fetch('GET', @uri)

              UsAppToPersonInstance.new(
                  @version,
                  payload,
                  messaging_service_sid: @solution[:messaging_service_sid],
                  sid: @solution[:sid],
              )
            end

            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Messaging.V1.UsAppToPersonContext #{context}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Messaging.V1.UsAppToPersonContext #{context}>"
            end
          end

          ##
          # PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
          class UsAppToPersonInstance < InstanceResource
            ##
            # Initialize the UsAppToPersonInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] messaging_service_sid The SID of the {Messaging
            #   Service}[https://www.twilio.com/docs/messaging/services/api] that the resource
            #   is associated with.
            # @param [String] sid The SID of the US A2P Compliance resource to fetch
            #   `QE2c6890da8086d771620e9b13fadeba0b`.
            # @return [UsAppToPersonInstance] UsAppToPersonInstance
            def initialize(version, payload, messaging_service_sid: nil, sid: nil)
              super(version)

              # Marshaled Properties
              @properties = {
                  'sid' => payload['sid'],
                  'account_sid' => payload['account_sid'],
                  'brand_registration_sid' => payload['brand_registration_sid'],
                  'messaging_service_sid' => payload['messaging_service_sid'],
                  'description' => payload['description'],
                  'message_samples' => payload['message_samples'],
                  'us_app_to_person_usecase' => payload['us_app_to_person_usecase'],
                  'has_embedded_links' => payload['has_embedded_links'],
                  'has_embedded_phone' => payload['has_embedded_phone'],
                  'campaign_status' => payload['campaign_status'],
                  'campaign_id' => payload['campaign_id'],
                  'is_externally_registered' => payload['is_externally_registered'],
                  'rate_limits' => payload['rate_limits'],
                  'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                  'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                  'url' => payload['url'],
              }

              # Context
              @instance_context = nil
              @params = {'messaging_service_sid' => messaging_service_sid, 'sid' => sid || @properties['sid'], }
            end

            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @return [UsAppToPersonContext] UsAppToPersonContext for this UsAppToPersonInstance
            def context
              unless @instance_context
                @instance_context = UsAppToPersonContext.new(
                    @version,
                    @params['messaging_service_sid'],
                    @params['sid'],
                )
              end
              @instance_context
            end

            ##
            # @return [String] The unique string that identifies a US A2P Compliance resource
            def sid
              @properties['sid']
            end

            ##
            # @return [String] The SID of the Account that created the resource
            def account_sid
              @properties['account_sid']
            end

            ##
            # @return [String] A2P Brand Registration SID
            def brand_registration_sid
              @properties['brand_registration_sid']
            end

            ##
            # @return [String] The SID of the Messaging Service the resource is associated with
            def messaging_service_sid
              @properties['messaging_service_sid']
            end

            ##
            # @return [String] A short description of what this SMS campaign does
            def description
              @properties['description']
            end

            ##
            # @return [Array[String]] Message samples
            def message_samples
              @properties['message_samples']
            end

            ##
            # @return [String] A2P Campaign Use Case.
            def us_app_to_person_usecase
              @properties['us_app_to_person_usecase']
            end

            ##
            # @return [Boolean] Indicate that this SMS campaign will send messages that contain links
            def has_embedded_links
              @properties['has_embedded_links']
            end

            ##
            # @return [Boolean] Indicates that this SMS campaign will send messages that contain phone numbers
            def has_embedded_phone
              @properties['has_embedded_phone']
            end

            ##
            # @return [String] Campaign status
            def campaign_status
              @properties['campaign_status']
            end

            ##
            # @return [String] The Campaign Registry (TCR) Campaign ID.
            def campaign_id
              @properties['campaign_id']
            end

            ##
            # @return [Boolean] Indicates whether the campaign was registered externally or not
            def is_externally_registered
              @properties['is_externally_registered']
            end

            ##
            # @return [Hash] Rate limit and/or classification set by each carrier
            def rate_limits
              @properties['rate_limits']
            end

            ##
            # @return [Time] The ISO 8601 date and time in GMT when the resource was created
            def date_created
              @properties['date_created']
            end

            ##
            # @return [Time] The ISO 8601 date and time in GMT when the resource was last updated
            def date_updated
              @properties['date_updated']
            end

            ##
            # @return [String] The absolute URL of the US App to Person resource
            def url
              @properties['url']
            end

            ##
            # Delete the UsAppToPersonInstance
            # @return [Boolean] true if delete succeeds, false otherwise
            def delete
              context.delete
            end

            ##
            # Fetch the UsAppToPersonInstance
            # @return [UsAppToPersonInstance] Fetched UsAppToPersonInstance
            def fetch
              context.fetch
            end

            ##
            # Provide a user friendly representation
            def to_s
              values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Messaging.V1.UsAppToPersonInstance #{values}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Messaging.V1.UsAppToPersonInstance #{values}>"
            end
          end
        end
      end
    end
  end
end