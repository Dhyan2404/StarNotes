.class public final enum Lorg/apache/poi/ddf/EscherRecordTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ddf/EscherRecordTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum ALIGN_RULE:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum ANCHOR:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum ARC_RULE:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum BLIP_DIB:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum BLIP_EMF:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum BLIP_END:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum BLIP_JPEG:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum BLIP_PICT:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum BLIP_PNG:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum BLIP_START:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum BLIP_TIFF:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum BLIP_WMF:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum BSE:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum BSTORE_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum CALLOUT_RULE:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum CHILD_ANCHOR:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum CLIENT_ANCHOR:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum CLIENT_DATA:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum CLIENT_RULE:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum CLIENT_TEXTBOX:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum CLSID:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum COLOR_MRU:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum COLOR_SCHEME:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum CONNECTOR_RULE:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum DELETED_PSPL:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum DG:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum DGG:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum DGG_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum DG_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lorg/apache/poi/ddf/EscherRecordTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum OLE_OBJECT:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum OPT:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum REGROUP_ITEMS:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum SELECTION:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum SOLVER_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum SP:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum SPGR:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum SPGR_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum SPLIT_MENU_COLORS:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum SP_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum TEXTBOX:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum UNKNOWN:Lorg/apache/poi/ddf/EscherRecordTypes;

.field public static final enum USER_DEFINED:Lorg/apache/poi/ddf/EscherRecordTypes;


# instance fields
.field public final constructor:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final description:Ljava/lang/String;

.field public final recordName:Ljava/lang/String;

.field public final typeID:S


