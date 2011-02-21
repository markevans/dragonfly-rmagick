module Dragonfly
  module RMagick
  end
  Rmagick = RMagick
end

require 'dragonfly-rmagick/analyser'
require 'dragonfly-rmagick/processor'
require 'dragonfly-rmagick/encoder'
require 'dragonfly-rmagick/generator'
require 'dragonfly-rmagick/config'

Dragonfly::App.register_configuration(:rmagick){ Dragonfly::RMagick::Config }
Dragonfly::App.register_configuration(:r_magick){ Dragonfly::RMagick::Config }
