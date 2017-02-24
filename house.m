classdef house
  properties
    NumberOfRooms
    rooms     
  end
  
  methods
    function obj = house(Rooms)
      obj.rooms = Rooms;
      obj.NumberOfRooms = length(Rooms);
    end
    function list_rooms(obj)
      for ii = 1:obj.NumberOfRooms
        fprintf('- Room %d:\n', ii)
        obj.rooms(ii).return_state()
      end
    end
    function plot_a_day(obj)
      plot([1:10], rand(1,10))
    end
  end
end

