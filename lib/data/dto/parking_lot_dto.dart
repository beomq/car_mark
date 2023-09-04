class ParkingLotDto {
  ParkingLotDto({
    this.getParkingInfo,
  });

  ParkingLotDto.fromJson(dynamic json) {
    getParkingInfo = json['GetParkingInfo'] != null
        ? GetParkingInfo.fromJson(json['GetParkingInfo'])
        : null;
  }
  GetParkingInfo? getParkingInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (getParkingInfo != null) {
      map['GetParkingInfo'] = getParkingInfo?.toJson();
    }
    return map;
  }
}

class GetParkingInfo {
  GetParkingInfo({
    this.listTotalCount,
    this.result,
    this.row,
  });

  GetParkingInfo.fromJson(dynamic json) {
    listTotalCount = json['list_total_count'];
    result = json['RESULT'] != null ? Result.fromJson(json['RESULT']) : null;
    if (json['row'] != null) {
      row = [];
      json['row'].forEach((v) {
        row?.add(Row.fromJson(v));
      });
    }
  }
  num? listTotalCount;
  Result? result;
  List<Row>? row;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['list_total_count'] = listTotalCount;
    if (result != null) {
      map['RESULT'] = result?.toJson();
    }
    if (row != null) {
      map['row'] = row?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Row {
  Row({
    this.parkingcode,
    this.parkingname,
    this.addr,
    this.parkingtype,
    this.parkingtypenm,
    this.operationrule,
    this.operationrulenm,
    this.tel,
    this.questatus,
    this.questatusnm,
    this.capacity,
    this.curparking,
    this.curparkingtime,
    this.payyn,
    this.paynm,
    this.nightfreeopen,
    this.nightfreeopennm,
    this.weekdaybegintime,
    this.weekdayendtime,
    this.weekendbegintime,
    this.weekendendtime,
    this.holidaybegintime,
    this.holidayendtime,
    this.saturdaypayyn,
    this.saturdaypaynm,
    this.holidaypayyn,
    this.holidaypaynm,
    this.fulltimemonthly,
    this.grpparknm,
    this.rates,
    this.timerate,
    this.addrates,
    this.addtimerate,
    this.busrates,
    this.bustimerate,
    this.busaddrates,
    this.busaddtimerate,
    this.daymaximum,
    this.lat,
    this.lng,
    this.shco,
    this.shlink,
    this.shtype,
    this.shetc,
  });

  Row.fromJson(dynamic json) {
    parkingcode = json['PARKING_CODE'];
    parkingname = json['PARKING_NAME'];
    addr = json['ADDR'];
    parkingtype = json['PARKING_TYPE'];
    parkingtypenm = json['PARKING_TYPE_NM'];
    operationrule = json['OPERATION_RULE'];
    operationrulenm = json['OPERATION_RULE_NM'];
    tel = json['TEL'];
    questatus = json['QUE_STATUS'];
    questatusnm = json['QUE_STATUS_NM'];
    capacity = json['CAPACITY'];
    curparking = json['CUR_PARKING'];
    curparkingtime = json['CUR_PARKING_TIME'];
    payyn = json['PAY_YN'];
    paynm = json['PAY_NM'];
    nightfreeopen = json['NIGHT_FREE_OPEN'];
    nightfreeopennm = json['NIGHT_FREE_OPEN_NM'];
    weekdaybegintime = json['WEEKDAY_BEGIN_TIME'];
    weekdayendtime = json['WEEKDAY_END_TIME'];
    weekendbegintime = json['WEEKEND_BEGIN_TIME'];
    weekendendtime = json['WEEKEND_END_TIME'];
    holidaybegintime = json['HOLIDAY_BEGIN_TIME'];
    holidayendtime = json['HOLIDAY_END_TIME'];
    saturdaypayyn = json['SATURDAY_PAY_YN'];
    saturdaypaynm = json['SATURDAY_PAY_NM'];
    holidaypayyn = json['HOLIDAY_PAY_YN'];
    holidaypaynm = json['HOLIDAY_PAY_NM'];
    fulltimemonthly = json['FULLTIME_MONTHLY'];
    grpparknm = json['GRP_PARKNM'];
    rates = json['RATES'];
    timerate = json['TIME_RATE'];
    addrates = json['ADD_RATES'];
    addtimerate = json['ADD_TIME_RATE'];
    busrates = json['BUS_RATES'];
    bustimerate = json['BUS_TIME_RATE'];
    busaddrates = json['BUS_ADD_RATES'];
    busaddtimerate = json['BUS_ADD_TIME_RATE'];
    daymaximum = json['DAY_MAXIMUM'];
    lat = json['LAT'];
    lng = json['LNG'];
    shco = json['SH_CO'];
    shlink = json['SH_LINK'];
    shtype = json['SH_TYPE'];
    shetc = json['SH_ETC'];
  }
  String? parkingcode;
  String? parkingname;
  String? addr;
  String? parkingtype;
  String? parkingtypenm;
  String? operationrule;
  String? operationrulenm;
  String? tel;
  String? questatus;
  String? questatusnm;
  num? capacity;
  num? curparking;
  String? curparkingtime;
  String? payyn;
  String? paynm;
  String? nightfreeopen;
  String? nightfreeopennm;
  String? weekdaybegintime;
  String? weekdayendtime;
  String? weekendbegintime;
  String? weekendendtime;
  String? holidaybegintime;
  String? holidayendtime;
  String? saturdaypayyn;
  String? saturdaypaynm;
  String? holidaypayyn;
  String? holidaypaynm;
  String? fulltimemonthly;
  String? grpparknm;
  num? rates;
  num? timerate;
  num? addrates;
  num? addtimerate;
  num? busrates;
  num? bustimerate;
  num? busaddrates;
  num? busaddtimerate;
  num? daymaximum;
  double? lat;
  double? lng;
  String? shco;
  String? shlink;
  String? shtype;
  String? shetc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['PARKING_CODE'] = parkingcode;
    map['PARKING_NAME'] = parkingname;
    map['ADDR'] = addr;
    map['PARKING_TYPE'] = parkingtype;
    map['PARKING_TYPE_NM'] = parkingtypenm;
    map['OPERATION_RULE'] = operationrule;
    map['OPERATION_RULE_NM'] = operationrulenm;
    map['TEL'] = tel;
    map['QUE_STATUS'] = questatus;
    map['QUE_STATUS_NM'] = questatusnm;
    map['CAPACITY'] = capacity;
    map['CUR_PARKING'] = curparking;
    map['CUR_PARKING_TIME'] = curparkingtime;
    map['PAY_YN'] = payyn;
    map['PAY_NM'] = paynm;
    map['NIGHT_FREE_OPEN'] = nightfreeopen;
    map['NIGHT_FREE_OPEN_NM'] = nightfreeopennm;
    map['WEEKDAY_BEGIN_TIME'] = weekdaybegintime;
    map['WEEKDAY_END_TIME'] = weekdayendtime;
    map['WEEKEND_BEGIN_TIME'] = weekendbegintime;
    map['WEEKEND_END_TIME'] = weekendendtime;
    map['HOLIDAY_BEGIN_TIME'] = holidaybegintime;
    map['HOLIDAY_END_TIME'] = holidayendtime;
    map['SATURDAY_PAY_YN'] = saturdaypayyn;
    map['SATURDAY_PAY_NM'] = saturdaypaynm;
    map['HOLIDAY_PAY_YN'] = holidaypayyn;
    map['HOLIDAY_PAY_NM'] = holidaypaynm;
    map['FULLTIME_MONTHLY'] = fulltimemonthly;
    map['GRP_PARKNM'] = grpparknm;
    map['RATES'] = rates;
    map['TIME_RATE'] = timerate;
    map['ADD_RATES'] = addrates;
    map['ADD_TIME_RATE'] = addtimerate;
    map['BUS_RATES'] = busrates;
    map['BUS_TIME_RATE'] = bustimerate;
    map['BUS_ADD_RATES'] = busaddrates;
    map['BUS_ADD_TIME_RATE'] = busaddtimerate;
    map['DAY_MAXIMUM'] = daymaximum;
    map['LAT'] = lat;
    map['LNG'] = lng;
    map['SH_CO'] = shco;
    map['SH_LINK'] = shlink;
    map['SH_TYPE'] = shtype;
    map['SH_ETC'] = shetc;
    return map;
  }
}

class Result {
  Result({
    this.code,
    this.message,
  });

  Result.fromJson(dynamic json) {
    code = json['CODE'];
    message = json['MESSAGE'];
  }
  String? code;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['CODE'] = code;
    map['MESSAGE'] = message;
    return map;
  }
}
