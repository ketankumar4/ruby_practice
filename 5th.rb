$account_number=0
class Account
  attr_accessor :name, :account_no, :balance
  def initialize(name,balance)
    @name=name
    $account_number=$account_number+1
    @account_no=$account_number
    @balance=balance
  end
  def withdraw(p1,trans_amount)
    p1.balance -= trans_amount
    puts "Account number: #{p1.account_no}"
    puts "Account holder name: #{p1.name}"
    puts "Account balance: #{p1.balance}"
    puts
  end
  def deposit(p2,trans_amount)
    p2.balance+=trans_amount
    puts "Account number: #{p2.account_no}"
    puts "Account holder name: #{p2.name}"
    puts "Account balance: #{p2.balance}"
  end
  def transfer(p1,p2,trans_amount)
    withdraw(p1,trans_amount)
    deposit(p2,trans_amount)
  end
end
=begin
class Transaction
  def initialize(acc_a,acc_b)
    @acc_a=acc_a
    @acc_b=acc_b
  end
  def debit(account,amount)
    account.balance -= amount
  end
  def credit(account,amount)
    account.balance+=amount
  end
  def transfer(amount)
    debit(@acc_a,amount)
    credit(@acc_b,amount)
  end
end
=end
if ARGV.length<1
  puts "Please provide an input"
  exit
else
pe1=ARGV[0]
per1=pe1.split(":")
p1_name=per1[0]
p1_bal=per1[1].to_i

pe2=ARGV[1]
per2=pe2.split(":")
p2_name=per2[0]
p2_bal=per2[1].to_i

pe3=ARGV[2]
per3=pe3.split(":")
trans_amount=per3[1].to_i

p1=Account.new(p1_name,p1_bal)
p2=Account.new(p2_name,p2_bal)
p1.transfer(p1,p2,trans_amount)
end
#trans=Transaction.new(p1,p2)
#trans.transfer(500)
