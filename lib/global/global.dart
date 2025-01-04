
import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:drivers/models/car_model.dart';
import 'package:drivers/models/driver_data.dart';
import 'package:drivers/models/user_ride_request_information.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:geolocator/geolocator.dart';

import '../models/direction_details_info.dart';
import '../models/user_model.dart';

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
User? currentUser;

StreamSubscription<Position>? streamSubscriptionPosition;
StreamSubscription<Position>? streamSubscriptionDriverLivePosition;

AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

UserModel? userModelCurrentInfo;
CarModel? carModelCurrentInfo;
UserRideRequestInformation? userRideRequestInformation;

Position? driverCurrentPosition;

DriverData onlineDriverData = DriverData();

String? driverVehicleType = "";

String titleStarsRating = "Good";

RemoteMessage? savedRemoteMessage;