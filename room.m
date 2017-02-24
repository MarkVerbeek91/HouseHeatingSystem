classdef room
  properties (Access = protected )
    temperature
    temperature_desired
    name
  end
  
  properties (Constant, Hidden = true)
    c_water = 4152;
    m_water = 1000;
  end
  
  methods
    function obj = room(Name, Temperature, Temperature_desired)
      if ischar(Name) 
        obj.name = Name; 
      else
        error('Name not string'); 
      end
      if isnumeric(Temperature) 
        obj.temperature = Temperature; 
      else
        error('Temperature not numeric value'); 
      end
      if isnumeric(Temperature_desired) 
        obj.temperature_desired = Temperature_desired; 
      else
        error('Temperature not numeric value'); 
      end
    end
    function return_state(obj)
      fprintf('Roomname            : %s\n', obj.name);
      fprintf('Current temperature : %d\n', obj.temperature);
      fprintf('Desired temperature : %d\n', obj.temperature_desired);
    end
    
  end
end