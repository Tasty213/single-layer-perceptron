classdef Neuron
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        weights
    end
    
    methods
        function obj = Neuron(weight_count)
            %UNTITLED Construct an neuron node with a specified number
            % of inputs
            obj.weights = rand(weight_count, 1);
        end
        
        function outputArg = predict(obj,inputs)
            %METHOD1 Predict output from inputs
            %   Use the neuron to perform a prediction
            
            outputArg = dot(obj.weights, inputs);
        end

        function outputArg = train(obj, inputs, outputExpected, outputActual, learningRate)
            delta = outputExpected - outputActual;
            obj.weights = obj.weights + (learningRate * delta * inputs);
            outputArg = obj;
        end

        function outputArg = predictAndTrain(obj, inputs, outputExpected, learningRate)
            %METHOD1 Train the neuron with a single piece of test data
            %   Run the training algorithim for a single piece of training
            %   data
            
            outputActual = obj.predict(inputs);
            outputArg = obj.train(inputs, outputExpected, outputActual, learningRate);
        end
    end
end

