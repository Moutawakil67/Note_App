class Note {
  int? id;
  String title;
  String content;
  String category;
  List<String> tags;
  DateTime createdAt;

  Note({
    this.id,
    required this.title,
    required this.content,
    required this.category,
    required this.tags,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'category': category,
      'tags': tags.join(','), 
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      category: map['category'],
      tags: map['tags'].toString().split(','),
      createdAt: DateTime.parse(map['createdAt']),
    );
  }
}
