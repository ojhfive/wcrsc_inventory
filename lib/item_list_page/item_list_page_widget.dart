import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemListPageWidget extends StatefulWidget {
  const ItemListPageWidget({Key key}) : super(key: key);

  @override
  _ItemListPageWidgetState createState() => _ItemListPageWidgetState();
}

class _ItemListPageWidgetState extends State<ItemListPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'ITEM LIST',
          style: FlutterFlowTheme.title1,
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: StreamBuilder<List<ItemListRecord>>(
          stream: queryItemListRecord(),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(
                    color: FlutterFlowTheme.primaryColor,
                  ),
                ),
              );
            }
            List<ItemListRecord> columnItemListRecordList = snapshot.data;
            return Column(
              mainAxisSize: MainAxisSize.max,
              children:
                  List.generate(columnItemListRecordList.length, (columnIndex) {
                final columnItemListRecord =
                    columnItemListRecordList[columnIndex];
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      columnItemListRecord.lotNumber,
                      style: FlutterFlowTheme.bodyText1,
                    ),
                    Text(
                      columnItemListRecord.manufacturer,
                      style: FlutterFlowTheme.bodyText1,
                    ),
                    Text(
                      columnItemListRecord.testType,
                      style: FlutterFlowTheme.bodyText1,
                    ),
                    Text(
                      functions.checkControlTested(
                          columnItemListRecord.controlTested),
                      style: FlutterFlowTheme.bodyText1,
                    ),
                  ],
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
