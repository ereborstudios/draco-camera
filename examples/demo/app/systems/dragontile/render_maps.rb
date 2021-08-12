class RenderMaps < Draco::System
  filter MapFile, Tag(:ready)

  def tick(args)
    entities.each do |entity|
      map = entity.map_file.data
      map.render_background_color

      map.layers.each do |layer|
        layer.render(layer.properties.render_target&.to_sym || :map)
      end
    end
  end
end
