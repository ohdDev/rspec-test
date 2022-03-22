class StringAnalyzer
    def has_vowels?(s)
        !!(s =~ /[aeio]+/i)
    end
end

describe StringAnalyzer do 

    context "With valid input" do

        it "should pass when contains only one vowel and no other letters" do
            s1 = StringAnalyzer.new()
            expect(s1.has_vowels?("aaa")).to be true
            expect(s1.has_vowels?("eee")).to be true
            expect(s1.has_vowels?("iii")).to be true
            expect(s1.has_vowels?("o")).to be true
        end

        it "should pass when contains at least one vowel and some constants" do
            s1 = StringAnalyzer.new()
            expect(s1.has_vowels?("aklndt")).to be true
        end

        it "should pass when contains vowels, constants, numbers and punctution charecters" do
            s1 = StringAnalyzer.new()
            expect(s1.has_vowels?("abc123&??")).to be true
        end

        it "should pass when contains upper case vowels only" do
            s1 = StringAnalyzer.new()
            expect(s1.has_vowels?("AEIOU")).to be true
        end

        it "should pass when contains upper case and lower case vowels only" do
            s1 = StringAnalyzer.new()
            expect(s1.has_vowels?("AEIOUaeiou")).to be true
        end

        it "should pass when contains upper case and lower case vowels and constants" do
            s1 = StringAnalyzer.new()
            expect(s1.has_vowels?("ABCdEfgHi")).to be true
        end


    end


    context "With not valid input" do
      

        it "should pass when contains only constants" do
            s1 = StringAnalyzer.new()
            expect(s1.has_vowels?("klndt")).to be false
        end

        it "should pass when contains empty string" do
            s1 = StringAnalyzer.new()
            expect(s1.has_vowels?("")).to be false
        end

        it "should pass when contains numbers and punctution charecters only" do
            s1 = StringAnalyzer.new()
            expect(s1.has_vowels?("123%%%^&")).to be false
        end

        it "should pass when contains upper case constants only" do
            s1 = StringAnalyzer.new()
            expect(s1.has_vowels?("BCD")).to be false
        end

        it "should pass when contains white space charecters only" do
            s1 = StringAnalyzer.new()
            expect(s1.has_vowels?(" ")).to be false
        end

    end

end