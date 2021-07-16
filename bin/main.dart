class Human {
  late String name;
  late int balance;

  void pay({required int ammount, required Human to}) {
    balance = balance - ammount;
    to.balance = to.balance + ammount;
  }

  Human(String name, int balance) {
    this.name = name;
    this.balance = balance;
  }
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
}

