class MovePlayer < Draco::System
  filter Position, Speed

  def tick(args)
    entities.each do |entity|
      dx = entity.speed.speed
      if entity.position.dx > 0 && entity.position.x >= (args.grid.right - 100)
        entity.position.dx = dx * -1
        entity.position.dy = -2
        entity.sprite.flip_horizontally = true
      elsif entity.position.x <= (args.grid.left + 100)
        entity.sprite.flip_horizontally = false
        entity.position.dx = dx
        entity.position.dy = 2
      end

      entity.position.x += entity.position.dx
      entity.position.y += entity.position.dy
    end
  end
end
