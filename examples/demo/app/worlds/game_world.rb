class GameWorld < Draco::World
  include Draco::Common::World
  include Dragontile::World
  include Draco::Camera

  entity Map, map_file: { filename: 'maps/empty.json' }, as: :default_map
  entity RenderTarget,
         sprite: { path: :map, source_w: -1, source_h: -1, source_x: 0, source_y: 0 },
         as: :map_target
  entity Player, as: :player

  systems MovePlayer

  def initialize
    super
    camera.follow(player)
    camera.set_zoom 8.0, rate: 0.2
  end

  def tick args
    super

    if args.state.tick_count == 180
      camera.move_to x: 0, y: 0
      camera.shake
    end

    if args.state.tick_count == 300
      camera.move_to x: 200, y: 0
      camera.shake(60)
    end

    if args.state.tick_count == 360
      camera.move_to x: 200, y: 300
    end

    if args.state.tick_count == 500
      camera.shake(10)
      camera.follow(player)
    end

    if args.state.tick_count == 600
      camera.move_to x: 0, y: 0
      camera.set_zoom 4.0, rate: 0.1
    end
  end
end
