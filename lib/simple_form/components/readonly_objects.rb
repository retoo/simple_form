module SimpleForm
  module Components
    # Needs to be enabled in order to do automatic lookups.
    module ReadonlyObjects
      def readonly_objects
        if readonly_object? && !has_readonly?
          input_html_options[:readonly] ||= true
          input_html_classes << :readonly
        end
        nil
      end

      private

      def readonly_object?
        object.respond_to?(:readonly_object?) && object.readonly_object?
      end
    end
  end
end
