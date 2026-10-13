import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String avatarUrl;
  final String userName;
  final String imageUrl;
  final String description;

  const PostCard({
    super.key,
    required this.avatarUrl,
    required this.userName,
    required this.imageUrl,
    required this.description,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 115, 0),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(widget.avatarUrl),
                ),
                const SizedBox(width: 10),
                Text(
                  widget.userName,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          Image.network(
            widget.imageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              height: 220,
              color: const Color.fromARGB(255, 0, 0, 0),
              child: const Icon(Icons.image_not_supported, size: 48),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
            child: Text(widget.description),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _liked = !_liked;
                  });
                },
                icon: Icon(
                  _liked ? Icons.bolt : Icons.bolt_outlined,
                  color: _liked ? const Color.fromARGB(255, 26, 255, 0) : const Color.fromARGB(255, 140, 0, 156),
                ),
              ),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('me dio pereza, vete pa los chats.')),
                  );
                },
                icon: const Icon(Icons.comment_outlined, color: Color.fromARGB(255, 140, 0, 156)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}