# class BankAccount{
#   constructor(balance, accountNumber){
#     this.balance = balance
#     this.accountNumber = accountNumber
# }
#}
# bank_account = {balance:100, account_number:1}
require 'pry'

class BankAccount
    attr_reader :account_number
    attr_accessor :balance
    # attr_writer :balance

    @@all = []

    def initialize(account_number, balance=100)
        @balance = balance
        @account_number = account_number

        @@all << self
    end

    def deposit(amount)
        @balance = @balance + amount
    end 

    def widthdraw(amount)
        @balance = @balance - amount
    end 

    def self.all
        @@all
    end 

    def self.all_balances
        @@all.map{|account| account.balance}
    end 

    # def balance
    #     @balance
    # end 

    # def balance=(new_balance)
    #     @balance = new_balance
    # end 

    # def account_number
    #     @account_number
    # end 

    # def account_number=(new_account_num)
    #     @account_number = new_account_num
    # end 


end 

ba = BankAccount.new(100, 1)
ba1 = BankAccount.new(150, 2)
ba2 = BankAccount.new(10000, 3)



binding.pry