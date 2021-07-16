class Human {
  final String name;
   int balance;

  void pay({required int ammount, required Human to}) {
    balance = balance - ammount;
    to.balance = to.balance + ammount;
  }

  Human(this.name, this.balance);
}

void main() {
  Human sakil = Human("Sakil", 10000);
  Human jahangir = Human("Jahangir", 7000);
  print("Before payment");
  print("Sakil has ${sakil.balance}");
  print("Jahangir has ${jahangir.balance}");

  sakil.pay(ammount: 2000, to: jahangir);

  print("After payment");
  print("Sakil has ${sakil.balance}");
  print("Jahangir has ${jahangir.balance}");

  // sakil.name = "Manik";         ///Final properties can't be assigned more than once
  // print("Name is ${sakil.name}");  
  sakil.balance = 1500000;
  print("Balance is ${sakil.balance}");

}
