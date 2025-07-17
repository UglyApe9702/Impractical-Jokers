SMODS.Joker{ --The Gang
    name = "The Gang",
    key = "thegang",
    config = {
        extra = {
            echips = 1.2,
            emult = 1.5
        }
    },
    loc_txt = {
        ['name'] = 'The Gang',
        ['text'] = {
            [1] = 'All of the jokers use all',
            [2] = 'of their power to give',
            [3] = '{X:blue,C:white}^1.2{}/{X:red,C:white}^1.5{} Chips/Mult per card',
            [4] = 'scored.',
            [5] = 'if you manage to lose with this you suck'
        }
    },
    pos = {
        x = 4,
        y = 0
    },
    cost = 20,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {}}
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and not context.blueprint then
                return {
                    e_chips = card.ability.extra.echips,
                    extra = {
                        e_mult = card.ability.extra.emult,
                        colour = G.C.DARK_EDITION
                        }
                }
        end
    end
}