require 'word_wrap'

describe "WordWrap" do
    describe "wrapper" do
        context "given an empty string" do
            it "returns nil" do
                expect(WordWrapper.new.wrapper("", 1)).to eq("")
            end 
        end

        context "given string shorter than the column length" do
            it "returns the string" do
                expect(WordWrapper.new.wrapper("Hello", 5)).to eq("Hello")
            end 
        end

        context "given string shorter than the column length" do
            it "returns the string" do
                expect(WordWrapper.new.wrapper("word", 5)).to eq("word")
            end 
        end

        context "given two words equal to the column length" do
            it "returns each word on a separate line" do
                expect(WordWrapper.new.wrapper("word word", 4)).to eq("word\nword")
            end 
        end
        
    end 
end
    
        
            

