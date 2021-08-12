class Star < Draco::Entity
  include Dragontile::Draco::Entity
  register_type :star

  component Sprite, path: 'sprites/misc/star.png'
end
