require 'spec_helper'

describe Dragonfly::RMagick::Config do

  before(:each) do
    @app = test_app
  end

  it "should configure all to use the filesystem by default" do
    @app.configure_with(Dragonfly::RMagick::Config)
    @app.analyser.get_registered(Dragonfly::RMagick::Analyser).use_filesystem.should be_true
    @app.processor.get_registered(Dragonfly::RMagick::Processor).use_filesystem.should be_true
    @app.encoder.get_registered(Dragonfly::RMagick::Encoder).use_filesystem.should be_true
    @app.generator.get_registered(Dragonfly::RMagick::Generator).use_filesystem.should be_true
  end

  it "should configure all not to use the filesystem if requested" do
    @app.configure_with(Dragonfly::RMagick::Config, :use_filesystem => false)
    @app.analyser.get_registered(Dragonfly::RMagick::Analyser).use_filesystem.should be_false
    @app.processor.get_registered(Dragonfly::RMagick::Processor).use_filesystem.should be_false
    @app.encoder.get_registered(Dragonfly::RMagick::Encoder).use_filesystem.should be_false
    @app.generator.get_registered(Dragonfly::RMagick::Generator).use_filesystem.should be_false
  end

end
