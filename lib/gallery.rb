class Gallery < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
  end

  helpers do
    def families
      data.library.families.map do |_, family|
        Family.new(family)
      end
    end
  end
end
