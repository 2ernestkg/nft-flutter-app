import 'package:flutter/material.dart';
import 'package:nftapp/components/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const NftCard(
      imagePath: 'assets/images/apiens_1.png',
    );
  }
}
