module ActiveFilter
  class Base
    include ActiveModel::Model
    extend ActiveModel::Naming
    extend ActiveModel::Translation
    include ActiveModel::Attributes

    class << self
      attr_reader :reducers

      def filter(&block)
        @reducers ||= []
        @reducers << block
      end
    end

    def reduce(base_relation)
      self.class.reducers.reduce(base_relation) do |relation, block|
        next relation unless block.respond_to?(:call)

        instance_exec(relation, &block)
      end
    end
  end
end

