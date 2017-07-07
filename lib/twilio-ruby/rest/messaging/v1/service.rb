##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Messaging < Domain
      class V1 < Version
        class ServiceList < ListResource
          ##
          # Initialize the ServiceList
          # @param [Version] version Version that contains the resource
          # @return [ServiceList] ServiceList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/Services"
          end

          ##
          # Retrieve a single page of ServiceInstance records from the API.
          # Request is executed immediately.
          # @param [String] friendly_name The friendly_name
          # @param [String] inbound_request_url The inbound_request_url
          # @param [String] inbound_method The inbound_method
          # @param [String] fallback_url The fallback_url
          # @param [String] fallback_method The fallback_method
          # @param [String] status_callback The status_callback
          # @param [Boolean] sticky_sender The sticky_sender
          # @param [Boolean] mms_converter The mms_converter
          # @param [Boolean] smart_encoding The smart_encoding
          # @param [service.ScanMessageContent] scan_message_content The
          #   scan_message_content
          # @param [Boolean] fallback_to_long_code The fallback_to_long_code
          # @param [Boolean] area_code_geomatch The area_code_geomatch
          # @param [String] validity_period The validity_period
          # @param [Boolean] synchronous_validation The synchronous_validation
          # @return [ServiceInstance] Newly created ServiceInstance
          def create(friendly_name: nil, inbound_request_url: :unset, inbound_method: :unset, fallback_url: :unset, fallback_method: :unset, status_callback: :unset, sticky_sender: :unset, mms_converter: :unset, smart_encoding: :unset, scan_message_content: :unset, fallback_to_long_code: :unset, area_code_geomatch: :unset, validity_period: :unset, synchronous_validation: :unset)
            data = Twilio::Values.of({
                'FriendlyName' => friendly_name,
                'InboundRequestUrl' => inbound_request_url,
                'InboundMethod' => inbound_method,
                'FallbackUrl' => fallback_url,
                'FallbackMethod' => fallback_method,
                'StatusCallback' => status_callback,
                'StickySender' => sticky_sender,
                'MmsConverter' => mms_converter,
                'SmartEncoding' => smart_encoding,
                'ScanMessageContent' => scan_message_content,
                'FallbackToLongCode' => fallback_to_long_code,
                'AreaCodeGeomatch' => area_code_geomatch,
                'ValidityPeriod' => validity_period,
                'SynchronousValidation' => synchronous_validation,
            })

            payload = @version.create(
                'POST',
                @uri,
                data: data
            )

            ServiceInstance.new(
                @version,
                payload,
            )
          end

          ##
          # Lists ServiceInstance records from the API as a list.
          # Unlike stream(), this operation is eager and will load `limit` records into
          # memory before returning.
          # @param [Integer] limit Upper limit for the number of records to return. stream()
          #                   guarantees to never return more than limit.  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when not set will                      use
          #  the default value of 50 records.  If no page_size is                      defined
          #  but a limit is defined, stream() will attempt to read                      the
          #  limit with the most efficient page size,                      i.e. min(limit, 1000)
          # @return [Array] Array of up to limit results
          def list(limit: nil, page_size: nil)
            self.stream(
                limit: limit,
                page_size: page_size
            ).entries
          end

          ##
          # Streams ServiceInstance records from the API as an Enumerable.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          # @param [Integer] limit Upper limit for the number of records to return.                  stream()
          #  guarantees to never return more than limit.                  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when                      not set will use
          #  the default value of 50 records.                      If no page_size is defined
          #                       but a limit is defined, stream() will attempt to                      read the
          #  limit with the most efficient page size,                       i.e. min(limit, 1000)
          # @return [Enumerable] Enumerable that will yield up to limit results
          def stream(limit: nil, page_size: nil)
            limits = @version.read_limits(limit, page_size)

            page = self.page(
                page_size: limits[:page_size],
            )

            @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
          end

          ##
          # When passed a block, yields ServiceInstance records from the API.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          # @param [Integer] limit Upper limit for the number of records to return.                  stream()
          #  guarantees to never return more than limit.                  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when                       not set will use
          #  the default value of 50 records.                      If no page_size is defined
          #                       but a limit is defined, stream() will attempt to read the
          #                       limit with the most efficient page size, i.e. min(limit, 1000)
          def each
            limits = @version.read_limits

            page = self.page(
                page_size: limits[:page_size],
            )

            @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
          end

          ##
          # Retrieve a single page of ServiceInstance records from the API.
          # Request is executed immediately.
          # @param [String] page_token PageToken provided by the API
          # @param [Integer] page_number Page Number, this value is simply for client state
          # @param [Integer] page_size Number of records to return, defaults to 50
          # @return [Page] Page of ServiceInstance
          def page(page_token: :unset, page_number: :unset, page_size: :unset)
            params = Twilio::Values.of({
                'PageToken' => page_token,
                'Page' => page_number,
                'PageSize' => page_size,
            })
            response = @version.page(
                'GET',
                @uri,
                params
            )
            ServicePage.new(@version, response, @solution)
          end

          ##
          # Retrieve a single page of ServiceInstance records from the API.
          # Request is executed immediately.
          # @param [String] target_url API-generated URL for the requested results page
          # @return [Page] Page of ServiceInstance
          def get_page(target_url)
            response = @version.domain.request(
                'GET',
                target_url
            )
            ServicePage.new(@version, response, @solution)
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.Messaging.V1.ServiceList>'
          end
        end

        class ServicePage < Page
          ##
          # Initialize the ServicePage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [ServicePage] ServicePage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of ServiceInstance
          # @param [Hash] payload Payload response from the API
          # @return [ServiceInstance] ServiceInstance
          def get_instance(payload)
            ServiceInstance.new(
                @version,
                payload,
            )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.Messaging.V1.ServicePage>'
          end
        end

        class ServiceContext < InstanceContext
          ##
          # Initialize the ServiceContext
          # @param [Version] version Version that contains the resource
          # @param [String] sid The sid
          # @return [ServiceContext] ServiceContext
          def initialize(version, sid)
            super(version)

            # Path Solution
            @solution = {
                sid: sid,
            }
            @uri = "/Services/#{@solution[:sid]}"

            # Dependents
            @phone_numbers = nil
            @short_codes = nil
            @alpha_senders = nil
          end

          ##
          # Update the ServiceInstance
          # @param [String] friendly_name The friendly_name
          # @param [String] inbound_request_url The inbound_request_url
          # @param [String] inbound_method The inbound_method
          # @param [String] fallback_url The fallback_url
          # @param [String] fallback_method The fallback_method
          # @param [String] status_callback The status_callback
          # @param [Boolean] sticky_sender The sticky_sender
          # @param [Boolean] mms_converter The mms_converter
          # @param [Boolean] smart_encoding The smart_encoding
          # @param [service.ScanMessageContent] scan_message_content The
          #   scan_message_content
          # @param [Boolean] fallback_to_long_code The fallback_to_long_code
          # @param [Boolean] area_code_geomatch The area_code_geomatch
          # @param [String] validity_period The validity_period
          # @param [Boolean] synchronous_validation The synchronous_validation
          # @return [ServiceInstance] Updated ServiceInstance
          def update(friendly_name: :unset, inbound_request_url: :unset, inbound_method: :unset, fallback_url: :unset, fallback_method: :unset, status_callback: :unset, sticky_sender: :unset, mms_converter: :unset, smart_encoding: :unset, scan_message_content: :unset, fallback_to_long_code: :unset, area_code_geomatch: :unset, validity_period: :unset, synchronous_validation: :unset)
            data = Twilio::Values.of({
                'FriendlyName' => friendly_name,
                'InboundRequestUrl' => inbound_request_url,
                'InboundMethod' => inbound_method,
                'FallbackUrl' => fallback_url,
                'FallbackMethod' => fallback_method,
                'StatusCallback' => status_callback,
                'StickySender' => sticky_sender,
                'MmsConverter' => mms_converter,
                'SmartEncoding' => smart_encoding,
                'ScanMessageContent' => scan_message_content,
                'FallbackToLongCode' => fallback_to_long_code,
                'AreaCodeGeomatch' => area_code_geomatch,
                'ValidityPeriod' => validity_period,
                'SynchronousValidation' => synchronous_validation,
            })

            payload = @version.update(
                'POST',
                @uri,
                data: data,
            )

            ServiceInstance.new(
                @version,
                payload,
                sid: @solution[:sid],
            )
          end

          ##
          # Fetch a ServiceInstance
          # @return [ServiceInstance] Fetched ServiceInstance
          def fetch
            params = Twilio::Values.of({})

            payload = @version.fetch(
                'GET',
                @uri,
                params,
            )

            ServiceInstance.new(
                @version,
                payload,
                sid: @solution[:sid],
            )
          end

          ##
          # Deletes the ServiceInstance
          # @return [Boolean] true if delete succeeds, true otherwise
          def delete
            @version.delete('delete', @uri)
          end

          ##
          # Access the phone_numbers
          # @return [PhoneNumberList] if a(n) PhoneNumberList object was created.
          # @return [PhoneNumberContext] if a(n) PhoneNumberContext object was created.
          def phone_numbers(sid=:unset)
            raise ArgumentError, 'sid cannot be nil' if sid.nil?

            if sid != :unset
              return PhoneNumberContext.new(
                  @version,
                  @solution[:sid],
                  sid,
              )
            end

            unless @phone_numbers
              @phone_numbers = PhoneNumberList.new(
                  @version,
                  service_sid: @solution[:sid],
              )
            end

            @phone_numbers
          end

          ##
          # Access the short_codes
          # @return [ShortCodeList] if a(n) ShortCodeList object was created.
          # @return [ShortCodeContext] if a(n) ShortCodeContext object was created.
          def short_codes(sid=:unset)
            raise ArgumentError, 'sid cannot be nil' if sid.nil?

            if sid != :unset
              return ShortCodeContext.new(
                  @version,
                  @solution[:sid],
                  sid,
              )
            end

            unless @short_codes
              @short_codes = ShortCodeList.new(
                  @version,
                  service_sid: @solution[:sid],
              )
            end

            @short_codes
          end

          ##
          # Access the alpha_senders
          # @return [AlphaSenderList] if a(n) AlphaSenderList object was created.
          # @return [AlphaSenderContext] if a(n) AlphaSenderContext object was created.
          def alpha_senders(sid=:unset)
            raise ArgumentError, 'sid cannot be nil' if sid.nil?

            if sid != :unset
              return AlphaSenderContext.new(
                  @version,
                  @solution[:sid],
                  sid,
              )
            end

            unless @alpha_senders
              @alpha_senders = AlphaSenderList.new(
                  @version,
                  service_sid: @solution[:sid],
              )
            end

            @alpha_senders
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.Messaging.V1.ServiceContext #{context}>"
          end
        end

        class ServiceInstance < InstanceResource
          ##
          # Initialize the ServiceInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @param [String] sid The sid
          # @return [ServiceInstance] ServiceInstance
          def initialize(version, payload, sid: nil)
            super(version)

            # Marshaled Properties
            @properties = {
                'sid' => payload['sid'],
                'account_sid' => payload['account_sid'],
                'friendly_name' => payload['friendly_name'],
                'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                'inbound_request_url' => payload['inbound_request_url'],
                'inbound_method' => payload['inbound_method'],
                'fallback_url' => payload['fallback_url'],
                'fallback_method' => payload['fallback_method'],
                'status_callback' => payload['status_callback'],
                'sticky_sender' => payload['sticky_sender'],
                'mms_converter' => payload['mms_converter'],
                'smart_encoding' => payload['smart_encoding'],
                'scan_message_content' => payload['scan_message_content'],
                'fallback_to_long_code' => payload['fallback_to_long_code'],
                'area_code_geomatch' => payload['area_code_geomatch'],
                'synchronous_validation' => payload['synchronous_validation'],
                'validity_period' => payload['validity_period'].to_i,
                'url' => payload['url'],
                'links' => payload['links'],
            }

            # Context
            @instance_context = nil
            @params = {
                'sid' => sid || @properties['sid'],
            }
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @param [Version] version Version that contains the resource
          # @return [ServiceContext] ServiceContext for this ServiceInstance
          def context
            unless @instance_context
              @instance_context = ServiceContext.new(
                  @version,
                  @params['sid'],
              )
            end
            @instance_context
          end

          def sid
            @properties['sid']
          end

          def account_sid
            @properties['account_sid']
          end

          def friendly_name
            @properties['friendly_name']
          end

          def date_created
            @properties['date_created']
          end

          def date_updated
            @properties['date_updated']
          end

          def inbound_request_url
            @properties['inbound_request_url']
          end

          def inbound_method
            @properties['inbound_method']
          end

          def fallback_url
            @properties['fallback_url']
          end

          def fallback_method
            @properties['fallback_method']
          end

          def status_callback
            @properties['status_callback']
          end

          def sticky_sender
            @properties['sticky_sender']
          end

          def mms_converter
            @properties['mms_converter']
          end

          def smart_encoding
            @properties['smart_encoding']
          end

          def scan_message_content
            @properties['scan_message_content']
          end

          def fallback_to_long_code
            @properties['fallback_to_long_code']
          end

          def area_code_geomatch
            @properties['area_code_geomatch']
          end

          def synchronous_validation
            @properties['synchronous_validation']
          end

          def validity_period
            @properties['validity_period']
          end

          def url
            @properties['url']
          end

          def links
            @properties['links']
          end

          ##
          # Update the ServiceInstance
          # @param [String] friendly_name The friendly_name
          # @param [String] inbound_request_url The inbound_request_url
          # @param [String] inbound_method The inbound_method
          # @param [String] fallback_url The fallback_url
          # @param [String] fallback_method The fallback_method
          # @param [String] status_callback The status_callback
          # @param [Boolean] sticky_sender The sticky_sender
          # @param [Boolean] mms_converter The mms_converter
          # @param [Boolean] smart_encoding The smart_encoding
          # @param [service.ScanMessageContent] scan_message_content The
          #   scan_message_content
          # @param [Boolean] fallback_to_long_code The fallback_to_long_code
          # @param [Boolean] area_code_geomatch The area_code_geomatch
          # @param [String] validity_period The validity_period
          # @param [Boolean] synchronous_validation The synchronous_validation
          # @return [ServiceInstance] Updated ServiceInstance
          def update(friendly_name: :unset, inbound_request_url: :unset, inbound_method: :unset, fallback_url: :unset, fallback_method: :unset, status_callback: :unset, sticky_sender: :unset, mms_converter: :unset, smart_encoding: :unset, scan_message_content: :unset, fallback_to_long_code: :unset, area_code_geomatch: :unset, validity_period: :unset, synchronous_validation: :unset)
            context.update(
                friendly_name: friendly_name,
                inbound_request_url: inbound_request_url,
                inbound_method: inbound_method,
                fallback_url: fallback_url,
                fallback_method: fallback_method,
                status_callback: status_callback,
                sticky_sender: sticky_sender,
                mms_converter: mms_converter,
                smart_encoding: smart_encoding,
                scan_message_content: scan_message_content,
                fallback_to_long_code: fallback_to_long_code,
                area_code_geomatch: area_code_geomatch,
                validity_period: validity_period,
                synchronous_validation: synchronous_validation,
            )
          end

          ##
          # Fetch a ServiceInstance
          # @return [ServiceInstance] Fetched ServiceInstance
          def fetch
            context.fetch
          end

          ##
          # Deletes the ServiceInstance
          # @return [Boolean] true if delete succeeds, true otherwise
          def delete
            context.delete
          end

          ##
          # Access the phone_numbers
          # @return [phone_numbers] phone_numbers
          def phone_numbers
            context.phone_numbers
          end

          ##
          # Access the short_codes
          # @return [short_codes] short_codes
          def short_codes
            context.short_codes
          end

          ##
          # Access the alpha_senders
          # @return [alpha_senders] alpha_senders
          def alpha_senders
            context.alpha_senders
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.Messaging.V1.ServiceInstance #{values}>"
          end
        end
      end
    end
  end
end