# direct methods
.method public static constructor <clinit>()V
    .locals 66

    new-instance v8, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object v7, v8

    const-string v1, "DGG_CONTAINER"

    const/4 v2, 0x0

    const v3, 0xf000

    const-string v4, "DggContainer"

    const/4 v5, 0x0

    new-instance v6, Lcom/sunia/HTREnginev2/ize;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/ize;-><init>()V

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v8, Lorg/apache/poi/ddf/EscherRecordTypes;->DGG_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object v8, v0

    const-string v10, "BSTORE_CONTAINER"

    const/4 v11, 0x1

    const v12, 0xf001

    const-string v13, "BStoreContainer"

    const/4 v14, 0x0

    new-instance v15, Lcom/sunia/HTREnginev2/ize;

    invoke-direct {v15}, Lcom/sunia/HTREnginev2/ize;-><init>()V

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BSTORE_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object v9, v0

    const-string v17, "DG_CONTAINER"

    const/16 v18, 0x2

    const v19, 0xf002

    const-string v20, "DgContainer"

    const/16 v21, 0x0

    new-instance v22, Lcom/sunia/HTREnginev2/ize;

    invoke-direct/range {v22 .. v22}, Lcom/sunia/HTREnginev2/ize;-><init>()V

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->DG_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object v10, v0

    const-string v24, "SPGR_CONTAINER"

    const/16 v25, 0x3

    const v26, 0xf003

    const-string v27, "SpgrContainer"

    const/16 v28, 0x0

    new-instance v29, Lcom/sunia/HTREnginev2/ize;

    invoke-direct/range {v29 .. v29}, Lcom/sunia/HTREnginev2/ize;-><init>()V

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v29}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SPGR_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object v11, v0

    const-string v13, "SP_CONTAINER"

    const/4 v14, 0x4

    const v15, 0xf004

    const-string v16, "SpContainer"

    const/16 v17, 0x0

    new-instance v18, Lcom/sunia/HTREnginev2/ize;

    invoke-direct/range {v18 .. v18}, Lcom/sunia/HTREnginev2/ize;-><init>()V

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SP_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object v12, v0

    const-string v20, "SOLVER_CONTAINER"

    const/16 v21, 0x5

    const v22, 0xf005

    const-string v23, "SolverContainer"

    const/16 v24, 0x0

    new-instance v25, Lcom/sunia/HTREnginev2/ize;

    invoke-direct/range {v25 .. v25}, Lcom/sunia/HTREnginev2/ize;-><init>()V

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SOLVER_CONTAINER:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object v13, v0

    const-string v27, "DGG"

    const/16 v28, 0x6

    const v29, 0xf006

    const-string v30, "Dgg"

    const-string v31, "MsofbtDgg"

    new-instance v32, Lcom/sunia/HTREnginev2/lvf;

    invoke-direct/range {v32 .. v32}, Lcom/sunia/HTREnginev2/lvf;-><init>()V

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v32}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->DGG:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object v14, v0

    const-string v16, "BSE"

    const/16 v17, 0x7

    const v18, 0xf007

    const-string v19, "BSE"

    const-string v20, "MsofbtBSE"

    new-instance v21, Lcom/sunia/HTREnginev2/mvf;

    invoke-direct/range {v21 .. v21}, Lcom/sunia/HTREnginev2/mvf;-><init>()V

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BSE:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object v15, v0

    const-string v23, "DG"

    const/16 v24, 0x8

    const v25, 0xf008

    const-string v26, "Dg"

    const-string v27, "MsofbtDg"

    new-instance v28, Lcom/sunia/HTREnginev2/nvf;

    invoke-direct/range {v28 .. v28}, Lcom/sunia/HTREnginev2/nvf;-><init>()V

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v28}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->DG:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v16, v0

    const-string v30, "SPGR"

    const/16 v31, 0x9

    const v32, 0xf009

    const-string v33, "Spgr"

    const-string v34, "MsofbtSpgr"

    new-instance v35, Lcom/sunia/HTREnginev2/ovf;

    invoke-direct/range {v35 .. v35}, Lcom/sunia/HTREnginev2/ovf;-><init>()V

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v35}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SPGR:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v17, v0

    const-string v19, "SP"

    const/16 v20, 0xa

    const v21, 0xf00a

    const-string v22, "Sp"

    const-string v23, "MsofbtSp"

    new-instance v24, Lcom/sunia/HTREnginev2/jvf;

    invoke-direct/range {v24 .. v24}, Lcom/sunia/HTREnginev2/jvf;-><init>()V

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v24}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SP:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v18, v0

    const-string v26, "OPT"

    const/16 v27, 0xb

    const v28, 0xf00b

    const-string v29, "Opt"

    const-string v30, "msofbtOPT"

    new-instance v31, Lcom/sunia/HTREnginev2/pvf;

    invoke-direct/range {v31 .. v31}, Lcom/sunia/HTREnginev2/pvf;-><init>()V

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v31}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->OPT:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v19, v0

    const-string v33, "TEXTBOX"

    const/16 v34, 0xc

    const v35, 0xf00c

    const/16 v36, 0x0

    const/16 v37, 0x0

    new-instance v38, Lcom/sunia/HTREnginev2/qvf;

    invoke-direct/range {v38 .. v38}, Lcom/sunia/HTREnginev2/qvf;-><init>()V

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v38}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->TEXTBOX:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v20, v0

    const-string v22, "CLIENT_TEXTBOX"

    const/16 v23, 0xd

    const v24, 0xf00d

    const-string v25, "ClientTextbox"

    const-string v26, "msofbtClientTextbox"

    new-instance v27, Lcom/sunia/HTREnginev2/qvf;

    invoke-direct/range {v27 .. v27}, Lcom/sunia/HTREnginev2/qvf;-><init>()V

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v27}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_TEXTBOX:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v21, v0

    const-string v29, "ANCHOR"

    const/16 v30, 0xe

    const v31, 0xf00e

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v34}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->ANCHOR:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v22, v0

    const-string v36, "CHILD_ANCHOR"

    const/16 v37, 0xf

    const v38, 0xf00f

    const-string v39, "ChildAnchor"

    const-string v40, "MsofbtChildAnchor"

    new-instance v41, Lcom/sunia/HTREnginev2/rvf;

    invoke-direct/range {v41 .. v41}, Lcom/sunia/HTREnginev2/rvf;-><init>()V

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v41}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CHILD_ANCHOR:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v23, v0

    const-string v25, "CLIENT_ANCHOR"

    const/16 v26, 0x10

    const v27, 0xf010

    const-string v28, "ClientAnchor"

    const-string v29, "MsofbtClientAnchor"

    new-instance v30, Lcom/sunia/HTREnginev2/svf;

    invoke-direct/range {v30 .. v30}, Lcom/sunia/HTREnginev2/svf;-><init>()V

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v30}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_ANCHOR:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v24, v0

    const-string v32, "CLIENT_DATA"

    const/16 v33, 0x11

    const v34, 0xf011

    const-string v35, "ClientData"

    const-string v36, "MsofbtClientData"

    new-instance v37, Lcom/sunia/HTREnginev2/tvf;

    invoke-direct/range {v37 .. v37}, Lcom/sunia/HTREnginev2/tvf;-><init>()V

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v37}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_DATA:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v25, v0

    const-string v39, "CONNECTOR_RULE"

    const/16 v40, 0x12

    const v41, 0xf012

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v44}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CONNECTOR_RULE:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v26, v0

    const-string v28, "ALIGN_RULE"

    const/16 v29, 0x13

    const v30, 0xf013

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v27, v0

    invoke-direct/range {v27 .. v33}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->ALIGN_RULE:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v27, v0

    const-string v35, "ARC_RULE"

    const/16 v36, 0x14

    const v37, 0xf014

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v34, v0

    invoke-direct/range {v34 .. v40}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->ARC_RULE:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v28, v0

    const-string v42, "CLIENT_RULE"

    const/16 v43, 0x15

    const v44, 0xf015

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v47}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLIENT_RULE:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v29, v0

    const-string v31, "CLSID"

    const/16 v32, 0x16

    const v33, 0xf016

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v30, v0

    invoke-direct/range {v30 .. v36}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CLSID:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v30, v0

    const-string v38, "CALLOUT_RULE"

    const/16 v39, 0x17

    const v40, 0xf017

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v37, v0

    invoke-direct/range {v37 .. v43}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->CALLOUT_RULE:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v31, v0

    const-string v45, "BLIP_START"

    const/16 v46, 0x18

    const v47, 0xf018

    const-string v48, "Blip"

    const-string v49, "msofbtBlip"

    const/16 v50, 0x0

    move-object/from16 v44, v0

    invoke-direct/range {v44 .. v50}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_START:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v32, v0

    const-string v34, "BLIP_EMF"

    const/16 v35, 0x19

    const v36, 0xf01a

    const-string v37, "BlipEmf"

    const/16 v38, 0x0

    new-instance v39, Lcom/sunia/HTREnginev2/uvf;

    invoke-direct/range {v39 .. v39}, Lcom/sunia/HTREnginev2/uvf;-><init>()V

    move-object/from16 v33, v0

    invoke-direct/range {v33 .. v39}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_EMF:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v33, v0

    const-string v41, "BLIP_WMF"

    const/16 v42, 0x1a

    const v43, 0xf01b

    const-string v44, "BlipWmf"

    const/16 v45, 0x0

    new-instance v46, Lcom/sunia/HTREnginev2/uvf;

    invoke-direct/range {v46 .. v46}, Lcom/sunia/HTREnginev2/uvf;-><init>()V

    move-object/from16 v40, v0

    invoke-direct/range {v40 .. v46}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_WMF:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v34, v0

    const-string v48, "BLIP_PICT"

    const/16 v49, 0x1b

    const v50, 0xf01c

    const-string v51, "BlipPict"

    const/16 v52, 0x0

    new-instance v53, Lcom/sunia/HTREnginev2/uvf;

    invoke-direct/range {v53 .. v53}, Lcom/sunia/HTREnginev2/uvf;-><init>()V

    move-object/from16 v47, v0

    invoke-direct/range {v47 .. v53}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_PICT:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v35, v0

    const-string v37, "BLIP_JPEG"

    const/16 v38, 0x1c

    const v39, 0xf01d

    const-string v40, "BlipJpeg"

    const/16 v41, 0x0

    new-instance v42, Lcom/sunia/HTREnginev2/vvf;

    invoke-direct/range {v42 .. v42}, Lcom/sunia/HTREnginev2/vvf;-><init>()V

    move-object/from16 v36, v0

    invoke-direct/range {v36 .. v42}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_JPEG:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v36, v0

    const-string v44, "BLIP_PNG"

    const/16 v45, 0x1d

    const v46, 0xf01e

    const-string v47, "BlipPng"

    const/16 v48, 0x0

    new-instance v49, Lcom/sunia/HTREnginev2/vvf;

    invoke-direct/range {v49 .. v49}, Lcom/sunia/HTREnginev2/vvf;-><init>()V

    move-object/from16 v43, v0

    invoke-direct/range {v43 .. v49}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_PNG:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v37, v0

    const-string v51, "BLIP_DIB"

    const/16 v52, 0x1e

    const v53, 0xf01f

    const-string v54, "BlipDib"

    const/16 v55, 0x0

    new-instance v56, Lcom/sunia/HTREnginev2/vvf;

    invoke-direct/range {v56 .. v56}, Lcom/sunia/HTREnginev2/vvf;-><init>()V

    move-object/from16 v50, v0

    invoke-direct/range {v50 .. v56}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_DIB:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v38, v0

    const-string v40, "BLIP_TIFF"

    const/16 v41, 0x1f

    const v42, 0xf029

    const-string v43, "BlipTiff"

    const/16 v44, 0x0

    new-instance v45, Lcom/sunia/HTREnginev2/vvf;

    invoke-direct/range {v45 .. v45}, Lcom/sunia/HTREnginev2/vvf;-><init>()V

    move-object/from16 v39, v0

    invoke-direct/range {v39 .. v45}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_TIFF:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v39, v0

    const-string v47, "BLIP_END"

    const/16 v48, 0x20

    const v49, 0xf117

    const-string v50, "Blip"

    const-string v51, "msofbtBlip"

    const/16 v52, 0x0

    move-object/from16 v46, v0

    invoke-direct/range {v46 .. v52}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_END:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v40, v0

    const-string v54, "REGROUP_ITEMS"

    const/16 v55, 0x21

    const v56, 0xf118

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    move-object/from16 v53, v0

    invoke-direct/range {v53 .. v59}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->REGROUP_ITEMS:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v41, v0

    const-string v43, "SELECTION"

    const/16 v44, 0x22

    const v45, 0xf119

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v42, v0

    invoke-direct/range {v42 .. v48}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SELECTION:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v42, v0

    const-string v50, "COLOR_MRU"

    const/16 v51, 0x23

    const v52, 0xf11a

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    move-object/from16 v49, v0

    invoke-direct/range {v49 .. v55}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->COLOR_MRU:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v43, v0

    const-string v57, "DELETED_PSPL"

    const/16 v58, 0x24

    const v59, 0xf11d

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v56, v0

    invoke-direct/range {v56 .. v62}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->DELETED_PSPL:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v44, v0

    const-string v46, "SPLIT_MENU_COLORS"

    const/16 v47, 0x25

    const v48, 0xf11e

    const-string v49, "SplitMenuColors"

    const-string v50, "MsofbtSplitMenuColors"

    new-instance v51, Lcom/sunia/HTREnginev2/wvf;

    invoke-direct/range {v51 .. v51}, Lcom/sunia/HTREnginev2/wvf;-><init>()V

    move-object/from16 v45, v0

    invoke-direct/range {v45 .. v51}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->SPLIT_MENU_COLORS:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v45, v0

    const-string v53, "OLE_OBJECT"

    const/16 v54, 0x26

    const v55, 0xf11f

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v52, v0

    invoke-direct/range {v52 .. v58}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->OLE_OBJECT:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v46, v0

    const-string v60, "COLOR_SCHEME"

    const/16 v61, 0x27

    const v62, 0xf120

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    move-object/from16 v59, v0

    invoke-direct/range {v59 .. v65}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->COLOR_SCHEME:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v47, v0

    const-string v49, "USER_DEFINED"

    const/16 v50, 0x28

    const v51, 0xf122

    const-string v52, "TertiaryOpt"

    const/16 v53, 0x0

    new-instance v54, Lcom/sunia/HTREnginev2/xvf;

    invoke-direct/range {v54 .. v54}, Lcom/sunia/HTREnginev2/xvf;-><init>()V

    move-object/from16 v48, v0

    invoke-direct/range {v48 .. v54}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->USER_DEFINED:Lorg/apache/poi/ddf/EscherRecordTypes;

    new-instance v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    move-object/from16 v48, v0

    const-string v56, "UNKNOWN"

    const/16 v57, 0x29

    const v58, 0xffff

    const-string v59, "unknown"

    const-string v60, "unknown"

    new-instance v61, Lcom/sunia/HTREnginev2/kze;

    invoke-direct/range {v61 .. v61}, Lcom/sunia/HTREnginev2/kze;-><init>()V

    move-object/from16 v55, v0

    invoke-direct/range {v55 .. v61}, Lorg/apache/poi/ddf/EscherRecordTypes;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->UNKNOWN:Lorg/apache/poi/ddf/EscherRecordTypes;

    filled-new-array/range {v7 .. v48}, [Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->$VALUES:[Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-static {}, Lorg/apache/poi/ddf/EscherRecordTypes;->values()[Lorg/apache/poi/ddf/EscherRecordTypes;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/kvf;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/kvf;-><init>()V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->LOOKUP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "+",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-short p1, p3

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    iput-object p4, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->recordName:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->description:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->constructor:Ljava/util/function/Supplier;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/ddf/EscherRecordTypes;)Ljava/lang/Short;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecordTypes;->getTypeId()Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public static forTypeID(I)Lorg/apache/poi/ddf/EscherRecordTypes;
    .locals 1

    const v0, 0xf02a

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->BLIP_JPEG:Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->LOOKUP:Ljava/util/Map;

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherRecordTypes;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/poi/ddf/EscherRecordTypes;->UNKNOWN:Lorg/apache/poi/ddf/EscherRecordTypes;

    :goto_0
    return-object p0
.end method

.method private getTypeId()Ljava/lang/Short;
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ddf/EscherRecordTypes;
    .locals 1

    const-class v0, Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ddf/EscherRecordTypes;
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->$VALUES:[Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-virtual {v0}, [Lorg/apache/poi/ddf/EscherRecordTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ddf/EscherRecordTypes;

    return-object v0
.end method
