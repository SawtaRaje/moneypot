import 'package:flutter/material.dart';
import 'package:intl/date_time_patterns.dart';
import 'package:intl/intl.dart';
import 'package:moneypot/models/all_panna.dart';
import 'package:moneypot/models/amount_input.dart';
import 'package:moneypot/models/ank_star_panna.dart';
import 'package:moneypot/models/charts.dart';
import 'package:moneypot/models/cp_patti.dart';
import 'package:moneypot/models/family_jodi_chart.dart';
import 'package:moneypot/models/family_panna.dart';
import 'package:moneypot/models/five_min_game_result.dart';
import 'package:moneypot/models/number_input.dart';
import 'package:moneypot/models/touch_panna.dart';

import '../models/categories.dart';
import '../models/numbers.dart';
import '../models/componeis.dart';
import '../models/buttons.dart';

var dt = DateTime.now();


const NUMBER_LIST= const [
  
  Numbers(id: '1',number:'1', sp: ['128','137','146','236','245','290','380','470','489','560','678','579',], dp: ['100','119','155','227','335','344','399','588','669',], tp: ['777']),
  Numbers(id: '2',number:'2', sp: ['129','138','147','156','237','246','345','390','480','570','679','589',], dp: ['200','110','228','255','336','499','660','688','778',], tp: ['444']),
  Numbers(id: '3',number:'3', sp: ['120','139','148','157','238','247','256','346','490','580','670','689',], dp: ['300','166','229','337','355','445','599','779','788',], tp: ['111']),
  Numbers(id: '4', number:'4',sp: ['130','149','158','167','239','248','257','347','356','590','680','789',], dp: ['400','112','220','266','338','446','455','699','770',], tp: ['888']),
  Numbers(id: '5', number:'5',sp: ['140','159','168','230','249','258','267','348','357','456','690','780',], dp: ['500','113','122','177','339','366','447','799','889',], tp: ['555']),
  Numbers(id: '6', number:'6',sp: ['123','150','169','178','240','259','268','349','358','367','457','790',], dp: ['600','114','277','330','448','466','556','880','899',], tp: ['222']),
  Numbers(id: '7', number:'7',sp: ['124','160','179','250','269','278','340','359','368','458','467','890',], dp: ['700','115','133','188','223','377','449','557','566',], tp: ['999']),
  Numbers(id: '8', number:'8',sp: ['125','134','170','189','260','279','350','369','378','459','567','468',], dp: ['800','116','224','233','288','440','477','558','990',], tp: ['666']),
  Numbers(id: '9', number:'9',sp: ['126','135','180','234','270','289','360','379','450','469','478','568',], dp: ['900','117','144','199','225','388','559','577','667',], tp: ['333']),
  Numbers(id: '0',number:'0', sp: ['127','136','145','190','235','280','370','389','479','460','569','578',], dp: ['550','668','244','299','226','488','550','677','118',], tp: ['000']),
];

const TOUCH_PANNA= const [
  TouchPanna(id: 'TP1',number:'1 Touch Panna', one: ['146','128','137','119','155','100',], two: ['128','236','245','290','227'], three: ['137','236','380','335','344','399'], four: ['146','245','470','489','344',], five: ['245','560','579','155','335','588',], six: ['146','236','560','678','669',], seven: ['137','470','579','678','227','777',], eight: ['128','380','489','678','588',], nine: ['290','489','579','119','399','669',], zero: ['290','380','470','560','100',],),
  TouchPanna(id: 'TP2',number:'2 Touch Panna', one: ['129','138','147','156','110',], two: ['129','237','246','228','255','200'], three: ['138','237','345','390','336'], four: ['147','246','345','480','499','444',], five: ['156','345','570','589','255',], six: ['156','246','679','336','660','688',], seven: ['147','237','570','679','778',], eight: ['138','480','589','228','688','778',], nine: ['129','390','589','679','499',], zero: ['390','480','570','110','200','660',],),
  TouchPanna(id: 'TP3',number:'3 Touch Panna', one: ['120','139','148','157','111','166'], two: ['120','238','247','256','229'], three: ['139','238','346','337','355','300'], four: ['148','247','346','490','445',], five: ['157','256','580','355','445','599',], six: ['256','346','670','689','166',], seven: ['157','247','670','337','779','788',], eight: ['148','238','580','689','788',], nine: ['139','490','689','229','599','779',], zero: ['120','490','580','670','300',],),
  TouchPanna(id: 'TP4', number:'4 Touch Panna',one: ['130','149','158','167','112',], two: ['239','248','257','112','220','266'], three: ['130','239','347','356','338'], four: ['149','248','347','400','446','455',], five: ['158','257','356','590','455',], six: ['167','356','680','266','446','699',], seven: ['167','257','347','789','770',], eight: ['158','248','680','789','338','888',], nine: ['149','239','590','789','699',], zero: ['130','590','680','220','400','770',],),
  TouchPanna(id: 'TP5', number:'5 Touch Panna',one: ['140','159','168','122','113','177',], two: ['230','249','258','267','122'], three: ['230','348','357','113','339','366'], four: ['140','249','348','456','447',], five: ['159','258','357','456','500','555',], six: ['168','267','456','690','366',], seven: ['267','357','780','177','447','799',], eight: ['168','258','348','780','889',], nine: ['159','249','690','339','799','889',], zero: ['140','230','690','780','500',],),
  TouchPanna(id: 'TP6', number:'6 Touch Panna',one: ['123','150','169','178','114',], two: ['123','240','259','268','222','277'], three: ['123','349','358','367','330'], four: ['240','349','457','114','448','466',], five: ['150','259','358','457','556',], six: ['169','268','367','466','556','600',], seven: ['178','367','457','790','277',], eight: ['178','268','358','448','899','880',], nine: ['169','259','349','790','899',], zero: ['150','240','790','330','600','880',],),
  TouchPanna(id: 'TP7', number:'7 Touch Panna',one: ['124','160','179','115','133','188',], two: ['124','250','269','278','223'], three: ['340','359','368','133','223','377'], four: ['124','340','458','467','449',], five: ['250','359','458','115','557','566',], six: ['160','269','368','467','566',], seven: ['179','278','467','377','557','700',], eight: ['278','368','458','890','188',], nine: ['179','269','359','890','449','999',], zero: ['160','250','340','890','700',],),
  TouchPanna(id: 'TP8', number:'8 Touch Panna',one: ['125','134','170','189','116',], two: ['125','260','279','224','233','288'], three: ['134','350','369','378','233'], four: ['134','459','468','224','440','477',], five: ['125','350','459','567','558',], six: ['260','369','468','567','116','666',], seven: ['170','279','378','567','477',], eight: ['189','378','468','288','558','800',], nine: ['189','279','369','459','990',], zero: ['170','260','350','440','800','990',],),
  TouchPanna(id: 'TP9', number:'9 Touch Panna',one: ['126','135','180','117','144','199',], two: ['126','234','270','289','225'], three: ['135','234','360','379','388','333'], four: ['234','450','469','478','144',], five: ['135','450','568','225','577','559',], six: ['126','360','469','568','667',], seven: ['270','379','478','117','577','667',], eight: ['180','289','478','568','388',], nine: ['289','379','469','199','559','900',], zero: ['180','270','360','450','900',],),
  TouchPanna(id: 'TP0',number:'0 Touch Panna', one: ['127','136','145','190','118',], two: ['127','235','280','244','226','299'], three: ['136','235','370','389','334'], four: ['145','460','479','244','334','488',], five: ['145','235','569','578','550',], six: ['136','460','569','226','677','668',], seven: ['127','370','479','578','677',], eight: ['280','389','578','118','488','668',], nine: ['190','389','479','569','299',], zero: ['190','280','370','460','550','000',],),
];

