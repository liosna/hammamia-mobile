import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Doc11arWidget extends StatefulWidget {
  const Doc11arWidget({Key key}) : super(key: key);

  @override
  _Doc11arWidgetState createState() => _Doc11arWidgetState();
}

class _Doc11arWidgetState extends State<Doc11arWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(7, 30, 7, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'رخصة تركيز علامات اشهارية',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Somar',
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              InkWell(
                                onTap: () async {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.expand_more,
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'الوثائق المطلوبة',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Somar',
                                      color: Color(0xFF01547B),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 4, 0),
                                    child: Text(
                                      'مطلب على ورق عادي ممضى من قبل الطالب ومتضمنا ',
                                      style: FlutterFlowTheme.of(context)
                                          .title2
                                          .override(
                                            fontFamily: 'Somar',
                                            fontSize: 17,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    'المكان المعني والمدة والمساحة وبيان الحاجة ',
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Somar',
                                          fontSize: 17,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Text(
                                    'أمثلة أو رسوم على أن تكون واضحة من حيث المحتوى ',
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Somar',
                                          fontSize: 17,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Text(
                                    'والشكل والمقاييس بالنسبة للعلامة أو النص والمساحة \nالمزمع اشغالها بالنسبة للكتابة',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Somar',
                                          fontSize: 17,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Text(
                                    'صور للأمكنة',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Somar',
                                          fontSize: 18,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Text(
                                    'نسخة من بطاقة المعرف الجبائي ',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Somar',
                                          fontSize: 18,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Text(
                                    'نسخة من المصادقة في النشاط',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Somar',
                                          fontSize: 18,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Text(
                                    'نسخة من ملف التأمين ',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Somar',
                                          fontSize: 18,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'المراجع التشريعية والترتيبية',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Somar',
                                      color: Color(0xFF01547B),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'القانون عدد 11 لسنة 1997 المؤرخ في\n 3 فيفري المتعلق باصدار مجلة الجباية المحلية',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Somar',
                                          fontSize: 18,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Text(
                                    'القانون عدد 59 لسنة 2006 المؤرخ في 11 أوت 2006\nالمتعلق بمخالفات تراتيب حفظ الصحة\n في المناطق التابعة للجماعات المحلية',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Somar',
                                          fontSize: 18,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Text(
                                    'الأمر عدد 1866 لسنة 2007 المؤرخ في 23 جويلية 2007 \nالمتعلق بضبط قائمة المخالفات\n لتراتيب حفظ الصحة ',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Somar',
                                          fontSize: 18,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'أجل الحصول على الخدمة',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Somar',
                                      color: Color(0xFF01547B),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 4, 7, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'خلال 7 أيام من تاريخ ايداع الملف ',
                                style: FlutterFlowTheme.of(context)
                                    .title2
                                    .override(
                                      fontFamily: 'Somar',
                                      fontSize: 17,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'المصلحة المسداة للخدمة',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Somar',
                                      color: Color(0xFF01547B),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'مصلحة الشؤون االقتصادية',
                                textAlign: TextAlign.end,
                                style: FlutterFlowTheme.of(context)
                                    .title2
                                    .override(
                                      fontFamily: 'Somar',
                                      fontSize: 17,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '© 2022 JCI HAMMAM SOUSSE',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              color: Color(0xFF869AAF),
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
