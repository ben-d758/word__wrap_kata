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

        context "given two words equal to the column length 4" do
            it "returns each word on a separate line" do
                expect(WordWrapper.new.wrapper("word word", 4)).to eq("word\nword")
            end 
        end
        
        context "given two different words equal to the column length 4" do
            it "returns each word on a separate line" do
                expect(WordWrapper.new.wrapper("farm farm", 4)).to eq("farm\nfarm")
            end 
        end

        context "given multiple words that equal the column width" do
            it "returns the string with line breaks in correct point" do
                expect(WordWrapper.new.wrapper("I am I am", 4)).to eq("I am\nI am")
            end 
        end

        context "given multiple words that equal the column width" do
            it "returns the string with line breaks in correct point" do
                expect(WordWrapper.new.wrapper("We are We are", 6)).to eq("We are\nWe are")
            end 
        end

        context "given a word that is longer than the column width" do
            it "returns the word split at the column width" do
                expect(WordWrapper.new.wrapper("longer", 5)).to eq("longe\nr")
            end 
        end

        context "given another word that is longer than the column width" do
            it "returns the word split at the column width" do
                expect(WordWrapper.new.wrapper("ruby", 2)).to eq("ru\nby")
            end 
        end

        context "given words that are longer than twice the column width" do
            it "returns the words split onto three lines" do
                expect(WordWrapper.new.wrapper("column", 2)).to eq("co\nlu\nmn")
            end 
        end

    end 
end
    
            

