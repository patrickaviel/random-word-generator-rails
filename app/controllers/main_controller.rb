class MainController < ApplicationController
    before_action :set_attempt

    def set_attempt
        # if session attempts is null give the value of 0
        if session[:attempts] == nil
            session[:attempts] = 0
        end
    end

    def index
    end

    def generate
        # call asign method
        assign
        # render index
        render :index
    end

    def assign
        # create array containing letters
        array = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H','I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S','T', 'U', 'V', 'W', 'X', 'Y', 'Z']
        gen_word = nil
        gen_word = Array.new(10)  
        # loop over the number of elements in the gen_word variable
        for i in 0..gen_word.length
            # get random value from the array and append to the gen_word variable
            gen_word.append(array.at(rand array.length+2))
        end
        # concatenate or join all the array values in the gen_word variable
        @word = gen_word.join("")
        # give number variable value of the session attempts
        number = session[:attempts]
        # add 1 to the current value of number
        number += 1
        # assign number variable value to session attempt
        session[:attempts] = number
    end


end