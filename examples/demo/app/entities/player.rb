PLAYER_SIZE = 0.5

class Player < Draco::Entity
  component Position, x: 20, y: 20
  component Rotation, angle: 0
  component Size, width: 16 * PLAYER_SIZE, height: 16 * PLAYER_SIZE
  component Sprite, path: 'sprites/misc/dragon-0.png'
  component Speed, speed: 6, acceleration: 2, deceleration: 0.9
  component Visible
  component Tag(:player_controlled)
  component Animated, frames: [
    { frames: 4, path: 'sprites/misc/dragon-0.png' },
    { frames: 4, path: 'sprites/misc/dragon-1.png' },
    { frames: 4, path: 'sprites/misc/dragon-2.png' },
    { frames: 4, path: 'sprites/misc/dragon-3.png' },
    { frames: 4, path: 'sprites/misc/dragon-4.png' },
    { frames: 4, path: 'sprites/misc/dragon-5.png' }
  ]
  component Zoomable
  component Tag(:shakeable)
end
