SMODS.Joker{ --Joe
    name = "Joe",
    key = "joe",
    config = {
        extra = {
            odds = 2,
            xchips = 2
        }
    },
    loc_txt = {
        ['name'] = 'Joe',
        ['text'] = {
            [1] = 'Face cards have a {C:attention}1 in 2{} chance to give',
            [2] = '{X:chips,C:white}x2{} Chips when scored'
        }
    },
    pos = {
        x = 1,
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
        if context.individual and context.cardarea == G.play and not context.blueprint then
            if context.other_card:is_face() then
                if pseudorandom('group_0_fcf890fa') < G.GAME.probabilities.normal / card.ability.extra.odds then
                        SMODS.calculate_effect({x_chips = card.ability.extra.xchips}, card)
                    end
            end
        end
    end
}