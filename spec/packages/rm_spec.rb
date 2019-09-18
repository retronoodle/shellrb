require "packages/rm"
require "packages/touch"


describe Rm do 
  describe ".main" do 
    it "removes a specified file" do 
      Touch.main(["touch.test"])
      Rm.main(["touch.test"])
      expect(File.file?("touch.test")).to eq(false)
    end 
  end
end
