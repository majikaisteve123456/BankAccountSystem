package com.Bean;

public class BankAccount implements java.io.Serializable
{
   private String username;
   private double balance;
   public BankAccount()
   {
	    super();
   }
   public BankAccount(String username,double balance)
   {
	
	   this.username=username;
	   this.balance=balance;
   }
   public String getusername()
   {
	   return username;
   }
   public void setusername(String username)
   {
	    this.username=username;   
   }
   public double getbalance()
   {
	   return balance;
   }
   public void setbalance(double amount)
   {
	   balance=amount;
	   
   }
}
