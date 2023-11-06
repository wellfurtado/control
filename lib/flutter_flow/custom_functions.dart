import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? somar(List<double>? numeros) {
  if (numeros == null || numeros.isEmpty) {
    return 0;
  }

  double soma = 0;
  for (double elemento in numeros) {
    soma += elemento;
  }
  return soma;
}
