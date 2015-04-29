module HelloRubyCalculator
  class Calculator
    attr_reader :args

    def sum *args
      @args = args
      validate_params

      args.reduce(:+)
    end

    def subtract *args
      @args = args
      validate_params

      args.reduce(:-)
    end

    def multiply *args
      @args = args
      validate_params

      args.reduce(:*)
    end

    def divide *args
      @args = args
      validate_params

      args.reduce(:/)
    end

    private
    def only_numbers?
      @args.all?{ |arg| arg.is_a? Fixnum }
    end

    def validate_params
      raise EmptyParams if @args.empty?
      raise WrongParams unless only_numbers?
    end
  end

  class EmptyParams < StandardError; end;
  class WrongParams < StandardError; end;
end
