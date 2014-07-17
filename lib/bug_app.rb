class Bugs

  def initialize
    @user = {
      name: {
        first: "Elmer",
        last: "Fudd"
      },
      address: {
        street: "1062 Delaware St.",
        city: "Denver",
        "state" => "CO",
        zipcode: 80204
      }
    }
    @state_fish = {
      Hawaii: {name: "Humuhumunukunukuapua'a"},
      California: {name: "Golden Trout"},
      Colorado: {name: "Greenback Cutthroat Trout"},
      Utah: {name: "Bonneville Cutthroat Trout"},
      Wyoming: {name: "Cutthroat Trout"},
      South_Dakota: {name: "Walleye"},
      Nebraska: {name: "Channel Catfish"}
    }
    @states = %w(Hawaii California Colorado Utah Wyoming South_Dakota Nebraska)

    @bug = { first_name: "Elmer",
             last_name: "Fudd",
             street: "1062 Delaware St.",
             state: "CO",
             zipcode: 80204,
             "Hawaii" => "Humuhumunukunukuapua'a",
             states: %w(Hawaii California Colorado Utah Wyoming South_Dakota Nebraska)
    }
  end

  def greeting
    "Hi, my name is #{@bug[:first_name]} #{@bug[:last_name]}"
  end

  def street_address
    "I live on #{@bug[:street]}"
  end

  def state
    "I live in #{@bug[:state]}"
  end

  def zip_code
    "My zipcode is #{@bug[:zipcode]}"
  end

  def fish(state)
    @bug[state]
  end

  def states(letter)
    result = []
    @bug[:states].each do |state|
      p state[0]
      p letter
      if state[0] == letter
        result << state
      end
    end
  end

end