// const CHARTS= const [
//   Charts(id: 'C1', number:'1', chart30: ['146','380','470',], chart40: ['128','236','245','290',], chart50: ['137','146','380','470','579',], chart70: ['128','236','245','290','489','560','678',], chart56: ['236', '245', '489', '579', '678'], chart64:  ['128', '137', '146', '290', '380', '470', '560'],),
//   Charts(id: 'C2', number:'2', chart30: ['138','147','570',], chart40: ['129','390','589','679',], chart50: ['138','147','246','480','570',], chart70: ['129','156','237','345','390','589','679',], chart56: ['237', '246', '345', '479', '589'], chart64:  ['129', '138', '147', '156', '390', '480', '570']),
//   Charts(id: 'C3', number:'3', chart30: ['148','247','580',], chart40: ['256','346','670','689',], chart50: ['139','148','157','247','580',], chart70: ['120','238','256','346','490','670','689',], chart56: ['238', '247', '256', '346', '689'], chart64:  ['120', '139', '148', '157', '490', '580', '670'],),
//   Charts(id: 'C4', number:'4', chart30: ['149','158','257',], chart40: ['130','239','347','356',], chart50: ['149','158','248','257','680',], chart70: ['130','167','239','347','356','590','789',], chart56: ['239', '248', '257', '347', '356', '789'], chart64:  ['130', '149', '158', '167', '590', '680'],),
//   Charts(id: 'C5', number:'5', chart30: ['168','249','258',], chart40: ['140','230','690','780',], chart50: ['159','168','249','258','357',], chart70: ['140','230','267','348','456','690','780',], chart56: ['249', '258', '267', '348', '357', '456'], chart64:  ['140', '159', '168', '230', '690', '780'],),
//   Charts(id: 'C6', number:'6', chart30: ['169','259','358',], chart40: ['178','367','457','790',], chart50: ['169','240','259','268','358',], chart70: ['123','150','178','349','367','457','790',], chart56: ['259', '268', '349', '358', '367', '457'], chart64:  ['123', '150', '169', '178', '240', '790'],),
//   Charts(id: 'C7', number:'7', chart30: ['250','269','368',], chart40: ['124','340','458','467',], chart50: ['179','250','269','359','368',], chart70: ['124','160','278','340','458','467','890',], chart56: ['269', '278', '359', '368', '458', '467'], chart64:  ['124', '160', '179', '250', '340', '890'],),
//   Charts(id: 'C8', number:'8', chart30: ['279','350','369',], chart40: ['125','134','170','189',], chart50: ['260','279','350','369','468',], chart70: ['125','134','170','189','378','459','567',], chart56: ['279', '369', '378', '459', '468', '567'], chart64:  ['125', '134', '170', '189', '260', '350'],),
//   Charts(id: 'C9', number:'9', chart30: ['270','360','469',], chart40: ['180','289','478','568',], chart50: ['135','270','360','379','469',], chart70: ['126','180','234','289','450','478','568',], chart56: ['234', '289', '379', '469', '478', '568'], chart64:  ['126', '135', '180', '270', '360', '450'],),
//   Charts(id: 'C0', number:'0', chart30: ['136','370','479',], chart40: ['145','235','569','578',], chart50: ['136','280','370','460','479',], chart70: ['127', '145', '190', '235', '389', '569', '578'], chart56: ['235', '389', '479', '569', '578'], chart64:  ['127', '136', '145', '190', '280', '370', '460'],),
// ];

