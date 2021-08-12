require 'smaug.rb'

def tick args
  Dragontile::Game.configure(args, { tile_height: 16, license_key: 'DEMO' }) do
    args.state.world ||= GameWorld.new
    args.state.world.tick(args) unless args.state[:world].nil?
    #args.state.world = nil if $gtk.files_reloaded.length > 0
  end
end
