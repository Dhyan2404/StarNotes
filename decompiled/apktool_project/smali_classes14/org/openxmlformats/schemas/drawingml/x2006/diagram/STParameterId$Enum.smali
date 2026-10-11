.class public final Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_ALIGN_TX:I = 0x30

.field static final INT_AR:I = 0x2a

.field static final INT_AUTO_TX_ROT:I = 0x1f

.field static final INT_BEG_PTS:I = 0x36

.field static final INT_BEG_STY:I = 0xb

.field static final INT_BEND_PT:I = 0x9

.field static final INT_BKPT:I = 0x23

.field static final INT_BK_PT_FIXED_VAL:I = 0x26

.field static final INT_CH_ALIGN:I = 0x4

.field static final INT_CH_DIR:I = 0x3

.field static final INT_CONN_ROUT:I = 0xa

.field static final INT_CONT_DIR:I = 0x22

.field static final INT_CTR_SHP_MAP:I = 0xf

.field static final INT_DIM:I = 0xd

.field static final INT_DST_NODE:I = 0x35

.field static final INT_END_PTS:I = 0x37

.field static final INT_END_STY:I = 0xc

.field static final INT_FALLBACK:I = 0x12

.field static final INT_FLOW_DIR:I = 0x21

.field static final INT_GR_DIR:I = 0x20

.field static final INT_HIER_ALIGN:I = 0x25

.field static final INT_HORZ_ALIGN:I = 0x1

.field static final INT_LIN_DIR:I = 0x6

.field static final INT_LN_SP_AF_CH_P:I = 0x2e

.field static final INT_LN_SP_AF_PAR_P:I = 0x2c

.field static final INT_LN_SP_CH:I = 0x2d

.field static final INT_LN_SP_PAR:I = 0x2b

.field static final INT_NODE_HORZ_ALIGN:I = 0x10

.field static final INT_NODE_VERT_ALIGN:I = 0x11

.field static final INT_OFF:I = 0x24

.field static final INT_PAR_TX_LTR_ALIGN:I = 0x1b

.field static final INT_PAR_TX_RTL_ALIGN:I = 0x1c

.field static final INT_PYRA_ACCT_BKGD_NODE:I = 0x32

.field static final INT_PYRA_ACCT_POS:I = 0x14

.field static final INT_PYRA_ACCT_TX_MAR:I = 0x15

.field static final INT_PYRA_ACCT_TX_NODE:I = 0x33

.field static final INT_PYRA_LVL_NODE:I = 0x31

.field static final INT_ROT_PATH:I = 0xe

.field static final INT_RT_SHORT_DIST:I = 0x2f

.field static final INT_SEC_CH_ALIGN:I = 0x5

.field static final INT_SEC_LIN_DIR:I = 0x7

.field static final INT_SHP_TX_LTR_ALIGN_CH:I = 0x1d

.field static final INT_SHP_TX_RTL_ALIGN_CH:I = 0x1e

.field static final INT_SPAN_ANG:I = 0x29

.field static final INT_SRC_NODE:I = 0x34

.field static final INT_ST_ANG:I = 0x28

.field static final INT_ST_BULLET_LVL:I = 0x27

.field static final INT_ST_ELEM:I = 0x8

.field static final INT_TX_ANCHOR_HORZ:I = 0x17

.field static final INT_TX_ANCHOR_HORZ_CH:I = 0x19

.field static final INT_TX_ANCHOR_VERT:I = 0x18

.field static final INT_TX_ANCHOR_VERT_CH:I = 0x1a

.field static final INT_TX_BL_DIR:I = 0x16

.field static final INT_TX_DIR:I = 0x13

.field static final INT_VERT_ALIGN:I = 0x2

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 59

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v2, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v1, v2

    const-string v3, "horzAlign"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v2, v3

    const-string v4, "vertAlign"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v3, v4

    const-string v5, "chDir"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v4, v5

    const-string v6, "chAlign"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v5, v6

    const-string v7, "secChAlign"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v6, v7

    const-string v8, "linDir"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v7, v8

    const-string v9, "secLinDir"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v8, v9

    const-string v10, "stElem"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v9, v10

    const-string v11, "bendPt"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v10, v11

    const-string v12, "connRout"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v11, v12

    const-string v13, "begSty"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v13, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v12, v13

    const-string v14, "endSty"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v14, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v13, v14

    const-string v15, "dim"

    move-object/from16 v56, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v14, v0

    const-string v15, "rotPath"

    move-object/from16 v57, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object v15, v0

    const-string v1, "ctrShpMap"

    move-object/from16 v58, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v16, v0

    const-string v1, "nodeHorzAlign"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v17, v0

    const-string v1, "nodeVertAlign"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v18, v0

    const-string v1, "fallback"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v19, v0

    const-string v1, "txDir"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v20, v0

    const-string v1, "pyraAcctPos"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v21, v0

    const-string v1, "pyraAcctTxMar"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v22, v0

    const-string v1, "txBlDir"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v23, v0

    const-string v1, "txAnchorHorz"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v24, v0

    const-string v1, "txAnchorVert"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v25, v0

    const-string v1, "txAnchorHorzCh"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v26, v0

    const-string v1, "txAnchorVertCh"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v27, v0

    const-string v1, "parTxLTRAlign"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v28, v0

    const-string v1, "parTxRTLAlign"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v29, v0

    const-string v1, "shpTxLTRAlignCh"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v30, v0

    const-string v1, "shpTxRTLAlignCh"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v31, v0

    const-string v1, "autoTxRot"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v32, v0

    const-string v1, "grDir"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v33, v0

    const-string v1, "flowDir"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v34, v0

    const-string v1, "contDir"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v35, v0

    const-string v1, "bkpt"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v36, v0

    const-string v1, "off"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v37, v0

    const-string v1, "hierAlign"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v38, v0

    const-string v1, "bkPtFixedVal"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v39, v0

    const-string v1, "stBulletLvl"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v40, v0

    const-string v1, "stAng"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v41, v0

    const-string v1, "spanAng"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v42, v0

    const-string v1, "ar"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v43, v0

    const-string v1, "lnSpPar"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v44, v0

    const-string v1, "lnSpAfParP"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v45, v0

    const-string v1, "lnSpCh"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v46, v0

    const-string v1, "lnSpAfChP"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v47, v0

    const-string v1, "rtShortDist"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v48, v0

    const-string v1, "alignTx"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v49, v0

    const-string v1, "pyraLvlNode"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v50, v0

    const-string v1, "pyraAcctBkgdNode"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v51, v0

    const-string v1, "pyraAcctTxNode"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v52, v0

    const-string v1, "srcNode"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v53, v0

    const-string v1, "dstNode"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v54, v0

    const-string v1, "begPts"

    const/16 v2, 0x36

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-object/from16 v55, v0

    const-string v1, "endPts"

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;-><init>(Ljava/lang/String;I)V

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    filled-new-array/range {v1 .. v55}, [Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-result-object v0

    move-object/from16 v1, v56

    invoke-direct {v1, v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v1, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STParameterId$Enum;

    move-result-object p0

    return-object p0
.end method
