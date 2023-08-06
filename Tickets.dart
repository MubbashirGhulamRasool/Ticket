import 'dart:io';
import 'dart:math';
bool programmStart = true;

class Ticket {
  int ticketNumber;
  DateTime issueDate;
  String customerName;

  Ticket(this.ticketNumber, this.issueDate, this.customerName);

  // Method to generate a unique ticket number
  static int generateTicketNumber() {
    // For simplicity, you can use the current date and time as the ticket number
    DateTime now = DateTime.now();
    String ticketStr = "${now.year}${now.month}${now.day}${now.hour}${now.minute}${now.second}";
    return int.parse(ticketStr);
  }
}

// Function to generate a new ticket
Ticket generateTicket(String customerName) {
  int ticketNumber = Ticket.generateTicketNumber();
  DateTime issueDate = DateTime.now();
  return Ticket(ticketNumber, issueDate, customerName);
}

login(name,email)
{
 if (name == "admin" && email == "admin@gmail.com") {
    print("Admin Login Success");
    programmStart = false;
    return true;
  } 
  else if(name == "user" && email == "1234"){
    print("User Login Success");
    programmStart = false;
    return true;
    
  }
  else {
     print("Login Fail");
     programmStart = false;
     return false;
     

  }
}

void main() {

print("Enter Your User Name"); 
String userName = stdin.readLineSync()!;
 print("Enter Your User Email");
String userEmail = stdin.readLineSync()!;

while (programmStart == true) {

bool loginSuccess = login(userName, userEmail);
if (loginSuccess == true) {


  print("Add New Ticket Press 1");
  print("View Ticket Press 2");
  print("Delete Ticket Press 3");
  print("Update New Ticket Press 4");
  
  int option = int.parse(stdin.readLineSync()!);
  switch (option) {
    case 1:
      print("Hello 1 $option");
      break;
       case 2:
      print("Hello 2 $option");
      break;
    default:
  }

  print("Enter Your Customer Name"); 
  String customerName = stdin.readLineSync()!;
  // String customerName = "John Doe";
  Ticket newTicket = generateTicket(customerName);

  // print("Ticket Number: ${newTicket.ticketNumber}");
  // print("Issue Date: ${newTicket.issueDate}");
  // print("Customer Name: ${newTicket.customerName}");


    List ticketList = [];

    List<Map> ticketTable = [
    {'ticketNumber': newTicket.ticketNumber,'issueDate':newTicket.issueDate,'customerName':newTicket.customerName, 'book': true},
  ];

  // usersEligibility.add({'ticketNumber': 164984498,'issueDate':2023-08-06,'customerName':'Ali', 'book': true});

  print('Customer Book: $ticketTable');
} else {
  print('Login Fail');
}
  
}



  

}
