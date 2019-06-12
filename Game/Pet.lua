--[[

health      [0:100]
energy      [0:100]
hungry      [0:100]
growth      [0:100]
smart       [0:100]
happiness   [0:100]
thirsty     [0:100]
emotions 
[
    happy,  -> happiness
    sad,    -> happiness
    normal, -> happiness
    sleepy, -> energy
    angry   -> energy and happiness
    sick    -> health
]
weight   [1:7]
dirty    [boolean]

--]]
Pet = {}
Pet.__index = Pet

function Pet.New()
    local self = {
        health = 100,
        energy = 100,
        hungry = 100,
        growth = 0,
        smart = 50,
        happiness = 50,
        thirsty = 100,
        emotion = "normal",
        weight = 1,
        dirty = false,
        -- Controll
        last_update = os.time()
    }

    function self.setX(i)
        self.health = i
    end

    return self
end


return Pet