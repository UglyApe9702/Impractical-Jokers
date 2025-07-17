SMODS.Joker{ --Sal
    name = "Sal",
    key = "sal",
    config = {
        extra = {
            chips = 1000
        }
    },
    loc_txt = {
        ['name'] = 'Sal',
        ['text'] = {
            [1] = '{C:gold}Lucky cards{} always give {C:blue}1000 {C:attention}Bonus{}',
            [2] = 'Chips{} when scored'
        }
    },
    pos = {
        x = 0,
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
            if SMODS.get_enhancements(context.other_card)["m_lucky"] == true then
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
    end
}