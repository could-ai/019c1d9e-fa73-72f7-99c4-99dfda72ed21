import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sports News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SportsNewsPage(),
      },
    );
  }
}

class NewsItem {
  final String title;
  final String description;
  final String category;
  final String date;

  const NewsItem({
    required this.title,
    required this.description,
    required this.category,
    required this.date,
  });
}

class SportsNewsPage extends StatelessWidget {
  const SportsNewsPage({super.key});

  final List<NewsItem> newsList = const [
    NewsItem(
      title: 'Mauro Zijlstra ke Persija Jakarta',
      description: 'Perpindahan Mauro Zijlstra ke Persija Jakarta menjadi perbincangan hangat, menambah daftar pemain diaspora Timnas Indonesia di Liga Super 2025/2026.',
      category: 'Sepak Bola',
      date: '02 Feb 2026',
    ),
    NewsItem(
      title: 'Agenda Besar Olahraga 2026',
      description: 'Tahun 2026 dipenuhi ajang besar: Olimpiade Musim Dingin di Italia, Piala Dunia 2026 di AS/Kanada/Meksiko, dan Asian Games 2026 di Jepang.',
      category: 'Global',
      date: 'Feb 2026',
    ),
    NewsItem(
      title: 'Indonesia Juara Umum Thailand Masters',
      description: 'Indonesia berhasil menguasai Thailand Masters 2026 dengan menjadi juara umum, menunjukkan dominasi di awal tahun.',
      category: 'Bulu Tangkis',
      date: 'Feb 2026',
    ),
    NewsItem(
      title: 'Persiapan ASEAN Para Games 2026',
      description: 'Indonesia menyiapkan strategi baru untuk mempertahankan gelar juara umum pada ajang ASEAN Para Games mendatang.',
      category: 'Para Games',
      date: 'Jan 2026',
    ),
    NewsItem(
      title: 'Indonesia Masters 2026',
      description: 'Ajang ini dijadikan pemanasan menuju Indonesia Open 2026 dengan harga tiket yang lebih terjangkau untuk penggemar.',
      category: 'Bulu Tangkis',
      date: 'Jan 2026',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Isu Hangat Olahraga'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          final news = newsList[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Chip(
                        label: Text(
                          news.category,
                          style: const TextStyle(fontSize: 10),
                        ),
                        visualDensity: VisualDensity.compact,
                        padding: EdgeInsets.zero,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      Text(
                        news.date,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    news.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    news.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
