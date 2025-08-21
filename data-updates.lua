require 'prototypes/resource'()
require 'prototypes/item'()
require 'prototypes/recipe'()
require 'prototypes/fluid'()
require 'prototypes/entity'()
require 'prototypes/technology'()
require 'prototypes/tiles'()

data.raw.item['fluoroketone-cold-barrel'].default_import_location = nil

require 'resources/friendly-colors'
require 'resources/fusion-fuel'
require 'resources/loaders'
require 'resources/map-gen-presets'
require 'resources/mixed-ores'
require 'resources/quality-trains'

require 'compatibility/aai-loaders'
require 'compatibility/se-space-trains'