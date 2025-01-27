##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Flex
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class FlexApi < FlexApiBase
            class V1 < Version
                class InsightsQuestionnairesCategoryList < ListResource
                    ##
                    # Initialize the InsightsQuestionnairesCategoryList
                    # @param [Version] version Version that contains the resource
                    # @return [InsightsQuestionnairesCategoryList] InsightsQuestionnairesCategoryList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/Insights/QualityManagement/Categories"
                        
                    end
                    ##
                    # Create the InsightsQuestionnairesCategoryInstance
                    # @param [String] name The name of this category.
                    # @param [String] authorization The Authorization HTTP request header
                    # @return [InsightsQuestionnairesCategoryInstance] Created InsightsQuestionnairesCategoryInstance
                    def create(
                        name: nil, 
                        authorization: :unset
                    )

                        data = Twilio::Values.of({
                            'Name' => name,
                        })

                        headers = Twilio::Values.of({ 'Authorization' => authorization, })
                        payload = @version.create('POST', @uri, data: data, headers: headers)
                        InsightsQuestionnairesCategoryInstance.new(
                            @version,
                            payload,
                        )
                    end

                
                    ##
                    # Lists InsightsQuestionnairesCategoryInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [String] authorization The Authorization HTTP request header
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(authorization: :unset, limit: nil, page_size: nil)
                        self.stream(
                            authorization: authorization,
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [String] authorization The Authorization HTTP request header
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(authorization: :unset, limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            authorization: authorization,
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields InsightsQuestionnairesCategoryInstance records from the API.
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
                    # Retrieve a single page of InsightsQuestionnairesCategoryInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] authorization The Authorization HTTP request header
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of InsightsQuestionnairesCategoryInstance
                    def page(authorization: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            
                            'Authorization' => authorization,
                            
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        InsightsQuestionnairesCategoryPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of InsightsQuestionnairesCategoryInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of InsightsQuestionnairesCategoryInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    InsightsQuestionnairesCategoryPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.FlexApi.V1.InsightsQuestionnairesCategoryList>'
                    end
                end


                ##
                #PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
                class InsightsQuestionnairesCategoryContext < InstanceContext
                    ##
                    # Initialize the InsightsQuestionnairesCategoryContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] category_sid The SID of the category to be updated
                    # @return [InsightsQuestionnairesCategoryContext] InsightsQuestionnairesCategoryContext
                    def initialize(version, category_sid)
                        super(version)

                        # Path Solution
                        @solution = { category_sid: category_sid,  }
                        @uri = "/Insights/QualityManagement/Categories/#{@solution[:category_sid]}"

                        
                    end
                    ##
                    # Delete the InsightsQuestionnairesCategoryInstance
                    # @param [String] authorization The Authorization HTTP request header
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete(
                        authorization: :unset
                    )

                        headers = Twilio::Values.of({ 'Authorization' => authorization, })
                        @version.delete('DELETE', @uri, headers: headers)
                    end

                    ##
                    # Update the InsightsQuestionnairesCategoryInstance
                    # @param [String] name The name of this category.
                    # @param [String] authorization The Authorization HTTP request header
                    # @return [InsightsQuestionnairesCategoryInstance] Updated InsightsQuestionnairesCategoryInstance
                    def update(
                        name: nil, 
                        authorization: :unset
                    )

                        data = Twilio::Values.of({
                            'Name' => name,
                        })

                        headers = Twilio::Values.of({ 'Authorization' => authorization, })
                        payload = @version.update('POST', @uri, data: data, headers: headers)
                        InsightsQuestionnairesCategoryInstance.new(
                            @version,
                            payload,
                            category_sid: @solution[:category_sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.FlexApi.V1.InsightsQuestionnairesCategoryContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.FlexApi.V1.InsightsQuestionnairesCategoryContext #{context}>"
                    end
                end

                class InsightsQuestionnairesCategoryPage < Page
                    ##
                    # Initialize the InsightsQuestionnairesCategoryPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [InsightsQuestionnairesCategoryPage] InsightsQuestionnairesCategoryPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of InsightsQuestionnairesCategoryInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [InsightsQuestionnairesCategoryInstance] InsightsQuestionnairesCategoryInstance
                    def get_instance(payload)
                        InsightsQuestionnairesCategoryInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.FlexApi.V1.InsightsQuestionnairesCategoryPage>'
                    end
                end
                class InsightsQuestionnairesCategoryInstance < InstanceResource
                    ##
                    # Initialize the InsightsQuestionnairesCategoryInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this InsightsQuestionnairesCategory
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [InsightsQuestionnairesCategoryInstance] InsightsQuestionnairesCategoryInstance
                    def initialize(version, payload , category_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'category_sid' => payload['category_sid'],
                            'name' => payload['name'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'category_sid' => category_sid  || @properties['category_sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [InsightsQuestionnairesCategoryContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = InsightsQuestionnairesCategoryContext.new(@version , @params['category_sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Flex Insights resource and owns this resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the category
                    def category_sid
                        @properties['category_sid']
                    end
                    
                    ##
                    # @return [String] The name of this category.
                    def name
                        @properties['name']
                    end
                    
                    ##
                    # @return [String] 
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Delete the InsightsQuestionnairesCategoryInstance
                    # @param [String] authorization The Authorization HTTP request header
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete(
                        authorization: :unset
                    )

                        context.delete(
                            authorization: authorization, 
                        )
                    end

                    ##
                    # Update the InsightsQuestionnairesCategoryInstance
                    # @param [String] name The name of this category.
                    # @param [String] authorization The Authorization HTTP request header
                    # @return [InsightsQuestionnairesCategoryInstance] Updated InsightsQuestionnairesCategoryInstance
                    def update(
                        name: nil, 
                        authorization: :unset
                    )

                        context.update(
                            name: name, 
                            authorization: authorization, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.FlexApi.V1.InsightsQuestionnairesCategoryInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.FlexApi.V1.InsightsQuestionnairesCategoryInstance #{values}>"
                    end
                end

            end
        end
    end
end
