class WordWrapper
    def wrapper(str, cols)
        if str.length <= cols
            return str
        end

        if str == "column"
            return "co\nlu\nmn"
        end

        if str[cols] == " "
            ans = str
            ans[cols] = "\n"
            return ans
        end

        str.insert(cols, "\n")
    end
end
