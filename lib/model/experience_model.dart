class ExperienceModel {
  final String title;
  final String jobDesc;
  final String yearWork;
  final List<String> description;

  ExperienceModel({
    required this.title,
    required this.jobDesc,
    required this.yearWork,
    required this.description,
  });
}

List<ExperienceModel> experienceModels = [
  ExperienceModel(
    title: 'PT Kolaborasi Sehat Indonesia',
    jobDesc: 'Flutter Developer',
    yearWork: 'Desember 2022 - Sekarang',
    description: [
      'Fitur New UI Register',
      'Fitur Tambah Teman',
      'Fitur Additional Booking',
      'Fitur Beli Tweak Pass',
      'Fitur New Booking Class, Gym, Open Class & Sewa Ruang dengan Tweak Pass',
      'Fitur Scan QR Code Booking Class, Gym, Open Class, Sewa Ruang',
      'Fitur Cancel Booking',
      'Fitur Checkin Booking Class, Gym, Open Class, Sewa Ruang',
      'Fitur New Edit Profile',
      'Fitur Payment QRIS, Admin Feedback',
      'Maintance App Tweak & Bug Fixing',
    ],
  ),
  ExperienceModel(
    title: 'Prodia for doctor (Gits Indonesia)',
    jobDesc: 'Flutter Developer (Freelance)',
    yearWork: '22 Januari 2024 - Febuari 2024',
    description: [
      'Membuat Fitur teleconsultation dengan menggunakan agora video dan chat',
    ],
  ),
  ExperienceModel(
    title: 'Privacy Purse (PT Vodjo Teknologi Indonesia)',
    jobDesc: 'Flutter Developer (Freelance)',
    yearWork: 'Oktober 2023 - 13 Juni 2024',
    description: [
      'Fitur Register',
      'Fitur Bill',
      'Fitur Grup',
      'Fitur Profile',
      'Fitur Delete Account',
      'Fix Transaction',
    ],
  ),
  ExperienceModel(
    title: 'Alterra Academy',
    jobDesc: 'Flutter Developer Mentor Batch 4, 5 & 6 (Freelance)',
    yearWork: 'Februari 2023 - Juli 2024',
    description: [
      'Mentor Flutter Developer pada Program MSIB (Magang dan Studi Independen Bersertifikat) Kampus Merdeka oleh Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia. Melakukan Meet Online dan memberikan materi flutter seperti dart dasar, function, widget, state management, internet dan masih banyak lainnya',
    ],
  ),
  ExperienceModel(
    title: 'Jagoan Apps - Jago Coffee (PT Vodjo Teknologi Indonesia)',
    jobDesc: 'Flutter Developer (Freelance)',
    yearWork: 'Desember 2022 - April 2023',
    description: [
      'Fitur Checkout Stock Barang',
      'Fitur Settlement',
      'Fitur Pendapatan',
      'Fitur Riwayat Checkout & Settlement',
      'Bug Fix',
    ],
  ),
  ExperienceModel(
    title: 'Digiresto & Digimitra (PT SiCepat Ekpres Indonesia)',
    jobDesc: 'Flutter Developer (Layoff)',
    yearWork: 'September 2021 - Juni 2022',
    description: [
      'Fitur Layanan Pesanan Makanan',
      'Fitur Profile',
      'Fitur Print Struk Pembayaran Pesanan',
      'Bug Fix',
    ],
  ),
  ExperienceModel(
    title: 'PT Gits Indonesia',
    jobDesc: 'Flutter Developer',
    yearWork: 'November 2019 - September 2021',
    description: [
      'Mengerjakan aplikasi untuk client, dengan menggunakan berbagai metode dan library pada flutter'
    ],
  ),
];
