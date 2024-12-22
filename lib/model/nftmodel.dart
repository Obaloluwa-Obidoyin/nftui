class NftModel {
  final String img;
  final String name;
  final String description;
  final String price;
  NftModel(
      {required this.img,
      required this.name,
      required this.description,
      required this.price});
}

final List<NftModel> getNft = [
  NftModel(
    img: 'assets/4.png',
    name: 'Nft 0010',
    description:
        """It gets lonely in the swamp sometimes. That's why every ape should have a four-legged companion. To curl up at your feet. To bring you a beer. To fire a missile launcher at that bastard Jimmy the Monkey.That's why we've started the Bored Ape Kennel Club, and why we're offering up a dog NFT for adoption to every single member of the BAYC – for free (you only pay gas).""",
    price: '8.40',
  ),
  NftModel(
    img: 'assets/5.png',
    name: 'Nft 0110',
    description:
        """It gets lonely in the swamp sometimes. That's why every ape should have a four-legged companion. To curl up at your feet. To bring you a beer. To fire a missile launcher at that bastard Jimmy the Monkey.That's why we've started the Bored Ape Kennel Club, and why we're offering up a dog NFT for adoption to every single member of the BAYC – for free (you only pay gas).""",
    price: '33.40',
  ),
  NftModel(
    img: 'assets/3.png',
    name: 'Nft 1010',
    description:
        """It gets lonely in the swamp sometimes. That's why every ape should have a four-legged companion. To curl up at your feet. To bring you a beer. To fire a missile launcher at that bastard Jimmy the Monkey.That's why we've started the Bored Ape Kennel Club, and why we're offering up a dog NFT for adoption to every single member of the BAYC – for free (you only pay gas).""",
    price: '6.40',
  ),
  NftModel(
    img: 'assets/2.png',
    name: 'Nft 1110',
    description:
        """It gets lonely in the swamp sometimes. That's why every ape should have a four-legged companion. To curl up at your feet. To bring you a beer. To fire a missile launcher at that bastard Jimmy the Monkey.That's why we've started the Bored Ape Kennel Club, and why we're offering up a dog NFT for adoption to every single member of the BAYC – for free (you only pay gas).""",
    price: '70.40',
  ),
  NftModel(
    img: 'assets/1.png',
    name: 'Nft 1000',
    description:
        """It gets lonely in the swamp sometimes. That's why every ape should have a four-legged companion. To curl up at your feet. To bring you a beer. To fire a missile launcher at that bastard Jimmy the Monkey.That's why we've started the Bored Ape Kennel Club, and why we're offering up a dog NFT for adoption to every single member of the BAYC – for free (you only pay gas).""",
    price: '20.40',
  )
];
