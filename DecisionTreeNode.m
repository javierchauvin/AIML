classdef DecisionTreeNode < handle
    %DecisionTreeNode class: Nodes of entropy-based binary decision tree.
    %   For 24-787 HW1, you need to complete the following functions in
    %   this file: find_decision_attrib, train, classify, entropy, and
    %   entropy_of_class.
    
    properties
        decision_attrib;        % the index of the attrib where split occurs
        available_attribs;      % the indices of available attributes
        decision;               % the class for all input data, if no split occours
        left_node;              % handle to the left leaf
        right_node;             % handle to the right leaf
        parent_node;            % handle to the parent leaf
    end
    methods
        function this = DecisionTreeNode()
            this.decision_attrib = -1;
            this.decision = -1;
            this.parent_node = [];
            this.available_attribs = [];
        end
        function find_decision_attrib(this,attrib,class)
            h = DecisionTreeNode.entropy_of_class(class);
            info_gain = zeros(size(this.available_attribs));
            
            % From available_attribs, you want to find the attribute that 
            % best splits the data with maximum info gain. 
            % You will need to split the data per each available attribute.            
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            % INSERT CODE HERE
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


        end
        function train(this,attrib,class)
        % Learn decision tree from training data
        % HINT: this will be a recursive function
            
            % If the examples are perfectly split, then assign the
            % appropriate class label and return from this node.
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            % INSERT CODE HERE
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            
            
            % If no available attributes remain, but the data is not
            % perfectly split, use the majority vote to assign the class
            % and return from this node.
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            % INSERT CODE HERE
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
                        
            
            % If the program makes it this far, then choose the "best"
            % attribute, split the data, and initiate the recursion.
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            % INSERT CODE HERE
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\      
            
            
        end
        function class = classify(this,attrib)
        % Label test data based on the given attributes
        % HINT: this will be a recursive function
        
            class = -ones(size(attrib,1),1); %initialize class labels to -1
            
            % Check to see if we are at a leaf node. If so, assign the correct label to the output.
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            % INSERT CODE HERE
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            
            
            % If we are not at leaf node, split the data and initiate recursion
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            % INSERT CODE HERE
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

            
        end
    end
    
    %% Static methods can be called without object instantiation
    methods (Static)
        function h = entropy(p)
        % Compute the entropy (h) given the vector of probabilities (p)
        
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            % INSERT CODE HERE
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            
        end
        function h = entropy_of_class(class)
        % Compute the entropy of (h) given a binary vector of labels 
        % (class), in which Joy = 1 and Despair = 0
            
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            % INSERT CODE HERE
            %\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            
        end
    end
end