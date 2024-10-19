import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SoundButton extends StatefulWidget {
  final String soundUrl;
  final String buttonText;

  const SoundButton(
      {super.key, required this.soundUrl, required this.buttonText});

  @override
  State<SoundButton> createState() => _SoundButtonState();
}

class _SoundButtonState extends State<SoundButton> {
  final AudioPlayer _player = AudioPlayer();
  bool _isPlaying = false;

  Future<void> _toggleSound() async {
    if (_isPlaying) {
      await _player.pause();
    } else {
      await _player.play(UrlSource(widget.soundUrl));
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _toggleSound,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(widget.buttonText),
    );
  }
}
