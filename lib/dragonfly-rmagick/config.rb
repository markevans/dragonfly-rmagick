module Dragonfly
  module RMagick

    # RMagick is a saved configuration for Dragonfly apps, which does the following:
    # - registers an rmagick analyser
    # - registers an rmagick processor
    # - registers an rmagick encoder
    # - registers an rmagick generator
    # - adds thumb shortcuts like '280x140!', etc.
    # Look at the source code for apply_configuration to see exactly how it configures the app.
    module Config
      def self.apply_configuration(app, opts={})
        use_filesystem = opts.has_key?(:use_filesystem) ? opts[:use_filesystem] : true
        app.configure do |c|
          c.analyser.register(Analyser) do |a|
            a.use_filesystem = use_filesystem
          end
          c.processor.register(Processor) do |p|
            p.use_filesystem = use_filesystem
          end
          c.encoder.register(Encoder) do |e|
            e.use_filesystem = use_filesystem
          end
          c.generator.register(Generator) do |g|
            g.use_filesystem = use_filesystem
          end
          c.job :thumb do |geometry, format|
            process :thumb, geometry
            encode format if format
          end
          c.job :gif do
            encode :gif
          end
          c.job :jpg do
            encode :jpg
          end
          c.job :png do
            encode :png
          end
        end
      end
    end
    
  end
end