const CHARTS= const [
Charts(id: 'C1',name:'30`S Chart', one:['146','380','470',] , two: ['138','147','570',], three:['148','247','580',], four: ['149','158','257',], five:['168','249','258',], six: ['169','259','358',], seven: ['250','269','368',], eight: ['279','350','369',], nine: ['270','360','469',], zero: ['136','370','479',],),
Charts(id: 'C1',name:'40`S Chart', one:['128','236','245','290',] , two:['129','390','589','679',], three:['256','346','670','689',], four:['130','239','347','356',], five:['140','230','690','780',], six: ['178','367','457','790',], seven:['124','340','458','467',], eight:['125','134','170','189',],nine:['180','289','478','568',], zero:['145','235','569','578',],),
Charts(id: 'C1',name:'50`S Chart', one:['137','146','380','470','579',] , two:['138','147','246','480','570',], three:['139','148','157','247','580',], four:['149','158','248','257','680',], five:['159','168','249','258','357',], six:['169','240','259','268','358',], seven:['179','250','269','359','368',], eight:['260','279','350','369','468',], nine:['135','270','360','379','469',], zero:['136','280','370','460','479',],),
Charts(id: 'C1',name:'70`S Chart', one:['128','236','245','290','489','560','678',] , two:['129','156','237','345','390','589','679',], three:['120','238','256','346','490','670','689',], four:['130','167','239','347','356','590','789',], five: ['140','230','267','348','456','690','780',], six:['123','150','178','349','367','457','790',], seven:['124','160','278','340','458','467','890',], eight:['125','134','170','189','378','459','567',], nine:['126','180','234','289','450','478','568',], zero: ['127', '145', '190', '235', '389', '569', '578'],),
Charts(id: 'C1',name:'56`S Chart', one:['236', '245', '489', '579', '678'] , two:['237', '246', '345', '479', '589'], three:['238', '247', '256', '346', '689'], four:['239', '248', '257', '347', '356', '789'], five:['249', '258', '267', '348', '357', '456'], six:['259', '268', '349', '358', '367', '457'], seven:['269', '278', '359', '368', '458', '467'], eight:['279', '369', '378', '459', '468', '567'], nine:['234', '289', '379', '469', '478', '568'], zero:['235', '389', '479', '569', '578']),
Charts(id: 'C1',name:'64`S Chart', one:['128', '137', '146', '290', '380', '470', '560'] , two: ['129', '138', '147', '156', '390', '480', '570'], three:['120', '139', '148', '157', '490', '580', '670'], four:['130', '149', '158', '167', '590', '680'], five:['140', '159', '168', '230', '690', '780'], six:['123', '150', '169', '178', '240', '790'], seven:['124', '160', '179', '250', '340', '890'], eight:['125', '134', '170', '189', '260', '350'], nine:['126', '135', '180', '270', '360', '450'], zero:['127', '136', '145', '190', '280', '370', '460'],),
];

const FAMALY_PANA= const [
  FamilyPanna(id:'111F',data:['111', '116', '166', '666']),
  FamilyPanna(id:'112F',data:['112', '117', '126', '167', '266', '667']),
  FamilyPanna(id:'113F',data:['113', '118', '136', '168', '366', '668']),
  FamilyPanna(id:'114F',data:['114', '119', '146', '169', '466', '669']),
  FamilyPanna(id:'115F',data:['110', '115', '156', '160', '566', '660']),
  FamilyPanna(id:'122F',data:['122', '127', '177', '226', '267', '677']),
  FamilyPanna(id:'123F',data:['123', '128', '137', '178', '236', '268', '367', '678']),
  FamilyPanna(id:'124F',data:['124', '129', '147', '179', '246', '269', '467', '679']),
  FamilyPanna(id:'125F',data:['120', '125', '157', '170', '256', '260', '567', '670']),
  FamilyPanna(id:'133F',data:['133', '138', '188', '336', '368', '688']),
  FamilyPanna(id:'135F',data:['130', '135', '158', '180', '356', '360', '568', '680']),
  FamilyPanna(id:'144F',data:['140', '145', '159', '190', '456', '460', '569', '690']),
  FamilyPanna(id:'155F',data:['100', '150', '155', '556', '560', '600']),
  FamilyPanna(id:'222F',data:['222', '227', '277', '777']),
  FamilyPanna(id:'223F',data:['224', '229', '247', '279', '477', '779']),
  FamilyPanna(id:'225F',data:['220', '225', '257', '270', '577', '770']),
  FamilyPanna(id:'233F',data:['233', '238', '288', '337', '378', '788']),
  FamilyPanna(id:'234F',data:['234', '239', '248', '289', '347', '379', '478', '789']),
  FamilyPanna(id:'235F',data:['230', '235', '258', '280', '357', '370', '578', '780']),
  FamilyPanna(id:'244F',data:['244', '249', '299', '447', '479', '799']),
  FamilyPanna(id:'245F',data:['240', '245', '259', '290', '457', '470', '579', '790']),
  FamilyPanna(id:'255F',data:['200', '250', '255', '557', '570', '700']),
  FamilyPanna(id:'333F',data:['333', '338', '388', '888']),
  FamilyPanna(id:'334F',data:['334', '339', '348', '389', '488', '889']),
  FamilyPanna(id:'335F',data:['330', '335', '358', '380', '588', '880']),
  FamilyPanna(id:'344F',data:['344', '349', '399', '448', '489', '899']),
  FamilyPanna(id:'345F',data:['340', '345', '359', '390', '458', '480', '589', '890']),
  FamilyPanna(id:'355F',data:['300', '350', '355', '558', '580', '800']),
  FamilyPanna(id:'444F',data:['444', '449', '499', '999']),
  FamilyPanna(id:'445F',data:['440', '445', '459', '490', '599', '990']),
  FamilyPanna(id:'455F',data:['400', '450', '455', '559', '590', '900']),
  FamilyPanna(id:'555F',data:['000', '500', '550', '555']),
];

