Dragonfly-RMagick
=================

Dragonfly-RMagick was extracted from the original dragonfly code and provides an analyser, processor, encoder and generator for Dragonfly using the
RMagick image library. It has been superseded in dragonfly by the ImageMagick processor, analyser, etc., which calls the command line directly.

It shouldn't be necessary and is provided here in case it's needed for some reason!

Usage
-----

    require 'dragonfly-rmagick'
    Dragonfly[:images].configure_with(:rmagick)

In Rails, the above would be done in an initializer.

You can tell RMagick to process everything using in-memory strings, without touching the filesystem, by adding an option when calling `configure_with`

    Dragonfly[:images].configure_with(:rmagick, :use_filesystem => false)

Then given a dragonfly 'Job' object

    image = Dragonfly[:images].fetch("some_uid")

or a model accessor

    image = @post.main_image

we can call:

- `thumb`, `jpg`, `png`, `gif`,
- the analysis methods `width`, `height`, `aspect_ratio`, `portrait?`, `landscape?`, `depth`, `number_of_colours` and `format`
- `process` with `:thumb`, `:crop`, `:flip`, `:flop`, `:greyscale`, `:resize`, `:resize_and_crop` and `:rotate`
- `encode` with `:jpg`, `:png`, `:gif`, `:tiff`, etc.
- `generate` with `plasma` and `text`

See the [dragonfly documentation](http://markevans.github.com/dragonfly) for more info, as the equivalent ImageMagick methods have the same API.
