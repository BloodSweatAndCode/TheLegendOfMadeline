# module TheLegendOfMadeline

# using ..Ahorn, Maple

# @mapdef Entity "TheLegendOfMadeline/Triforce" Triforce(x::Integer, y::Integer, sprite::String="objects/TheLegendOfMadeline/triforce")

# const placements = Ahorn.PlacementDict(
#     "Triforce (TheLegendOfMadeline)" => Ahorn.EntityPlacement(
#         Triforce
#     )
# )

# sprite = "objects/TheLegendOfMadeline/triforce.png"

# function Ahorn.selection(entity::Triforce)
#     x, y = Ahorn.position(entity)
# 	return Ahorn.getSpriteRectangle("objects/TheLegendOfMadeline/triforce.png", x, y)
# end

# Ahorn.render(ctx::Ahorn.Cairo.CairoContext, entity::Triforce, room::Maple.Room) = Ahorn.drawSprite(ctx, sprite, 0, 0)

# end

module TheLegendOfMadelineTriforce

using ..Ahorn, Maple

@mapdef Entity "TheLegendOfMadeline/Triforce" Triforce(x::Integer, y::Integer)

const placements = Ahorn.PlacementDict(
    "Triforce (The Legend Of Madeline)" => Ahorn.EntityPlacement(
        Triforce,
		"point"
    ),
)

function Ahorn.selection(entity::Triforce)
    x, y = Ahorn.position(entity)
	sprite = "objects/TheLegendOfMadeline/triforce/idle00.png"
    return Ahorn.getSpriteRectangle(sprite, x, y)
end

function Ahorn.render(ctx::Ahorn.Cairo.CairoContext, entity::Triforce, room::Maple.Room)
	sprite = "objects/TheLegendOfMadeline/triforce/idle00.png"
	Ahorn.drawSprite(ctx, sprite, 0, 0)
end

end