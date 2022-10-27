class BankAccount

    def initialize(name, pin)
        @name = name
        @pin =pin
        @balance = 0
        @attempts = 0
    end 

   def name; @name; end
   def pin; @pin; end
   def balance; @balance; end
   def attempts; @attempts; end

    def set_balance(symbol, amount)
        eval("@balance #{symbol}= #{amount}")
    end

    def increment_attempts
        @attempts += 1
    end

    class ATM < BankAccount

        def verified?(pin)
            if self.pin == pin
                true

            else
                increment_attempts
                if attempts >= 3
                    self.freeze
                end
                false
            end
        end

        private

        def get_balance
            puts "#{name} Your balance is #{balance}"
                puts "You are fucking broke" if balance <= 0
        end

            def withdraw(amount)
                puts "*** WARNING *** You have overdrawn your account" if amount > balance
                set_balance("-", amount)
                get_balance
            end

            def deposit(amount)
                puts "where the hell did you get all that money" if amount > 100000
                set_balance("+" , amount)
                get_balance
            end

            alias_method :d, :deposit
            alias_method :w, :withdraw
            alias_method :gb, :get_balance

        end


        my_account = ATM.new("Kwame", 2010)

        while !my_account.frozen?
            puts "What is your pin?"

            pin = gets.chomp.to_i

            if my_account.verified?(pin)
                puts "What would you like to do today?"
                command = gets.chomp.to_sym
                
                if my_account.respond_to? command, true

                    if command == :w || command == :d ... then
                        puts "what amount?"
                        amount = gets.chomp.to_i
                    #     my_account.send command, amount
                    # else

                    #     my_account.send command
                    # end
                
                else
                    puts "That is not a command"
                    

                
                   
                end
            end
        end
        
    

        puts "You are a fucking hacker, get out of here" if my_account.frozen?
        end 
    





            
            

    end
