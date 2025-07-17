SMODS.Joker{ --Murr
    name = "Murr",
    key = "murr",
    config = {
        extra = {
            Xmult = 3
        }
    },
    loc_txt = {
        ['name'] = 'Murr',
        ['text'] = {
            [1] = 'Gives {X:red,C:white}x3{} Mult when a hand is played,',
            [2] = 'however, selling a card will make Murr',
            [3] = '{C:hearts}angry{} and self destruct.'
        }
    },
    pos = {
        x = 2,
        y = 0
    },
    cost = 10,
    rarity = "imprac_impractical",
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
                return {
                    Xmult = card.ability.extra.Xmult
                }
        end
        if context.selling_card and not context.blueprint then
                return {
                    func = function()
                card:start_dissolve()
                return true
            end,
                    message = "Destroyed!"
                }
        end
    end
}