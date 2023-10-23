require './script.rb'

describe "Caesars Cipher" do
    it 'returns the correct word with the default shift' do
        expect(caesar_cipher('oljxk bjmfob')).to eql('roman empire')
    end
    it 'works with uppercase' do
        expect(caesar_cipher('Oljxk Bjmfob')).to eql('Roman Empire')
    end
    it 'works with a custom shift' do
        expect(caesar_cipher('Ifdre Vdgziv',9)).to eql('Roman Empire')
    end
    it 'goes around the alphabet' do
        expect(caesar_cipher('xyz')).to eql('abc')
    end
    it 'ignores numbers but still works' do
        expect(caesar_cipher('123xyz')).to eql('123abc')
    end
    it 'works with symbols' do
        expect(caesar_cipher('Tlt?!')).to eql('Wow?!')
    end
    it 'works with spaces' do
        expect(caesar_cipher('Ebiil qebob')).to eql('Hello there')
    end
end