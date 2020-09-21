class WordWrapper
    def wrapper(str, cols)
        if str.length <= cols
            return str
        end
        ans = str
        ans[cols] = "\n"
        ans
    end
end