const All_PANNAS= const [
  AllPanna(id: 'ap1', name: 'ABR Cut Panna', pannas:['149', '257', '140', '258', '780', '259', '457', '250', '368', '134', '350', '126', '360', '568', '235', '569', '158', '347', '168', '267', '150', '349', '790', '269', '458', '170', '369', '180', '450', '127', '370', '578', '167', '356', '230', '348', '169', '358', '124', '278', '467', '189', '378', '270', '469', '136', '389', '239', '590', '249', '690', '178', '367', '160', '340', '125', '279', '459', '289', '478', '145', '479'] ),
  AllPanna(id: 'ap2', name: 'Aki Beki Running Panna', pannas:['137', '345', '157', '159', '240', '890', '135', '280', '579', '480', '248', '357', '268', '260', '234', '460', '678', '120', '680', '456', '179', '468', '379', '249', '139', '789', '123', '359', '567', '190'] ),
  AllPanna(id: 'ap3', name: 'Aki Running Panna', pannas: ['137', '120', '159', '179', '135', '579', '139', '357', '359', '234', '678', '157', '456', '890', '379', '345', '789', '123', '567', '190']),
  AllPanna(id: 'ap4', name: 'Beki Running Panna', pannas: ['120', '456', '890', '234', '678', '246', '248', '123', '260', '190', '345', '680', '260', '468', '280', '480', '789', '268', '567', '460']),
  AllPanna(id: 'ap5', name: 'Aki Beki Panna', pannas: ['137', '139', '159', '179', '135', '579', '157', '357', '359', '379', '246', '248', '240', '260', '280', '480', '680', '248', '468', '460']),
  AllPanna(id: 'ap6', name: 'Aki Panna', pannas: ['137', '159', '135', '579', '357', '379', '139', '179', '157', '359']),
  AllPanna(id: 'ap7', name: 'Beki Panna', pannas: ['246', '240', '280', '480', '268', '460', '248', '260', '680', '468']),
  AllPanna(id: 'ap8', name: 'Running Panna', pannas: ['678', '456', '234', '345', '123', '190', '120', '890', '789', '567']),
];

const ABR_CUT_PANNA= const ['149', '257', '140', '258', '780', '259', '457', '250', '368', '134', '350', '126', '360', '568', '235', '569', '158', '347', '168', '267', '150', '349', '790', '269', '458', '170', '369', '180', '450', '127', '370', '578', '167', '356', '230', '348', '169', '358', '124', '278', '467', '189', '378', '270', '469', '136', '389', '239', '590', '249', '690', '178', '367', '160', '340', '125', '279', '459', '289', '478', '145', '479'];
const AKI_BEKI_RUNING_PANNA= const ['137', '345', '157', '159', '240', '890', '135', '280', '579', '480', '248', '357', '268', '260', '234', '460', '678', '120', '680', '456', '179', '468', '379', '249', '139', '789', '123', '359', '567', '190'];
const AKI_RUNING_PANNA= const ['137', '120', '159', '179', '135', '579', '139', '357', '359', '234', '678', '157', '456', '890', '379', '345', '789', '123', '567', '190'];
const BEKI_RUNING_PANNA= const ['120', '456', '890', '234', '678', '246', '248', '123', '260', '190', '345', '680', '260', '468', '280', '480', '789', '268', '567', '460'];
const AKI_BEKI_PANNA= const ['137', '139', '159', '179', '135', '579', '157', '357', '359', '379', '246', '248', '240', '260', '280', '480', '680', '248', '468', '460'];
const BEKI_PANNA= const ['246', '240', '280', '480', '268', '460', '248', '260', '680', '468'];
const AKI_PANNA= const ['137', '159', '135', '579', '357', '379', '139', '179', '157', '359'];
const RUNNING_PANNA= const ['678', '456', '234', '345', '123', '190', '120', '890', '789', '567'];

