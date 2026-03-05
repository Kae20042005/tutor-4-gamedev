# Tutorial 4 - Basic 2D Level Design

## Tilemap Baru
Tilemap baru yang digunakan pada level 2 adalah platform batu.

## Rintangan Baru
Rintangan baru yang ditambahkan pada level 2 adalah `FallingSaw`. Rintangan ini berupa saw yang bertipe `RigidBody2D` dengan menggunakan `AnimatedSprite2D` untuk animasi sawnya. Selanjutnya, ada pengembangan pada script `Area_2D.gd` di mana ada penambahan variabel `bodyName` untuk penamaan objek body.

## Karakter Baru
Ada penambahan karakter baru pada level 2 yaitu `PlayerYellow` yang merupakan variasi alien berwarna kuning. Untuk animasi dari karakter baru, menggunakan `AnimatedSprite2D` dengan variasi animasi Idle, Walk, Jump, dan Climb.

## Scene Baru: Ladder
Pada level 2, ada penambahan scene Ladder yang apabila player menginjak scene ini, player akan melakukan action Climb. Implementasi scene ada di file `Ladder.tscn`. Ketika berada di action climb, pemain dapat bergerak keatas untuk naik dan bergerak kebawah untuk turun. Lalu, juga ada penambahan animasi memanjat untuk player.

### Referensi
- How to Move and Animate a 2D Sprite using AnimationTree in Godot: [link youtube](https://youtu.be/Xf2RduncoNU?si=2TZb_2TQ2EQFgaJJ)
