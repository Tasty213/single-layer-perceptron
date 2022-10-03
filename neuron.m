classdef Neuron
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        weights
    end
    
    methods
        function obj = Neuron(weight_count)
            %UNTITLED Construct an instance of this class
            %   Detailed explanation goes here
            obj.weights = rand(weight_count, 1);
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.weights + inputArg;
        end
    end
end

