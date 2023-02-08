local M = {}

function M:deep_copy(val)
    if type(val) == "table" then
        local tab = {}
        for item in val do
            if type(item) == "table" then
                tab[item] = self.deep_copy(item)
            else
                tab[item] = item
            end
        end
        return tab
    end
    return nil
end

return M
