import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  Future fetchData() async {
    final response = await http.get(
      
      Uri.parse('https://dummyjson.com/posts'),
    
    );
    final data = jsonDecode(response.body);
   
    print(data['posts'][0]['title']);
  }
}

void main () async{
  await ApiService().fetchData();
}
