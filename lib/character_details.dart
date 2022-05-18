import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:shinobu/core/utils.dart';
import 'package:shinobu/models/character_builds_model.dart';

class CharacterDetails extends StatefulWidget {
  final Character detail;
  final Color color;
  const CharacterDetails({
    Key? key,
    required this.detail,
    required this.color,
  }) : super(key: key);

  @override
  State<CharacterDetails> createState() => _CharacterDetailsState();
}

class _CharacterDetailsState extends State<CharacterDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(Utils.capitalizeAll(
          widget.detail.name.replaceAll('\n', ' '),
        )),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: widget.detail.builds.length,
        itemBuilder: (context, index) {
          final artifacts = widget.detail.builds[index].artifacts;
          final equipment = widget.detail.builds[index].equipment;
          final isOptimal = widget.detail.builds[index].optimal;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                index == 0
                    ? Center(
                        child: LimitedBox(
                          maxHeight: 399.9,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.asset(
                              Utils.toImageAssetName(widget.detail.name),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
                Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Badge(badgeColor: widget.color),
                      ),
                      Text(
                        widget.detail.builds[index].role
                            .toString()
                            .toUpperCase(),
                        style: TextStyle(
                          fontSize: 18,
                          color: widget.color,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      isOptimal
                          ? Text(
                              ' (optimal)',
                              style: TextStyle(
                                fontSize: 18,
                                color: widget.color,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Artifacts',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: artifacts
                      .map((a) => Text(
                            a.trim().replaceAll('*', '').replaceAll('~=', ' |'),
                          ))
                      .toList(),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Equipment',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: equipment
                      .map((e) => Text(
                            e.trim().replaceAll('*', '').replaceAll('~=', '⇆'),
                          ))
                      .toList(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
