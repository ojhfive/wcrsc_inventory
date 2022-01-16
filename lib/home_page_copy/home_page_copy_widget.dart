import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({Key key}) : super(key: key);

  @override
  _HomePageCopyWidgetState createState() => _HomePageCopyWidgetState();
}

class _HomePageCopyWidgetState extends State<HomePageCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, -0.85),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 40, 10, 10),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'RECEIVING ORDER',
                        options: FFButtonOptions(
                          width: 200,
                          height: 100,
                          color: FlutterFlowTheme.primaryColor,
                          textStyle: FlutterFlowTheme.title2,
                          elevation: 10,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'OUTGOING',
                        options: FFButtonOptions(
                          width: 200,
                          height: 100,
                          color: FlutterFlowTheme.primaryColor,
                          textStyle: FlutterFlowTheme.title2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'WAREHOUSE',
                        options: FFButtonOptions(
                          width: 200,
                          height: 100,
                          color: FlutterFlowTheme.primaryColor,
                          textStyle: FlutterFlowTheme.title2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: FlutterFlowTheme.primaryColor,
                        labelStyle: FlutterFlowTheme.bodyText1,
                        indicatorColor: FlutterFlowTheme.secondaryColor,
                        tabs: [
                          Tab(
                            text: 'Example 1',
                          ),
                          Tab(
                            text: 'Example 2',
                          ),
                          Tab(
                            text: 'Example 3',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Text(
                              'Tab View 1',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              'Tab View 2',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              'Tab View 3',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                fontSize: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
