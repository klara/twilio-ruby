##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Preview
      class BulkExports < Version
        ##
        # Initialize the BulkExports version of Preview
        def initialize(domain)
          super
          @version = 'BulkExports'
          @exports = nil
          @export_configuration = nil
        end

        def exports(sid=:unset)
          if sid.nil?
            raise ArgumentError, 'sid cannot be nil'
          elsif sid == :unset
            @exports ||= ExportList.new self
          else
            ExportContext.new(self, sid)
          end
        end

        def export_configuration(sid=:unset)
          if sid.nil?
            raise ArgumentError, 'sid cannot be nil'
          elsif sid == :unset
            @export_configuration ||= ExportConfigurationList.new self
          else
            ExportConfigurationContext.new(self, sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::Preview::BulkExports>'
        end
      end
    end
  end
end