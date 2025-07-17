SMODS.Rarity {
    key = "impractical",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.02,
    badge_colour = HEX('9e9aff'),
    loc_txt = {
        name = "Impractical"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}