import '../aproposjci/aproposjci_widget.dart';
import '../aprpopojci/aprpopojci_widget.dart';
import '../associ/associ_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../carte/carte_widget.dart';
import '../clubs/clubs_widget.dart';
import '../components/deconnexion_widget.dart';
import '../contact/contact_widget.dart';
import '../contacteznous/contacteznous_widget.dart';
import '../droit/droit_widget.dart';
import '../finance/finance_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../histo/histo_widget.dart';
import '../main.dart';
import '../newautres/newautres_widget.dart';
import '../nouveaucontact/nouveaucontact_widget.dart';
import '../presentation/presentation_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AutresWidget extends StatefulWidget {
  const AutresWidget({Key key}) : super(key: key);

  @override
  _AutresWidgetState createState() => _AutresWidgetState();
}

class _AutresWidgetState extends State<AutresWidget> {
  TextEditingController cl1Controller;
  TextEditingController clController;
  TextEditingController cl2Controller;
  TextEditingController cl3Controller;
  TextEditingController pl1Controller;
  TextEditingController plController;
  TextEditingController pl2Controller;
  TextEditingController pl3Controller;
  TextEditingController fr1Controller;
  TextEditingController frController;
  TextEditingController fr2Controller;
  TextEditingController fr3Controller;
  TextEditingController mn1Controller;
  TextEditingController mnController;
  TextEditingController mn2Controller;
  TextEditingController mn3Controller;
  TextEditingController mc1Controller;
  TextEditingController mcController;
  TextEditingController mc2Controller;
  TextEditingController mc3Controller;
  TextEditingController pn1Controller;
  TextEditingController pnController;
  TextEditingController pn2Controller;
  TextEditingController pn3Controller;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    cl1Controller = TextEditingController();
    clController = TextEditingController();
    cl2Controller = TextEditingController();
    cl3Controller = TextEditingController();
    pl1Controller = TextEditingController();
    plController = TextEditingController();
    pl2Controller = TextEditingController();
    pl3Controller = TextEditingController();
    fr1Controller = TextEditingController();
    frController = TextEditingController();
    fr2Controller = TextEditingController();
    fr3Controller = TextEditingController();
    mn1Controller = TextEditingController();
    mnController = TextEditingController();
    mn2Controller = TextEditingController();
    mn3Controller = TextEditingController();
    mc1Controller = TextEditingController();
    mcController = TextEditingController();
    mc2Controller = TextEditingController();
    mc3Controller = TextEditingController();
    pn1Controller = TextEditingController();
    pnController = TextEditingController();
    pn2Controller = TextEditingController();
    pn3Controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Drawer(
        elevation: 16,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/logo_off.png',
                        width: 150,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: double.infinity,
                            color: Color(0x00000000),
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 7, 0),
                                            child: Icon(
                                              Icons.place_outlined,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 5),
                                            child: Text(
                                              'Hammam Sousse',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 18,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                collapsed: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          '  ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PresentationWidget(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 2, 0, 0),
                                            child: Text(
                                              'Présentation en Bref',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => CarteWidget(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 2, 0, 0),
                                            child: Text(
                                              'Carte de la ville',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => HistoWidget(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 2, 0, 0),
                                            child: Text(
                                              'Histoire de la ville',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 38, 10),
                                          child: Container(
                                            width: 180,
                                            height: 1,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF848487),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: Icons.expand_more_rounded,
                                  collapseIcon: Icons.expand_less_rounded,
                                  iconSize: 24,
                                  iconColor: Color(0xFF6D6D75),
                                  iconPadding:
                                      EdgeInsets.fromLTRB(0, 12, 15, 5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: double.infinity,
                            color: Color(0x00000000),
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 7, 0),
                                            child: Icon(
                                              Icons.palette_outlined,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 6),
                                            child: Text(
                                              'Clubs & Associations',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 17,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                collapsed: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          '  ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ClubsWidget(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 2, 0, 0),
                                            child: Text(
                                              'Les Clubs',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                AssociWidget(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 2, 0, 0),
                                            child: Text(
                                              'Les Associations',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 38, 10),
                                          child: Container(
                                            width: 180,
                                            height: 1,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF848487),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: Icons.expand_more_rounded,
                                  collapseIcon: Icons.expand_less_rounded,
                                  iconSize: 24,
                                  iconColor: Color(0xFF6D6D75),
                                  iconPadding:
                                      EdgeInsets.fromLTRB(0, 12, 15, 5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: double.infinity,
                            color: Color(0x00000000),
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 7, 0),
                                            child: Icon(
                                              Icons.contact_phone_outlined,
                                              color: Colors.black,
                                              size: 23,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2, 5, 0, 5),
                                            child: Text(
                                              'Contacts',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 18,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                collapsed: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          '  ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ContactWidget(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 2, 0, 0),
                                            child: Text(
                                              'Santé',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => DroitWidget(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 2, 0, 0),
                                            child: Text(
                                              'Droit',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                FinanceWidget(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 2, 0, 0),
                                            child: Text(
                                              'Finance',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                AutresWidget(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    40, 2, 0, 0),
                                            child: Text(
                                              'Autres',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 15,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if ((valueOrDefault(
                                            currentUserDocument?.role, '')) !=
                                        'admin')
                                      AuthUserStreamWidget(
                                        child: InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    NouveaucontactWidget(),
                                              ),
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(20, 0, 0, 0),
                                                child: Icon(
                                                  Icons.add,
                                                  color: Color(0xFF626B76),
                                                  size: 15,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 2, 0, 0),
                                                child: Text(
                                                  'Ajouter un nouveau contact',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 15,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 38, 10),
                                          child: Container(
                                            width: 180,
                                            height: 1,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF848487),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: Icons.expand_more_rounded,
                                  collapseIcon: Icons.expand_less_rounded,
                                  iconSize: 24,
                                  iconColor: Color(0xFF6D6D75),
                                  iconPadding:
                                      EdgeInsets.fromLTRB(0, 12, 15, 5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: double.infinity,
                            color: Color(0x00000000),
                            child: ExpandableNotifier(
                              initialExpanded: false,
                              child: ExpandablePanel(
                                header: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 7, 0),
                                            child: Icon(
                                              Icons.info_outline_rounded,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2, 5, 0, 5),
                                            child: Text(
                                              'À propos de nous',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 18,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                collapsed: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          '  ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                expanded: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                AprpopojciWidget(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    35, 2, 0, 0),
                                            child: Text(
                                              'Présentation de la JCI',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 14,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                AproposjciWidget(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    35, 2, 0, 0),
                                            child: Text(
                                              'Présentation de JCI Hammam Sousse',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 14,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if ((valueOrDefault(
                                            currentUserDocument?.role, '')) !=
                                        'admin')
                                      AuthUserStreamWidget(
                                        child: InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ContacteznousWidget(),
                                              ),
                                            );
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(35, 2, 0, 0),
                                                child: Text(
                                                  'Contactez-nous',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        color:
                                                            Color(0xFF626B76),
                                                        fontSize: 14,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 10, 38, 10),
                                          child: Container(
                                            width: 180,
                                            height: 1,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF848487),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                theme: ExpandableThemeData(
                                  tapHeaderToExpand: true,
                                  tapBodyToExpand: false,
                                  tapBodyToCollapse: false,
                                  headerAlignment:
                                      ExpandablePanelHeaderAlignment.center,
                                  hasIcon: true,
                                  expandIcon: Icons.expand_more_rounded,
                                  collapseIcon: Icons.expand_less_rounded,
                                  iconSize: 24,
                                  iconColor: Color(0xFF6D6D75),
                                  iconPadding:
                                      EdgeInsets.fromLTRB(0, 12, 15, 5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Version 1.0',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).secondaryColor,
                        FlutterFlowTheme.of(context).primaryBackground
                      ],
                      stops: [0, 1],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  scaffoldKey.currentState.openDrawer();
                                },
                                child: Icon(
                                  Icons.menu_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 35,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          NavBarPage(initialPage: 'HomePage'),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/hhh-removebg-preview.png',
                                  width: 85,
                                  height: 85,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                              child: InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: DeconnexionWidget(),
                                      );
                                    },
                                  );
                                },
                                child: Icon(
                                  Icons.logout,
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  size: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.chevron_left_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    'Autres exigences',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                          fontSize: 18,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if ((valueOrDefault(currentUserDocument?.role, '')) ==
                              'admin')
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: AuthUserStreamWidget(
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => NewautresWidget(),
                                      ),
                                    );
                                  },
                                  text: 'Ajouter',
                                  options: FFButtonOptions(
                                    width: 100,
                                    height: 35,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: 30,
                                  ),
                                  showLoadingIndicator: false,
                                ),
                              ),
                            ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Container(
                                      width: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Color(0x00000000),
                                              child: ExpandableNotifier(
                                                initialExpanded: false,
                                                child: ExpandablePanel(
                                                  header: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Forgerons',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title1
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  collapsed: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFEEEEEE),
                                                    ),
                                                  ),
                                                  expanded: StreamBuilder<
                                                      List<ForgeronsRecord>>(
                                                    stream:
                                                        queryForgeronsRecord(
                                                      queryBuilder:
                                                          (forgeronsRecord) =>
                                                              forgeronsRecord
                                                                  .orderBy(
                                                                      'nom',
                                                                      descending:
                                                                          true),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40,
                                                            height: 40,
                                                            child:
                                                                SpinKitCircle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ForgeronsRecord>
                                                          listViewForgeronsRecordList =
                                                          snapshot.data;
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewForgeronsRecordList
                                                                .length,
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewForgeronsRecord =
                                                              listViewForgeronsRecordList[
                                                                  listViewIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                    child: Text(
                                                                      listViewForgeronsRecord
                                                                          .nom,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                            fontSize:
                                                                                13,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          listViewForgeronsRecord
                                                                              .tel1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 13,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if ((listViewForgeronsRecord
                                                                              .tel2 !=
                                                                          null) &&
                                                                      (listViewForgeronsRecord
                                                                              .tel2 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewForgeronsRecord.tel2,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((listViewForgeronsRecord
                                                                              .tel3 !=
                                                                          null) &&
                                                                      (listViewForgeronsRecord
                                                                              .tel3 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewForgeronsRecord.tel3,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.role,
                                                                          '')) ==
                                                                      'admin')
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              3,
                                                                              0,
                                                                              3),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                200,
                                                                            color:
                                                                                Colors.white,
                                                                            child:
                                                                                ExpandableNotifier(
                                                                              initialExpanded: false,
                                                                              child: ExpandablePanel(
                                                                                header: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Modifier',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Montserrat',
                                                                                            color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                            fontSize: 12,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                collapsed: Container(
                                                                                  decoration: BoxDecoration(),
                                                                                ),
                                                                                expanded: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: frController,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'nom...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: fr1Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 1...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: fr2Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 2...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: fr3Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 3...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                if ((frController.text != null) && (frController.text != '')) {
                                                                                                  final forgeronsUpdateData = createForgeronsRecordData(
                                                                                                    nom: frController.text,
                                                                                                  );
                                                                                                  await listViewForgeronsRecord.reference.update(forgeronsUpdateData);
                                                                                                }
                                                                                                if ((fr1Controller.text != null) && (fr1Controller.text != '')) {
                                                                                                  final forgeronsUpdateData = createForgeronsRecordData(
                                                                                                    tel1: fr1Controller.text,
                                                                                                  );
                                                                                                  await listViewForgeronsRecord.reference.update(forgeronsUpdateData);
                                                                                                }
                                                                                                if ((fr2Controller.text != null) && (fr2Controller.text != '')) {
                                                                                                  final forgeronsUpdateData = createForgeronsRecordData(
                                                                                                    tel2: fr2Controller.text,
                                                                                                  );
                                                                                                  await listViewForgeronsRecord.reference.update(forgeronsUpdateData);
                                                                                                }
                                                                                                if ((fr3Controller.text != null) && (fr3Controller.text != '')) {
                                                                                                  final forgeronsUpdateData = createForgeronsRecordData(
                                                                                                    tel3: fr3Controller.text,
                                                                                                  );
                                                                                                  await listViewForgeronsRecord.reference.update(forgeronsUpdateData);
                                                                                                }
                                                                                                setState(() {
                                                                                                  frController?.clear();
                                                                                                  fr1Controller?.clear();
                                                                                                  fr2Controller?.clear();
                                                                                                  fr3Controller?.clear();
                                                                                                });
                                                                                              },
                                                                                              text: 'Modifier',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                await listViewForgeronsRecord.reference.delete();
                                                                                              },
                                                                                              text: 'Supprimer',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: Color(0xFFF52B37),
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                theme: ExpandableThemeData(
                                                                                  tapHeaderToExpand: true,
                                                                                  tapBodyToExpand: false,
                                                                                  tapBodyToCollapse: false,
                                                                                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                  hasIcon: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                  theme: ExpandableThemeData(
                                                    tapHeaderToExpand: true,
                                                    tapBodyToExpand: false,
                                                    tapBodyToCollapse: false,
                                                    headerAlignment:
                                                        ExpandablePanelHeaderAlignment
                                                            .center,
                                                    hasIcon: true,
                                                    expandIcon: Icons
                                                        .navigate_next_rounded,
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 15, 0, 0),
                                    child: Container(
                                      width: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Color(0x00000000),
                                              child: ExpandableNotifier(
                                                initialExpanded: false,
                                                child: ExpandablePanel(
                                                  header: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Menuisiers',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .title1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  collapsed: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFEEEEEE),
                                                    ),
                                                  ),
                                                  expanded: StreamBuilder<
                                                      List<MenuisiersRecord>>(
                                                    stream:
                                                        queryMenuisiersRecord(
                                                      queryBuilder:
                                                          (menuisiersRecord) =>
                                                              menuisiersRecord
                                                                  .orderBy(
                                                                      'nom',
                                                                      descending:
                                                                          true),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40,
                                                            height: 40,
                                                            child:
                                                                SpinKitCircle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<MenuisiersRecord>
                                                          listViewMenuisiersRecordList =
                                                          snapshot.data;
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewMenuisiersRecordList
                                                                .length,
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewMenuisiersRecord =
                                                              listViewMenuisiersRecordList[
                                                                  listViewIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                    child: Text(
                                                                      listViewMenuisiersRecord
                                                                          .nom,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                            fontSize:
                                                                                13,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          listViewMenuisiersRecord
                                                                              .tel1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 13,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if ((listViewMenuisiersRecord
                                                                              .tel2 !=
                                                                          null) &&
                                                                      (listViewMenuisiersRecord
                                                                              .tel2 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewMenuisiersRecord.tel2,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((listViewMenuisiersRecord
                                                                              .tel3 !=
                                                                          null) &&
                                                                      (listViewMenuisiersRecord
                                                                              .tel3 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewMenuisiersRecord.tel3,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.role,
                                                                          '')) ==
                                                                      'admin')
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              3,
                                                                              0,
                                                                              3),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                200,
                                                                            color:
                                                                                Colors.white,
                                                                            child:
                                                                                ExpandableNotifier(
                                                                              initialExpanded: false,
                                                                              child: ExpandablePanel(
                                                                                header: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Modifier',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Montserrat',
                                                                                            color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                            fontSize: 12,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                collapsed: Container(
                                                                                  decoration: BoxDecoration(),
                                                                                ),
                                                                                expanded: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: mnController,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'nom...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: mn1Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 1...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: mn2Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 2...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: mn3Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 3...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                if ((mnController.text != null) && (mnController.text != '')) {
                                                                                                  final menuisiersUpdateData = createMenuisiersRecordData(
                                                                                                    nom: mnController.text,
                                                                                                  );
                                                                                                  await listViewMenuisiersRecord.reference.update(menuisiersUpdateData);
                                                                                                }
                                                                                                if ((mn1Controller.text != null) && (mn1Controller.text != '')) {
                                                                                                  final menuisiersUpdateData = createMenuisiersRecordData(
                                                                                                    tel1: mn1Controller.text,
                                                                                                  );
                                                                                                  await listViewMenuisiersRecord.reference.update(menuisiersUpdateData);
                                                                                                }
                                                                                                if ((mn2Controller.text != null) && (mn2Controller.text != '')) {
                                                                                                  final menuisiersUpdateData = createMenuisiersRecordData(
                                                                                                    tel2: mn2Controller.text,
                                                                                                  );
                                                                                                  await listViewMenuisiersRecord.reference.update(menuisiersUpdateData);
                                                                                                }
                                                                                                if ((mn3Controller.text != null) && (mn3Controller.text != '')) {
                                                                                                  final menuisiersUpdateData = createMenuisiersRecordData(
                                                                                                    tel3: mn3Controller.text,
                                                                                                  );
                                                                                                  await listViewMenuisiersRecord.reference.update(menuisiersUpdateData);
                                                                                                }
                                                                                                setState(() {
                                                                                                  mnController?.clear();
                                                                                                  mn1Controller?.clear();
                                                                                                  mn2Controller?.clear();
                                                                                                  mn3Controller?.clear();
                                                                                                });
                                                                                              },
                                                                                              text: 'Modifier',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                await listViewMenuisiersRecord.reference.delete();
                                                                                              },
                                                                                              text: 'Supprimer',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: Color(0xFFF52B37),
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                theme: ExpandableThemeData(
                                                                                  tapHeaderToExpand: true,
                                                                                  tapBodyToExpand: false,
                                                                                  tapBodyToCollapse: false,
                                                                                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                  hasIcon: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                  theme: ExpandableThemeData(
                                                    tapHeaderToExpand: true,
                                                    tapBodyToExpand: false,
                                                    tapBodyToCollapse: false,
                                                    headerAlignment:
                                                        ExpandablePanelHeaderAlignment
                                                            .center,
                                                    hasIcon: true,
                                                    expandIcon: Icons
                                                        .navigate_next_rounded,
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Container(
                                      width: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Color(0x00000000),
                                              child: ExpandableNotifier(
                                                initialExpanded: false,
                                                child: ExpandablePanel(
                                                  header: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Maçons',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title1
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  collapsed: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFEEEEEE),
                                                    ),
                                                  ),
                                                  expanded: StreamBuilder<
                                                      List<MaconsRecord>>(
                                                    stream: queryMaconsRecord(
                                                      queryBuilder:
                                                          (maconsRecord) =>
                                                              maconsRecord
                                                                  .orderBy(
                                                                      'nom',
                                                                      descending:
                                                                          true),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40,
                                                            height: 40,
                                                            child:
                                                                SpinKitCircle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<MaconsRecord>
                                                          listViewMaconsRecordList =
                                                          snapshot.data;
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewMaconsRecordList
                                                                .length,
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewMaconsRecord =
                                                              listViewMaconsRecordList[
                                                                  listViewIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                    child: Text(
                                                                      listViewMaconsRecord
                                                                          .nom,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                            fontSize:
                                                                                13,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          listViewMaconsRecord
                                                                              .tel1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 13,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if ((listViewMaconsRecord
                                                                              .tel2 !=
                                                                          null) &&
                                                                      (listViewMaconsRecord
                                                                              .tel2 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewMaconsRecord.tel2,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((listViewMaconsRecord
                                                                              .tel3 !=
                                                                          null) &&
                                                                      (listViewMaconsRecord
                                                                              .tel3 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewMaconsRecord.tel3,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.role,
                                                                          '')) ==
                                                                      'admin')
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              3,
                                                                              0,
                                                                              3),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                200,
                                                                            color:
                                                                                Colors.white,
                                                                            child:
                                                                                ExpandableNotifier(
                                                                              initialExpanded: false,
                                                                              child: ExpandablePanel(
                                                                                header: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Modifier',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Montserrat',
                                                                                            color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                            fontSize: 12,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                collapsed: Container(
                                                                                  decoration: BoxDecoration(),
                                                                                ),
                                                                                expanded: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: mcController,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'nom...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: mc1Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 1...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: mc2Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 2...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: mc3Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 3...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                if ((mcController.text != null) && (mcController.text != '')) {
                                                                                                  final maconsUpdateData = createMaconsRecordData(
                                                                                                    nom: mcController.text,
                                                                                                  );
                                                                                                  await listViewMaconsRecord.reference.update(maconsUpdateData);
                                                                                                }
                                                                                                if ((mc1Controller.text != null) && (mc1Controller.text != '')) {
                                                                                                  final maconsUpdateData = createMaconsRecordData(
                                                                                                    tel1: mc1Controller.text,
                                                                                                  );
                                                                                                  await listViewMaconsRecord.reference.update(maconsUpdateData);
                                                                                                }
                                                                                                if ((mc2Controller.text != null) && (mc2Controller.text != '')) {
                                                                                                  final maconsUpdateData = createMaconsRecordData(
                                                                                                    tel2: mc2Controller.text,
                                                                                                  );
                                                                                                  await listViewMaconsRecord.reference.update(maconsUpdateData);
                                                                                                }
                                                                                                if ((mc3Controller.text != null) && (mc3Controller.text != '')) {
                                                                                                  final maconsUpdateData = createMaconsRecordData(
                                                                                                    tel3: mc3Controller.text,
                                                                                                  );
                                                                                                  await listViewMaconsRecord.reference.update(maconsUpdateData);
                                                                                                }
                                                                                                setState(() {
                                                                                                  mcController?.clear();
                                                                                                  mc1Controller?.clear();
                                                                                                  mc2Controller?.clear();
                                                                                                  mc3Controller?.clear();
                                                                                                });
                                                                                              },
                                                                                              text: 'Modifier',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                await listViewMaconsRecord.reference.delete();
                                                                                              },
                                                                                              text: 'Supprimer',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: Color(0xFFF52B37),
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                theme: ExpandableThemeData(
                                                                                  tapHeaderToExpand: true,
                                                                                  tapBodyToExpand: false,
                                                                                  tapBodyToCollapse: false,
                                                                                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                  hasIcon: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                  theme: ExpandableThemeData(
                                                    tapHeaderToExpand: true,
                                                    tapBodyToExpand: false,
                                                    tapBodyToCollapse: false,
                                                    headerAlignment:
                                                        ExpandablePanelHeaderAlignment
                                                            .center,
                                                    hasIcon: true,
                                                    expandIcon: Icons
                                                        .navigate_next_rounded,
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 15, 0, 0),
                                    child: Container(
                                      width: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Color(0x00000000),
                                              child: ExpandableNotifier(
                                                initialExpanded: false,
                                                child: ExpandablePanel(
                                                  header: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Peintres',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title1
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  collapsed: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFEEEEEE),
                                                    ),
                                                  ),
                                                  expanded: StreamBuilder<
                                                      List<PeintresRecord>>(
                                                    stream: queryPeintresRecord(
                                                      queryBuilder:
                                                          (peintresRecord) =>
                                                              peintresRecord
                                                                  .orderBy(
                                                                      'nom',
                                                                      descending:
                                                                          true),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40,
                                                            height: 40,
                                                            child:
                                                                SpinKitCircle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<PeintresRecord>
                                                          listViewPeintresRecordList =
                                                          snapshot.data;
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewPeintresRecordList
                                                                .length,
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewPeintresRecord =
                                                              listViewPeintresRecordList[
                                                                  listViewIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                    child: Text(
                                                                      listViewPeintresRecord
                                                                          .nom,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                            fontSize:
                                                                                13,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          listViewPeintresRecord
                                                                              .tel1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 13,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if ((listViewPeintresRecord
                                                                              .tel2 !=
                                                                          null) &&
                                                                      (listViewPeintresRecord
                                                                              .tel2 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewPeintresRecord.tel2,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((listViewPeintresRecord
                                                                              .tel3 !=
                                                                          null) &&
                                                                      (listViewPeintresRecord
                                                                              .tel3 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewPeintresRecord.tel3,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.role,
                                                                          '')) ==
                                                                      'admin')
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              3,
                                                                              0,
                                                                              3),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                200,
                                                                            color:
                                                                                Colors.white,
                                                                            child:
                                                                                ExpandableNotifier(
                                                                              initialExpanded: false,
                                                                              child: ExpandablePanel(
                                                                                header: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Modifier',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Montserrat',
                                                                                            color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                            fontSize: 12,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                collapsed: Container(
                                                                                  decoration: BoxDecoration(),
                                                                                ),
                                                                                expanded: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: pnController,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'nom...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: pn1Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 1...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: pn2Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 2...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: pn3Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 3...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                if ((pnController.text != null) && (pnController.text != '')) {
                                                                                                  final peintresUpdateData = createPeintresRecordData(
                                                                                                    nom: pnController.text,
                                                                                                  );
                                                                                                  await listViewPeintresRecord.reference.update(peintresUpdateData);
                                                                                                }
                                                                                                if ((pn1Controller.text != null) && (pn1Controller.text != '')) {
                                                                                                  final peintresUpdateData = createPeintresRecordData(
                                                                                                    tel1: pn1Controller.text,
                                                                                                  );
                                                                                                  await listViewPeintresRecord.reference.update(peintresUpdateData);
                                                                                                }
                                                                                                if ((pn2Controller.text != null) && (pn2Controller.text != '')) {
                                                                                                  final peintresUpdateData = createPeintresRecordData(
                                                                                                    tel2: pn2Controller.text,
                                                                                                  );
                                                                                                  await listViewPeintresRecord.reference.update(peintresUpdateData);
                                                                                                }
                                                                                                if ((pn3Controller.text != null) && (pn3Controller.text != '')) {
                                                                                                  final peintresUpdateData = createPeintresRecordData(
                                                                                                    tel3: pn3Controller.text,
                                                                                                  );
                                                                                                  await listViewPeintresRecord.reference.update(peintresUpdateData);
                                                                                                }
                                                                                                setState(() {
                                                                                                  pnController?.clear();
                                                                                                  pn1Controller?.clear();
                                                                                                  pn2Controller?.clear();
                                                                                                  pn3Controller?.clear();
                                                                                                });
                                                                                              },
                                                                                              text: 'Modifier',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                await listViewPeintresRecord.reference.delete();
                                                                                              },
                                                                                              text: 'Supprimer',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: Color(0xFFF52B37),
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                theme: ExpandableThemeData(
                                                                                  tapHeaderToExpand: true,
                                                                                  tapBodyToExpand: false,
                                                                                  tapBodyToCollapse: false,
                                                                                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                  hasIcon: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                  theme: ExpandableThemeData(
                                                    tapHeaderToExpand: true,
                                                    tapBodyToExpand: false,
                                                    tapBodyToCollapse: false,
                                                    headerAlignment:
                                                        ExpandablePanelHeaderAlignment
                                                            .center,
                                                    hasIcon: true,
                                                    expandIcon: Icons
                                                        .navigate_next_rounded,
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Container(
                                      width: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Color(0x00000000),
                                              child: ExpandableNotifier(
                                                initialExpanded: false,
                                                child: ExpandablePanel(
                                                  header: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(3,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Plombiers',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .title1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  collapsed: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFEEEEEE),
                                                    ),
                                                  ),
                                                  expanded: StreamBuilder<
                                                      List<PlombiersRecord>>(
                                                    stream:
                                                        queryPlombiersRecord(
                                                      queryBuilder:
                                                          (plombiersRecord) =>
                                                              plombiersRecord
                                                                  .orderBy(
                                                                      'nom',
                                                                      descending:
                                                                          true),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40,
                                                            height: 40,
                                                            child:
                                                                SpinKitCircle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<PlombiersRecord>
                                                          listViewPlombiersRecordList =
                                                          snapshot.data;
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewPlombiersRecordList
                                                                .length,
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewPlombiersRecord =
                                                              listViewPlombiersRecordList[
                                                                  listViewIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                    child: Text(
                                                                      listViewPlombiersRecord
                                                                          .nom,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                            fontSize:
                                                                                13,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          listViewPlombiersRecord
                                                                              .tel1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 13,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if ((listViewPlombiersRecord
                                                                              .tel2 !=
                                                                          null) &&
                                                                      (listViewPlombiersRecord
                                                                              .tel2 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewPlombiersRecord.tel2,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((listViewPlombiersRecord
                                                                              .tel3 !=
                                                                          null) &&
                                                                      (listViewPlombiersRecord
                                                                              .tel3 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewPlombiersRecord.tel3,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.role,
                                                                          '')) ==
                                                                      'admin')
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              3,
                                                                              0,
                                                                              3),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                200,
                                                                            color:
                                                                                Colors.white,
                                                                            child:
                                                                                ExpandableNotifier(
                                                                              initialExpanded: false,
                                                                              child: ExpandablePanel(
                                                                                header: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Modifier',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Montserrat',
                                                                                            color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                            fontSize: 12,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                collapsed: Container(
                                                                                  decoration: BoxDecoration(),
                                                                                ),
                                                                                expanded: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: plController,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'nom...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: pl1Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 1...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: pl2Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 2...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: pl3Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 3...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                if ((plController.text != null) && (plController.text != '')) {
                                                                                                  final plombiersUpdateData = createPlombiersRecordData(
                                                                                                    nom: plController.text,
                                                                                                  );
                                                                                                  await listViewPlombiersRecord.reference.update(plombiersUpdateData);
                                                                                                }
                                                                                                if ((pl1Controller.text != null) && (pl1Controller.text != '')) {
                                                                                                  final plombiersUpdateData = createPlombiersRecordData(
                                                                                                    tel1: pl1Controller.text,
                                                                                                  );
                                                                                                  await listViewPlombiersRecord.reference.update(plombiersUpdateData);
                                                                                                }
                                                                                                if ((pl2Controller.text != null) && (pl2Controller.text != '')) {
                                                                                                  final plombiersUpdateData = createPlombiersRecordData(
                                                                                                    tel2: pl2Controller.text,
                                                                                                  );
                                                                                                  await listViewPlombiersRecord.reference.update(plombiersUpdateData);
                                                                                                }
                                                                                                if ((pl3Controller.text != null) && (pl3Controller.text != '')) {
                                                                                                  final plombiersUpdateData = createPlombiersRecordData(
                                                                                                    tel3: pl3Controller.text,
                                                                                                  );
                                                                                                  await listViewPlombiersRecord.reference.update(plombiersUpdateData);
                                                                                                }
                                                                                                setState(() {
                                                                                                  pl3Controller?.clear();
                                                                                                  pl2Controller?.clear();
                                                                                                  pl1Controller?.clear();
                                                                                                  plController?.clear();
                                                                                                });
                                                                                              },
                                                                                              text: 'Modifier',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                await listViewPlombiersRecord.reference.delete();
                                                                                              },
                                                                                              text: 'Supprimer',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: Color(0xFFF52B37),
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                theme: ExpandableThemeData(
                                                                                  tapHeaderToExpand: true,
                                                                                  tapBodyToExpand: false,
                                                                                  tapBodyToCollapse: false,
                                                                                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                  hasIcon: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                  theme: ExpandableThemeData(
                                                    tapHeaderToExpand: true,
                                                    tapBodyToExpand: false,
                                                    tapBodyToCollapse: false,
                                                    headerAlignment:
                                                        ExpandablePanelHeaderAlignment
                                                            .center,
                                                    hasIcon: true,
                                                    expandIcon: Icons
                                                        .navigate_next_rounded,
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 15, 0, 0),
                                    child: Container(
                                      width: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Color(0x00000000),
                                              child: ExpandableNotifier(
                                                initialExpanded: false,
                                                child: ExpandablePanel(
                                                  header: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(3,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            'Climatisation',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .title1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  collapsed: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFEEEEEE),
                                                    ),
                                                  ),
                                                  expanded: StreamBuilder<
                                                      List<
                                                          ClimatisationRecord>>(
                                                    stream:
                                                        queryClimatisationRecord(
                                                      queryBuilder:
                                                          (climatisationRecord) =>
                                                              climatisationRecord
                                                                  .orderBy(
                                                                      'nom',
                                                                      descending:
                                                                          true),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 40,
                                                            height: 40,
                                                            child:
                                                                SpinKitCircle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                              size: 40,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<ClimatisationRecord>
                                                          listViewClimatisationRecordList =
                                                          snapshot.data;
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewClimatisationRecordList
                                                                .length,
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewClimatisationRecord =
                                                              listViewClimatisationRecordList[
                                                                  listViewIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                    child: Text(
                                                                      listViewClimatisationRecord
                                                                          .nom,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Montserrat',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryColor,
                                                                            fontSize:
                                                                                13,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          listViewClimatisationRecord
                                                                              .tel1,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 13,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if ((listViewClimatisationRecord
                                                                              .tel2 !=
                                                                          null) &&
                                                                      (listViewClimatisationRecord
                                                                              .tel2 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewClimatisationRecord.tel2,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((listViewClimatisationRecord
                                                                              .tel3 !=
                                                                          null) &&
                                                                      (listViewClimatisationRecord
                                                                              .tel3 !=
                                                                          ''))
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              0,
                                                                              5,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Text(
                                                                            listViewClimatisationRecord.tel3,
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 13,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  if ((valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.role,
                                                                          '')) ==
                                                                      'admin')
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              3,
                                                                              0,
                                                                              3),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                200,
                                                                            color:
                                                                                Colors.white,
                                                                            child:
                                                                                ExpandableNotifier(
                                                                              initialExpanded: false,
                                                                              child: ExpandablePanel(
                                                                                header: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Text(
                                                                                      'Modifier',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Montserrat',
                                                                                            color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                            fontSize: 12,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                collapsed: Container(
                                                                                  decoration: BoxDecoration(),
                                                                                ),
                                                                                expanded: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 2),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: clController,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'nom...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: cl1Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 1...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: cl2Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 2...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 3),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          height: 25,
                                                                                          decoration: BoxDecoration(),
                                                                                          child: TextFormField(
                                                                                            controller: cl3Controller,
                                                                                            autofocus: true,
                                                                                            obscureText: false,
                                                                                            decoration: InputDecoration(
                                                                                              hintText: 'tel 3...',
                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                borderSide: BorderSide(
                                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: BorderRadius.circular(25),
                                                                                              ),
                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Montserrat',
                                                                                                  fontSize: 12,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                if ((clController.text != null) && (clController.text != '')) {
                                                                                                  final climatisationUpdateData = createClimatisationRecordData(
                                                                                                    nom: clController.text,
                                                                                                  );
                                                                                                  await listViewClimatisationRecord.reference.update(climatisationUpdateData);
                                                                                                }
                                                                                                if ((cl1Controller.text != null) && (cl1Controller.text != '')) {
                                                                                                  final climatisationUpdateData = createClimatisationRecordData(
                                                                                                    tel1: cl1Controller.text,
                                                                                                  );
                                                                                                  await listViewClimatisationRecord.reference.update(climatisationUpdateData);
                                                                                                }
                                                                                                if ((cl2Controller.text != null) && (cl2Controller.text != '')) {
                                                                                                  final climatisationUpdateData = createClimatisationRecordData(
                                                                                                    tel2: cl2Controller.text,
                                                                                                  );
                                                                                                  await listViewClimatisationRecord.reference.update(climatisationUpdateData);
                                                                                                }
                                                                                                if ((cl3Controller.text != null) && (cl3Controller.text != '')) {
                                                                                                  final climatisationUpdateData = createClimatisationRecordData(
                                                                                                    tel3: cl3Controller.text,
                                                                                                  );
                                                                                                  await listViewClimatisationRecord.reference.update(climatisationUpdateData);
                                                                                                }
                                                                                                setState(() {
                                                                                                  cl3Controller?.clear();
                                                                                                  cl2Controller?.clear();
                                                                                                  cl1Controller?.clear();
                                                                                                  clController?.clear();
                                                                                                });
                                                                                              },
                                                                                              text: 'Modifier',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            FFButtonWidget(
                                                                                              onPressed: () async {
                                                                                                await listViewClimatisationRecord.reference.delete();
                                                                                              },
                                                                                              text: 'Supprimer',
                                                                                              options: FFButtonOptions(
                                                                                                width: 85,
                                                                                                height: 20,
                                                                                                color: Color(0xFFF52B37),
                                                                                                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                                      fontFamily: 'Lexend Deca',
                                                                                                      color: Colors.white,
                                                                                                      fontSize: 4,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                                borderSide: BorderSide(
                                                                                                  color: Colors.transparent,
                                                                                                  width: 1,
                                                                                                ),
                                                                                                borderRadius: 25,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                theme: ExpandableThemeData(
                                                                                  tapHeaderToExpand: true,
                                                                                  tapBodyToExpand: false,
                                                                                  tapBodyToCollapse: false,
                                                                                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                                                                                  hasIcon: false,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                  theme: ExpandableThemeData(
                                                    tapHeaderToExpand: true,
                                                    tapBodyToExpand: false,
                                                    tapBodyToCollapse: false,
                                                    headerAlignment:
                                                        ExpandablePanelHeaderAlignment
                                                            .center,
                                                    hasIcon: true,
                                                    expandIcon: Icons
                                                        .navigate_next_rounded,
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryColor,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '© 2022 JCI HAMMAM SOUSSE',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).secondaryText,
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
