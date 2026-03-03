class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Total Balance Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  colors: [Color(0xFF4E54C8), Color(0xFF8F94FB)],
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Balance",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Rs. 25,000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Recent Transactions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // Sample transaction list
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.fastfood, color: Colors.orange),
                    title: Text("Lunch"),
                    subtitle: Text("Food"),
                    trailing: Text("- Rs. 450"),
                  ),
                  ListTile(
                    leading: Icon(Icons.directions_bus, color: Colors.blue),
                    title: Text("Bus Fare"),
                    subtitle: Text("Transport"),
                    trailing: Text("- Rs. 120"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_bag, color: Colors.purple),
                    title: Text("Shopping"),
                    subtitle: Text("Clothes"),
                    trailing: Text("- Rs. 2,500"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
