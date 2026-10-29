import 'package:flutter/material.dart';

enum ItemStatus { lost, found, claimed }

extension ItemStatusX on ItemStatus {
  String get label => switch (this) {
    ItemStatus.lost => 'Lost',
    ItemStatus.found => 'Found',
    ItemStatus.claimed => 'Claimed',
  };

  Color get color => switch (this) {
    ItemStatus.lost => const Color(0xFFE53935),
    ItemStatus.found => const Color(0xFF00A86B),
    ItemStatus.claimed => const Color(0xFF6C757D),
  };

  IconData get icon => switch (this) {
    ItemStatus.lost => Icons.search_off_rounded,
    ItemStatus.found => Icons.check_circle_rounded,
    ItemStatus.claimed => Icons.verified_rounded,
  };
}

class LostItem {
  final int id;
  final String name;
  final String category;
  final String location;
  final ItemStatus status;
  final String date;
  final String description;
  final String contact;
  final IconData icon;
  final Color color;

  const LostItem({
    required this.id,
    required this.name,
    required this.category,
    required this.location,
    required this.status,
    required this.date,
    required this.description,
    required this.contact,
    required this.icon,
    required this.color,
  });
}

const List<LostItem> sampleItems = [
  LostItem(
    id: 1,
    name: 'iPhone 14 Pro',
    category: 'Phone',
    location: 'Main Library, 2nd Floor',
    status: ItemStatus.lost,
    date: '27 Oct 2026',
    description:
    'Deep purple iPhone 14 Pro with a transparent case and a Tesla coil sticker on the back. Lock screen shows a mountain wallpaper.',
    contact: 'Ali Raza • 0300-1234567',
    icon: Icons.phone_iphone_rounded,
    color: Color(0xFF7C4DFF),
  ),
  LostItem(
    id: 2,
    name: 'Dell XPS 13 Laptop',
    category: 'Laptop',
    location: 'CS Lab 3',
    status: ItemStatus.found,
    date: '28 Oct 2026',
    description:
    'Silver Dell XPS 13 found on a desk after the evening class. Has a "Nikola" name sticker on the lid. Kept at the Security Office.',
    contact: 'Security Office • Ext. 101',
    icon: Icons.laptop_mac_rounded,
    color: Color(0xFF2962FF),
  ),
  LostItem(
    id: 3,
    name: 'AirPods Pro Case',
    category: 'Audio',
    location: 'Cafeteria',
    status: ItemStatus.found,
    date: '26 Oct 2026',
    description:
    'White AirPods Pro charging case with both earbuds inside. Small scratch near the hinge.',
    contact: 'Cafeteria Desk • Ext. 115',
    icon: Icons.headphones_rounded,
    color: Color(0xFF00B8D4),
  ),
  LostItem(
    id: 4,
    name: 'Flipper Zero',
    category: 'Cyber Gadget',
    location: 'Cyber Security Lab',
    status: ItemStatus.lost,
    date: '25 Oct 2026',
    description:
    'Orange Flipper Zero multi-tool pentesting device with a black silicone case. Very important for a final-year project.',
    contact: 'Hamza Khan • 0311-7654321',
    icon: Icons.security_rounded,
    color: Color(0xFFFF6D00),
  ),
  LostItem(
    id: 5,
    name: 'Raspberry Pi 4 Kit',
    category: 'Cyber Gadget',
    location: 'Electronics Lab',
    status: ItemStatus.found,
    date: '24 Oct 2026',
    description:
    'Raspberry Pi 4 (8GB) in a red/white case with a heatsink fan, power adapter and 64GB SD card.',
    contact: 'Lab Assistant • Ext. 204',
    icon: Icons.memory_rounded,
    color: Color(0xFFD50000),
  ),
  LostItem(
    id: 6,
    name: 'ESP32 + Arduino Kit',
    category: 'Cyber Gadget',
    location: 'IoT Lab',
    status: ItemStatus.claimed,
    date: '22 Oct 2026',
    description:
    'Zip pouch with ESP32 DevKit, Arduino Uno, jumper wires and sensors. Returned to its owner.',
    contact: 'Claimed by Sara Ahmed',
    icon: Icons.developer_board_rounded,
    color: Color(0xFF00897B),
  ),
  LostItem(
    id: 7,
    name: 'Samsung Galaxy Watch 6',
    category: 'Wearable',
    location: 'Sports Ground',
    status: ItemStatus.lost,
    date: '27 Oct 2026',
    description:
    'Black Galaxy Watch 6 with a green sport strap. Lost during the cricket match.',
    contact: 'Usman Tariq • 0333-9876543',
    icon: Icons.watch_rounded,
    color: Color(0xFF43A047),
  ),
  LostItem(
    id: 8,
    name: 'Anker Power Bank 20000mAh',
    category: 'Accessory',
    location: 'Block A Corridor',
    status: ItemStatus.found,
    date: '28 Oct 2026',
    description:
    'Black Anker 20,000 mAh power bank with a short USB-C cable attached.',
    contact: 'Block A Office • Ext. 110',
    icon: Icons.battery_charging_full_rounded,
    color: Color(0xFFFFA000),
  ),
  LostItem(
    id: 9,
    name: 'Student ID Card',
    category: 'Documents',
    location: 'Admin Block',
    status: ItemStatus.found,
    date: '29 Oct 2026',
    description:
    'Tesla University student card (BS Electrical Engineering). Name visible: Ayesha Noor.',
    contact: 'Admin Reception • Ext. 100',
    icon: Icons.badge_rounded,
    color: Color(0xFF3949AB),
  ),
  LostItem(
    id: 10,
    name: 'Meta Quest 3 VR Headset',
    category: 'Cyber Gadget',
    location: 'Innovation Hub',
    status: ItemStatus.lost,
    date: '26 Oct 2026',
    description:
    'White Meta Quest 3 headset with both controllers in a grey travel case.',
    contact: 'Bilal Shah • 0321-1112223',
    icon: Icons.view_in_ar_rounded,
    color: Color(0xFF5E35B1),
  ),
  LostItem(
    id: 11,
    name: 'Mechanical Keyboard',
    category: 'Accessory',
    location: 'Computer Lab 1',
    status: ItemStatus.claimed,
    date: '20 Oct 2026',
    description:
    '65% RGB mechanical keyboard with blue switches. Collected by owner from the lab.',
    contact: 'Claimed by Zain Malik',
    icon: Icons.keyboard_rounded,
    color: Color(0xFF546E7A),
  ),
  LostItem(
    id: 12,
    name: 'Sandisk 128GB USB Drive',
    category: 'Storage',
    location: 'Auditorium',
    status: ItemStatus.found,
    date: '25 Oct 2026',
    description:
    'Red Sandisk 128GB USB 3.0 flash drive with a keychain ring. Contains presentation files.',
    contact: 'Auditorium Staff • Ext. 130',
    icon: Icons.usb_rounded,
    color: Color(0xFFC62828),
  ),
];