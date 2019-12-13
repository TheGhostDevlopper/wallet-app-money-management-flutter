import 'package:wallet_exe/data/dao/spend_limit_table.dart';
import 'package:wallet_exe/enums/spend_limit_type.dart';

class SpendLimit {
  int id; // auto generate & unique

  //int idUserAccount;
  int amount;
  SpendLimitType type;

  SpendLimit({
    //this.idUserAccount,
    this.id,
    this.amount,
    this.type
  });

  // getter
  Map<String, dynamic> toMap() {
    return {
      //'idUserAccount': idUserAccount,
      SpendLimitTable().id: id,
      SpendLimitTable().amount : amount,
      SpendLimitTable().type : type,
    };
  }
  // setter
  SpendLimit.fromMap(Map<String, dynamic> map) {
      //idUserAccount: map['idUserAccount'],
      id = map[SpendLimitTable().id];
      amount= map[SpendLimitTable().amount];
      type= SpendLimitType.valueOf(map[SpendLimitTable().type]);
  }
}