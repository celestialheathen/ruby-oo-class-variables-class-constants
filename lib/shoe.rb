class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if ! BRANDS.include?(brand)
      BRANDS << brand
    end

  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def self.brands 
    BRANDS
  end

  
end

shoe1 = Shoe.new('Nike')
shoe2 = Shoe.new('UGG')
shoe3 = Shoe.new('Nike')

puts Shoe.brands

# describe 'Shoe' do 
#   describe 'BRANDS' do
#     # Think about it! When does the BRANDS constant need to be
#     # made aware of the brands of the shoes that are being created?

#     it 'keeps track of all brands' do
#       brands = ["Uggs", "Rainbow"]
#       brands.each do |brand|
#         Shoe.new(brand)
#       end

#       brands.each do |brand|
#         expect(Shoe::BRANDS).to include(brand)
#       end
#     end

#     it 'only keeps track of unique brands' do
#       Shoe::BRANDS.clear
#       brands = ["Uggs", "Rainbow", "Nike", "Nike"]
#       brands.each do |brand|
#         Shoe.new(brand)
#       end

#       expect(Shoe::BRANDS.size).to eq(3)
#     end
#   end
# end