const ANK_START_PANNA= const [
  AnkStarPanna(id: '1s',number: '1 Start', sp: ['123', '124', '125', '126', '127', '128', '129', '120', '134', '135', '136', '137', '138', '139', '145', '146', '147', '148', '149', '140', '156', '157', '158', '159', '167', '168', '169', '160', '178', '179', '170', '189', '180', '190'], dp: ['112', '113', '114', '115', '116', '117', '118', '119', '110', '122', '133', '144', '155', '166', '177', '188', '199', '100']),
  AnkStarPanna(id: '2s',number: '2 Start', sp: ['234', '235', '236', '237', '238', '239', '230', '245', '246', '247', '248', '249', '240', '256', '257', '258', '259', '250', '267', '268', '269', '260', '278', '279', '270', '289', '280', '290'], dp: ['223', '224', '225', '226', '227', '228', '229', '220', '233', '244', '255', '266', '277', '288', '299', '200']),
  AnkStarPanna(id: '3s',number: '3 Start', sp: ['345', '346', '347', '348', '349', '340', '356', '357', '358', '359', '350', '367', '368', '369', '360', '378', '379', '370', '389', '380', '390'], dp: ['334', '335', '336', '337', '338', '339', '330', '344', '355', '366', '377', '388', '399', '300']),
  AnkStarPanna(id: '4s',number: '4 Start', sp: ['456', '457', '458', '459', '450', '467', '468', '469', '460', '478', '479', '470', '489', '480', '490'], dp: ['445', '446', '447', '448', '449', '440', '455', '466', '477', '488', '499', '400']),
  AnkStarPanna(id: '5s',number: '5 Start', sp: ['567', '568', '569', '560', '578', '579', '570', '589', '580', '590'], dp: ['556', '557', '558', '559', '550', '566', '577', '588', '599', '500']),
  AnkStarPanna(id: '6s',number: '6 Start', sp: ['678', '679', '670', '689', '680', '690'], dp: ['667', '668', '669', '660', '677', '688', '699', '600']),
  AnkStarPanna(id: '7s',number: '7 Start', sp: ['789', '780', '790'], dp: ['778', '779', '770', '788', '799', '700']),
  AnkStarPanna(id: '8s',number: '8 Start', sp: ['890'], dp: ['889', '880', '899', '800']),
  AnkStarPanna(id: '9s',number: '9 Start', sp: ['NA'], dp: ['900', '990']),
];

