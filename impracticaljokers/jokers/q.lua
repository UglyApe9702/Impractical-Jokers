SMODS.Joker{ --Q
    name = "Q",
    key = "q",
    config = {
        extra = {
            odds = 8,
            odds2 = 4,
            odds3 = 2,
            dollars = 15,
            dollars2 = 5,
            dollars3 = 2
        }
    },
    loc_txt = {
        ['name'] = 'Q',
        ['text'] = {
            [1] = '{C:attention}1 in 8{} chance to give $15',
            [2] = 'when a hand is played',
            [3] = '{C:attention}1 in 4{} chance to give $5',
            [4] = 'when a hand is played',
            [5] = '{C:attention}1 in 2{} chance to give $2',
            [6] = 'when a hand is played'
        }
    },
    pos = {
        x = 3,
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
            if true then
                if pseudorandom('group_0_15278b15') < G.GAME.probabilities.normal / card.ability.extra.odds then
                        SMODS.calculate_effect({dollars = card.ability.extra.dollars}, card)
                    end
                if pseudorandom('group_1_eee5039a') < G.GAME.probabilities.normal / card.ability.extra.odds2 then
                        SMODS.calculate_effect({dollars = card.ability.extra.dollars2}, card)
                    end
                if pseudorandom('group_2_61808b81') < G.GAME.probabilities.normal / card.ability.extra.odds3 then
                        SMODS.calculate_effect({dollars = card.ability.extra.dollars3}, card)
                    end
            end
        end
    end
}