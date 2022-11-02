class OpenAPIParser::SchemaValidator
  class ConstValidator < Base
    # @param [Object] value
    # @param [OpenAPIParser::Schemas::Schema] schema
    def coerce_and_validate(value, schema, **_keyword_args)
      return OpenAPIParser::ValidateError.build_error_result(value, schema) unless value == schema.const

      [value, nil]
    end
  end
end