const CP_PATTI= const [
  CpPatti(id: 'cp1',number: '10', patti: ['110', '120', '130', '140', '150', '160', '170', '180', '190', '100']),
  CpPatti(id: 'cp2',number: '11', patti: ['111', '112', '113', '114', '115', '116', '117', '118', '119', '110']),
  CpPatti(id: 'cp3',number: '12', patti: ['112', '122', '123', '124', '125', '126', '127', '128', '129', '120']),
  CpPatti(id: 'cp4',number: '13', patti: ['113', '123', '133', '134', '135', '136', '137', '138', '139', '130']),
  CpPatti(id: 'cp5',number: '14', patti: ['114', '124', '134', '144', '145', '146', '147', '148', '149', '140']),
  CpPatti(id: 'cp6',number: '15', patti: ['115', '125', '135', '145', '155', '156', '157', '158', '159', '150']),
  CpPatti(id: 'cp7',number: '16', patti: ['116', '126', '136', '146', '156', '166', '167', '168', '169', '160']),
  CpPatti(id: 'cp8',number: '17', patti: ['117', '127', '137', '147', '157', '167', '177', '178', '179', '170']),
  CpPatti(id: 'cp9',number: '18', patti: ['118', '128', '138', '148', '158', '168', '178', '188', '189', '180']),
  CpPatti(id: 'cp10',number: '19', patti: ['119', '129', '139', '149', '159', '169', '179', '189', '199', '190']),
  CpPatti(id: 'cp11',number: '20', patti: ['120', '220', '230', '240', '250', '260', '270', '280', '290', '200']),
  CpPatti(id: 'cp12',number: '22', patti: ['122', '222', '223', '224', '225', '226', '227', '228', '229', '220']),
  CpPatti(id: 'cp13',number: '23', patti: ['123', '223', '233', '234', '235', '236', '237', '238', '239', '230']),
  CpPatti(id: 'cp14',number: '24', patti: ['124', '224', '234', '244', '245', '246', '247', '248', '249', '240']),
  CpPatti(id: 'cp15',number: '25', patti: ['125', '225', '235', '245', '255', '256', '257', '258', '259', '250']),
  CpPatti(id: 'cp16',number: '26', patti: ['126', '226', '236', '246', '256', '266', '267', '268', '269', '260']),
  CpPatti(id: 'cp17',number: '27', patti: ['127', '227', '237', '247', '257', '267', '277', '278', '279', '270']),
  CpPatti(id: 'cp18',number: '28', patti: ['128', '228', '238', '248', '258', '268', '278', '288', '289', '280']),
  CpPatti(id: 'cp19',number: '29', patti: ['129', '229', '239', '249', '259', '269', '279', '289', '299', '290']),
  CpPatti(id: 'cp20',number: '30', patti: ['130', '230', '330', '340', '350', '360', '370', '380', '390', '300']),
  CpPatti(id: 'cp21',number: '33', patti: ['133', '233', '333', '334', '335', '336', '337', '338', '339', '330']),
  CpPatti(id: 'cp22',number: '34', patti: ['134', '234', '334', '344', '345', '346', '347', '348', '349', '340']),
  CpPatti(id: 'cp23',number: '35', patti: ['135', '235', '335', '345', '355', '356', '357', '358', '359', '350']),
  CpPatti(id: 'cp24',number: '36', patti: ['136', '236', '336', '346', '356', '366', '367', '368', '369', '360']),
  CpPatti(id: 'cp25',number: '37', patti: ['137', '237', '337', '347', '357', '367', '377', '378', '379', '370']),
  CpPatti(id: 'cp26',number: '38', patti: ['138', '238', '338', '348', '358', '368', '378', '388', '389', '380']),
  CpPatti(id: 'cp27',number: '39', patti: ['139', '239', '339', '349', '359', '369', '379', '389', '399', '390']),
  CpPatti(id: 'cp28',number: '40', patti: ['140', '240', '340', '440', '450', '460', '470', '480', '490', '400']),
  CpPatti(id: 'cp29',number: '44', patti: ['144', '244', '344', '444', '445', '446', '447', '448', '449', '440']),
  CpPatti(id: 'cp30',number: '45', patti: ['145', '245', '345', '445', '455', '456', '457', '458', '459', '450']),
  CpPatti(id: 'cp31',number: '46', patti: ['146', '246', '346', '446', '456', '466', '467', '468', '469', '460']),
  CpPatti(id: 'cp32',number: '47', patti: ['147', '247', '347', '447', '457', '467', '477', '478', '479', '470']),
  CpPatti(id: 'cp33',number: '48', patti: ['148', '248', '348', '448', '458', '468', '478', '488', '489', '480']),
  CpPatti(id: 'cp34',number: '49', patti: ['149', '249', '349', '449', '459', '469', '479', '489', '499', '490']),
  CpPatti(id: 'cp35',number: '50', patti: ['150', '250', '350', '450', '550', '560', '570', '580', '590', '500']),
  CpPatti(id: 'cp36',number: '55', patti: ['155', '255', '355', '455', '555', '556', '557', '558', '559', '550']),
  CpPatti(id: 'cp37',number: '56', patti: ['156', '256', '356', '456', '556', '566', '567', '568', '569', '560']),
  CpPatti(id: 'cp38',number: '57', patti: ['157', '257', '357', '457', '557', '567', '577', '578', '579', '570']),
  CpPatti(id: 'cp39',number: '58', patti: ['158', '258', '358', '458', '558', '568', '578', '588', '589', '580']),
  CpPatti(id: 'cp40',number: '59', patti: ['159', '259', '359', '459', '559', '569', '579', '589', '599', '590']),
  CpPatti(id: 'cp41',number: '60', patti: ['160', '260', '360', '460', '560', '660', '670', '680', '690', '600']),
  CpPatti(id: 'cp42',number: '66', patti: ['166', '266', '366', '466', '566', '666', '667', '668', '669', '660']),
  CpPatti(id: 'cp43',number: '67', patti: ['167', '267', '367', '467', '567', '667', '677', '678', '679', '670']),
  CpPatti(id: 'cp44',number: '68', patti: ['168', '268', '368', '468', '568', '668', '678', '688', '689', '680']),
  CpPatti(id: 'cp45',number: '69', patti: ['169', '269', '369', '469', '569', '669', '679', '689', '699', '690']),
  CpPatti(id: 'cp46',number: '70', patti: ['170', '270', '370', '470', '570', '670', '770', '780', '790', '700']),
  CpPatti(id: 'cp47',number: '77', patti: ['177', '277', '377', '477', '577', '677', '777', '778', '779', '770']),
  CpPatti(id: 'cp48',number: '78', patti: ['178', '278', '378', '478', '578', '678', '778', '788', '789', '780']),
  CpPatti(id: 'cp49',number: '79', patti: ['179', '279', '379', '479', '579', '679', '779', '789', '799', '790']),
  CpPatti(id: 'cp50',number: '80', patti: ['180', '280', '380', '480', '580', '680', '780', '880', '890', '800']),
  CpPatti(id: 'cp51',number: '88', patti: ['188', '288', '388', '488', '588', '688', '788', '888', '889', '880']),
  CpPatti(id: 'cp52',number: '89', patti: ['189', '289', '389', '489', '589', '689', '789', '889', '899', '890']),
  CpPatti(id: 'cp53',number: '90', patti: ['190', '290', '390', '490', '590', '690', '790', '890', '990', '900']),
  CpPatti(id: 'cp54',number: '99', patti: ['199', '299', '399', '499', '599', '699', '799', '899', '990', '999']),
  CpPatti(id: 'cp55',number: '00', patti: ['100', '200', '300', '400', '500', '600', '700', '800', '900', '000']),
];

const FAMILY_JODI_CHART= const [
  FamilyJodiChart(id: 'fjc1',number: '12F',jodi: ['12', '17', '62', '67', '21', '71', '26', '76']),
  FamilyJodiChart(id: 'fjc2',number: '13F',jodi: ['13', '18', '31', '36', '63', '68', '81', '86']),
  FamilyJodiChart(id: 'fjc3',number: '14F',jodi: ['14', '19', '41', '46', '64', '69', '91', '96']),
  FamilyJodiChart(id: 'fjc4',number: '15F',jodi: ['01', '06', '56', '51', '15', '10', '60', '65']),
  FamilyJodiChart(id: 'fjc5',number: '23F',jodi: ['23', '28', '32', '37', '73', '78', '82', '87']),
  FamilyJodiChart(id: 'fjc6',number: '24F',jodi: ['24', '29', '42', '47', '74', '79', '92', '97']),
  FamilyJodiChart(id: 'fjc7',number: '25F',jodi: ['02', '07', '52', '57', '25', '75', '20', '70']),
  FamilyJodiChart(id: 'fjc8',number: '34F',jodi: ['34', '39', '43', '48', '89', '84', '93', '98']),
  FamilyJodiChart(id: 'fjc9',number: '35F',jodi: ['03', '08', '35', '30', '53', '58', '80', '85']),
  FamilyJodiChart(id: 'fjc10',number: '45F',jodi: ['04', '09', '40', '45', '54', '59', '90', '95']),
  FamilyJodiChart(id: 'fjc11',number: '11F',jodi: ['16', '61', '66', '11']),
  FamilyJodiChart(id: 'fjc12',number: '22F',jodi: ['27', '72', '77', '22']),
  FamilyJodiChart(id: 'fjc13',number: '33F',jodi: ['38', '83', '88', '33']),
  FamilyJodiChart(id: 'fjc14',number: '44F',jodi: ['49', '94', '44', '99']),
  FamilyJodiChart(id: 'fjc15',number: '55F',jodi: ['50', '05', '00', '55']),
];

