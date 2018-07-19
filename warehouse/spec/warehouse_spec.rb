require 'warehouse'

describe Warehouse do
  subject(:warehouse) { Warehouse.new }

  it "displays the current location of the robot" do
    expect(warehouse.display).to eq [
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["X","-","-","-","-","-","-","-","-","-"]
    ]
  end

  it "moves the robot north by one position" do
    warehouse.move_robot("N")
    expect(warehouse.display).to eq [
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["X","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"]
    ]
  end

  it "moves the robot east by one position" do
    warehouse.move_robot("E")
    expect(warehouse.display).to eq [
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","-","-","-","-","-","-","-","-","-"],
      ["-","X","-","-","-","-","-","-","-","-"]
    ]
  end
end