const NUMBER_LIST_2= const [
  AmountInput(id: '1',number: '1',setText: false, text: ''),
  AmountInput(id: '2',number: '2',setText: false, text: ''),
  AmountInput(id: '3',number: '3',setText: false, text: ''),
  AmountInput(id: '4',number: '4',setText: false, text: ''),
  AmountInput(id: '5',number: '5',setText: false, text: ''),
  AmountInput(id: '6',number: '6',setText: false, text: ''),
  AmountInput(id: '7',number: '7',setText: false, text: ''), 
  AmountInput(id: '8',number: '8',setText: false, text: ''),
  AmountInput(id: '9',number: '9',setText: false, text: ''),
  AmountInput(id: '11',number: '11',setText: true, text: 'Cancel'),
  AmountInput(id: '0',number: '0',setText: false, text: ''),
  AmountInput(id: '12',number: '12',setText: true, text: 'Enter'),
];

var categories=   [
  Categories(cId: 'c1', name: 'Open'),
  Categories(cId: 'c2', name: 'Close'),
  Categories(cId: 'c3', name: 'Jodi'),
  Categories(cId: 'c4', name: 'SP'),
  Categories(cId: 'c5', name: 'DP'),
  Categories(cId: 'c6', name: 'TP'),
  Categories(cId: 'c7', name: 'CP'),
  Categories(cId: 'c8', name: 'MP'),
  Categories(cId: 'c9', name: 'Berij'),
  Categories(cId: 'c10', name: 'Farak'),
  Categories(cId: 'c11', name: 'Aki'),
  Categories(cId: 'c12', name: 'Beki'),
  Categories(cId: 'c13', name: 'Touch Panna'),
  Categories(cId: 'c14', name: 'Family Panna'),
  Categories(cId: 'c15', name: 'Charts'),
  Categories(cId: 'c16', name: 'ARB Cut Panna'),
  Categories(cId: 'c17', name: 'Running Panna'),
  Categories(cId: 'c18', name: 'Aki Beki Running Panna'),
  Categories(cId: 'c19', name: 'Aki Running Panna'),
  Categories(cId: 'c20', name: 'Beki Running Panna'),
  Categories(cId: 'c21', name: 'Aki Beki Panna'),
  Categories(cId: 'c22', name: 'Aki Panna'),
  Categories(cId: 'c23', name: 'Beki Panna'),
  Categories(cId: 'c24', name: 'Ank Start Panna'),
  // Categories(cId: 'c25', name: 'CP Patti'),
];

var componies=[
  Componies(id: '0', componyName: 'JANTA RAJ', openTime: '11:30 AM', closeTime: '12:30 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'5 Min Game'),
  Componies(id: '1', componyName: 'SRIDEVI DAY', openTime: '11:30 AM', closeTime: '12:30 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Day Game'),
  Componies(id: '2', componyName: 'TIME BAJAR', openTime: '12:58 PM', closeTime: '1:58 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Day Game'),
  Componies(id: '3', componyName: 'MADHUR DAY', openTime: '1:05 PM', closeTime: '2:05 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Day Game'),
  Componies(id: '4', componyName: 'MILAN DAY', openTime: '3:00 PM', closeTime: '5:00 PM', date: (DateFormat.yMMMMd().format(dt)).toString(),open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Day Game'),
  Componies(id: '5', componyName: 'RAJDHANI DAY', openTime: '3:25 PM', closeTime: '5:25 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Day Game'),
Componies(id: '6', componyName: 'SUPREME DAY', openTime: '3:25 PM', closeTime: '5:25 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Day Game'),
  Componies(id: '7', componyName: 'KALYAN', openTime: '3:58 PM', closeTime: '5:58 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Day Game'),
  Componies(id: '8', componyName: 'SRIDEVI NIGHT', openTime: '7:15 PM', closeTime: '8:15PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Night Game'),
  Componies(id: '9', componyName: 'MADHUR NIGHT', openTime: '8:25 PM', closeTime: '10:25 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Night Game'),
  Componies(id: '10', componyName: 'MILAN NIGHT', openTime: '8:55 PM', closeTime: '10:55 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Night Game'),
  Componies(id: '11', componyName: 'RAJDHANI NIGHT', openTime: '9:20 PM', closeTime: '11:40 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Night Game'),
Componies(id: '12', componyName: 'SUPREME NIGHT', openTime: '8:30 PM', closeTime: '10:30 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Night Game'),
  Componies(id: '13', componyName: 'KALYAN NIGHT', openTime: '9:20 PM', closeTime: '11:40 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Night Game'),
  Componies(id: '14', componyName: 'MAIN RATAN', openTime: '9:25 PM', closeTime: '11:50 PM', date: (DateFormat.yMMMMd().format(dt)).toString(), open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false, type:'Night Game')
];

var dailyGame=[
  // Componies(id: '1', componyName: 'JANTA RAJ', openTime: '11:00 AM', closeTime: '11:05 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
  // Componies(id: '2', componyName: 'JANTA RAJ', openTime: '11:05 AM', closeTime: '11:10 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
  // Componies(id: '3', componyName: 'JANTA RAJ', openTime: '11:10 AM', closeTime: '11:15 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
  // Componies(id: '4', componyName: 'JANTA RAJ', openTime: '11:15 AM', closeTime: '11:20 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
  // Componies(id: '5', componyName: 'JANTA RAJ', openTime: '11:20 AM', closeTime: '11:25 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
  // Componies(id: '6', componyName: 'JANTA RAJ', openTime: '11:25 AM', closeTime: '11:30 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
  // Componies(id: '7', componyName: 'JANTA RAJ', openTime: '11:30 AM', closeTime: '11:35 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
  // Componies(id: '8', componyName: 'JANTA RAJ', openTime: '11:35 AM', closeTime: '11:40 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
  // Componies(id: '9', componyName: 'JANTA RAJ', openTime: '11:40 AM', closeTime: '11:45 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
  // Componies(id: '10', componyName: 'JANTA RAJ', openTime: '11:45 AM', closeTime: '11:50 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
  // Componies(id: '11', componyName: 'JANTA RAJ', openTime: '11:50 AM', closeTime: '11:55 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
  // Componies(id: '12', componyName: 'JANTA RAJ', openTime: '11:55 AM', closeTime: '12:00 AM', date: '17/09/2020', open: '-', close: '-', openPatti: '---', closePatti: '---', bidCount: 'No Bids', isPlay: false),
];

var recentPlayed=[
  Componies(id: '1', componyName: 'KALYAN', openTime: '04:15 PM', closeTime: '06:15 PM', date: '17/09/2020', open: '9', close: '7', openPatti: '126', closePatti: '179', bidCount: '3 Bids', isPlay: true, type:'nun'),
];

var transacions=[
  // Transaction(companyName: 'KALYAN', date: 'Sep 28, 2020', amount: '1200', isAdd: true),
  // Transaction(companyName: 'KALYAN', date: 'Sep 28, 2020', amount: '200', isAdd: false),
  // Transaction(companyName: 'MILAN DAY', date: 'Sep 28, 2020', amount: '100', isAdd: false),
  // Transaction(companyName: 'RAJDHANI DAY', date: 'Sep 28, 2020', amount: '400', isAdd: false),
  // Transaction(companyName: 'MAIN MUMBAI', date: 'Sep 28, 2020', amount: '800', isAdd: true),
  // Transaction(companyName: 'MAIN MUMBAI', date: 'Sep 28, 2020', amount: '100', isAdd: false),
  // Transaction(companyName: 'KALYAN', date: 'Sep 28, 2020', amount: '1200', isAdd: true),
  // Transaction(companyName: 'KALYAN', date: 'Sep 28, 2020', amount: '200', isAdd: false),
  // Transaction(companyName: 'MILAN DAY', date: 'Sep 28, 2020', amount: '100', isAdd: false),
  // Transaction(companyName: 'RAJDHANI DAY', date: 'Sep 28, 2020', amount: '400', isAdd: false),
  // Transaction(companyName: 'MAIN MUMBAI', date: 'Sep 28, 2020', amount: '800', isAdd: true),
  // Transaction(companyName: 'MAIN MUMBAI', date: 'Sep 28, 2020', amount: '100', isAdd: false),
];

var buttons=[
  Buttons(bid: 'b1', name: 'Open'),
  Buttons(bid: 'b2', name: 'Close'),
  Buttons(bid: 'b3', name: 'Jodi'),
  Buttons(bid: 'b4', name: 'SP'),
  Buttons(bid: 'b5', name: 'DP'),
  Buttons(bid: 'b6', name: 'TP'),
  Buttons(bid: 'b7', name: 'CP'),
  Buttons(bid: 'b8', name: 'MP'),
  Buttons(bid: 'b9', name: 'Berij'),
  Buttons(bid: 'b10', name: 'Farak'),

];

var numberInput=[
  NumberInput(id: '1',number:'1', setIcon:false, icon:null),
  NumberInput(id: '2',number:'2', setIcon:false, icon:null),
  NumberInput(id: '3',number:'3', setIcon:false, icon:null),
  NumberInput(id: '4',number:'4', setIcon:false, icon:null),
  NumberInput(id: '5',number:'5', setIcon:false, icon:null),
  NumberInput(id: '6',number:'6', setIcon:false, icon:null),
  NumberInput(id: '7',number:'7', setIcon:false, icon:null),
  NumberInput(id: '8',number:'8', setIcon:false, icon:null),
  NumberInput(id: '9',number:'9', setIcon:false, icon:null),
  NumberInput(id: '10',number:'00', setIcon:true, icon:Icons.cancel),
  NumberInput(id: '11',number:'0', setIcon:false, icon:null),
  NumberInput(id: '12',number:'00', setIcon:true, icon:Icons.arrow_back),

];

var fiveMinGameResult=[
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
  FiveMinGameResult(resultNo: '4', openTime: '12:00 PM', closeTime: '12:00 PM'),
];