.class final enum Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/util/LocaleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapFormatPPT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum AR_SA:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum EN_AU:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum EN_US:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum HE_IL:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum HI_IN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum JA_JP:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum KO_KR:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field private static final LCID_LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/util/LocaleID;",
            "Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NO_MAP:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum SV_SE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum SYR_SY:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum TH_TH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum VI_VN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum ZH_CN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum ZH_HK:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum ZH_MO:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum ZH_SG:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

.field public static final enum ZH_TW:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;


# instance fields
.field private final lcid:Lorg/apache/poi/util/LocaleID;

.field private final mapping:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 64

    new-instance v1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v0, v1

    sget-object v2, Lorg/apache/poi/util/LocaleID;->EN_US:Lorg/apache/poi/util/LocaleID;

    const-string v3, "MM/dd/yyyy"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v30, v38

    const/16 v14, 0x8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v45, v39

    const-string v6, "MMMM dd, yyyy"

    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v33, v46

    const/16 v12, 0x9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v34, v47

    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v35, v48

    const/16 v10, 0xb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    move-object/from16 v36, v49

    const/16 v9, 0xc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v37, v50

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "h:mm a"

    const-string v19, "h:mm:ss a"

    move-object/from16 v4, v38

    move-object/from16 v5, v39

    move/from16 v51, v7

    move-object/from16 v7, v46

    move/from16 v52, v8

    move-object/from16 v8, v47

    move-object/from16 v53, v0

    move v0, v9

    move-object/from16 v9, v48

    move v0, v10

    move-object/from16 v10, v49

    move v0, v11

    move-object/from16 v11, v50

    move v0, v12

    move-object/from16 v12, v16

    move v0, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move v0, v15

    move-object/from16 v15, v19

    filled-new-array/range {v3 .. v15}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "EN_US"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v29, v57

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->EN_US:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v2, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v1, v2

    sget-object v3, Lorg/apache/poi/util/LocaleID;->EN_AU:Lorg/apache/poi/util/LocaleID;

    const-string v18, "d MMMM, yyy"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    move-object/from16 v32, v58

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v14, 0xd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v40, v15

    const/16 v13, 0xe

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    move-object/from16 v41, v59

    move-object/from16 v16, v57

    move-object/from16 v17, v38

    move-object/from16 v19, v58

    move-object/from16 v20, v46

    move-object/from16 v21, v47

    move-object/from16 v22, v48

    move-object/from16 v23, v49

    move-object/from16 v24, v50

    move-object/from16 v27, v15

    move-object/from16 v28, v59

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "EN_AU"

    invoke-direct {v2, v6, v0, v3, v5}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->EN_AU:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v2, v0

    sget-object v3, Lorg/apache/poi/util/LocaleID;->JA_JP:Lorg/apache/poi/util/LocaleID;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v42, v60

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    move-object/from16 v44, v61

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v31, v62

    const-string v25, "HH:mm"

    const-string v26, "HH:mm:ss"

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v16, v60

    move-object/from16 v17, v39

    move-object/from16 v18, v61

    move-object/from16 v19, v62

    move-object/from16 v20, v57

    move-object/from16 v22, v46

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v7

    const-string v9, "JA_JP"

    invoke-direct {v0, v9, v4, v3, v7}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->JA_JP:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v3, v0

    sget-object v4, Lorg/apache/poi/util/LocaleID;->ZH_TW:Lorg/apache/poi/util/LocaleID;

    const-string v25, "HH:mm"

    const-string v26, "HH:mm:ss"

    const-string v27, "H:mm a"

    const-string v28, "H:mm:ss a"

    move-object/from16 v16, v57

    move-object/from16 v17, v38

    move-object/from16 v18, v62

    move-object/from16 v19, v61

    move-object/from16 v20, v50

    move-object/from16 v22, v48

    move-object/from16 v23, v60

    move-object/from16 v24, v49

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v7

    const-string v9, "ZH_TW"

    invoke-direct {v0, v9, v6, v4, v7}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->ZH_TW:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v4, v0

    sget-object v6, Lorg/apache/poi/util/LocaleID;->KO_KR:Lorg/apache/poi/util/LocaleID;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v43, v63

    const-string v25, "HH:mm"

    const-string v26, "HH:mm:ss"

    move-object/from16 v18, v63

    move-object/from16 v19, v62

    move-object/from16 v20, v60

    move-object/from16 v21, v48

    move-object/from16 v22, v61

    move-object/from16 v23, v50

    move-object/from16 v27, v15

    move-object/from16 v28, v59

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "KO_KR"

    invoke-direct {v0, v10, v5, v6, v9}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->KO_KR:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v5, v0

    sget-object v6, Lorg/apache/poi/util/LocaleID;->AR_SA:Lorg/apache/poi/util/LocaleID;

    move-object/from16 v18, v58

    move-object/from16 v21, v46

    move-object/from16 v22, v39

    move-object/from16 v23, v61

    move-object/from16 v24, v39

    move-object/from16 v25, v38

    move-object/from16 v26, v48

    move-object/from16 v27, v49

    move-object/from16 v28, v46

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "AR_SA"

    const/4 v11, 0x5

    invoke-direct {v0, v10, v11, v6, v9}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->AR_SA:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v6, v0

    sget-object v9, Lorg/apache/poi/util/LocaleID;->HE_IL:Lorg/apache/poi/util/LocaleID;

    move-object/from16 v19, v63

    move-object/from16 v20, v49

    move-object/from16 v22, v50

    move-object/from16 v25, v47

    move-object/from16 v26, v38

    move-object/from16 v28, v63

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "HE_IL"

    invoke-direct {v0, v11, v7, v9, v10}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->HE_IL:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v7, v0

    sget-object v9, Lorg/apache/poi/util/LocaleID;->SV_SE:Lorg/apache/poi/util/LocaleID;

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v18, v62

    move-object/from16 v19, v58

    move-object/from16 v20, v61

    move-object/from16 v21, v47

    move-object/from16 v22, v48

    move-object/from16 v23, v49

    move-object/from16 v24, v50

    move-object/from16 v27, v15

    move-object/from16 v28, v59

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "SV_SE"

    invoke-direct {v0, v11, v8, v9, v10}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->SV_SE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v8, v0

    sget-object v9, Lorg/apache/poi/util/LocaleID;->ZH_CN:Lorg/apache/poi/util/LocaleID;

    const-string v23, "yyyy\u5e74M\u6708d\u65e5h\u65f6m\u5206"

    const-string v24, "yyyy\u5e74M\u6708d\u65e5\u661f\u671fWh\u65f6m\u5206s\u79d2"

    const-string v25, "HH:mm"

    const-string v26, "HH:mm:ss"

    const-string v27, "a h\u65f6m\u5206"

    const-string v28, "a h\u65f6m\u5206s\u79d2"

    move-object/from16 v18, v58

    move-object/from16 v20, v60

    move-object/from16 v22, v46

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "ZH_CN"

    const/16 v12, 0x8

    invoke-direct {v0, v11, v12, v9, v10}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->ZH_CN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v9, v0

    sget-object v10, Lorg/apache/poi/util/LocaleID;->ZH_SG:Lorg/apache/poi/util/LocaleID;

    const-string v23, "yyyy\u5e74M\u6708d\u65e5h\u65f6m\u5206"

    const-string v24, "yyyy\u5e74M\u6708d\u65e5\u661f\u671fWh\u65f6m\u5206s\u79d2"

    const-string v25, "HH:mm"

    const-string v26, "HH:mm:ss"

    const-string v27, "a h\u65f6m\u5206"

    const-string v28, "a h\u65f6m\u5206s\u79d2"

    move-object/from16 v18, v62

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "ZH_SG"

    const/16 v13, 0x9

    invoke-direct {v0, v12, v13, v10, v11}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->ZH_SG:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v10, v0

    sget-object v11, Lorg/apache/poi/util/LocaleID;->ZH_MO:Lorg/apache/poi/util/LocaleID;

    const-string v23, "yyyy\u5e74M\u6708d\u65e5h\u65f6m\u5206"

    const-string v24, "yyyy\u5e74M\u6708d\u65e5\u661f\u671fWh\u65f6m\u5206s\u79d2"

    const-string v25, "HH:mm"

    const-string v26, "HH:mm:ss"

    const-string v27, "a h\u65f6m\u5206"

    const-string v28, "a h\u65f6m\u5206s\u79d2"

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "ZH_MO"

    const/16 v14, 0xa

    invoke-direct {v0, v13, v14, v11, v12}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->ZH_MO:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v11, v0

    sget-object v12, Lorg/apache/poi/util/LocaleID;->ZH_HK:Lorg/apache/poi/util/LocaleID;

    const-string v23, "yyyy\u5e74M\u6708d\u65e5h\u65f6m\u5206"

    const-string v24, "yyyy\u5e74M\u6708d\u65e5\u661f\u671fWh\u65f6m\u5206s\u79d2"

    const-string v25, "HH:mm"

    const-string v26, "HH:mm:ss"

    const-string v27, "a h\u65f6m\u5206"

    const-string v28, "a h\u65f6m\u5206s\u79d2"

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "ZH_HK"

    move-object/from16 v56, v1

    const/16 v1, 0xb

    invoke-direct {v0, v14, v1, v12, v13}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->ZH_HK:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v12, v0

    sget-object v1, Lorg/apache/poi/util/LocaleID;->TH_TH:Lorg/apache/poi/util/LocaleID;

    move-object/from16 v18, v58

    move-object/from16 v19, v62

    move-object/from16 v20, v46

    move-object/from16 v21, v63

    move-object/from16 v22, v61

    move-object/from16 v23, v39

    move-object/from16 v24, v47

    move-object/from16 v25, v48

    move-object/from16 v26, v49

    move-object/from16 v27, v15

    move-object/from16 v28, v59

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "TH_TH"

    move-object/from16 v55, v2

    const/16 v2, 0xc

    invoke-direct {v0, v14, v2, v1, v13}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->TH_TH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    const/16 v1, 0xe

    move-object v13, v0

    sget-object v2, Lorg/apache/poi/util/LocaleID;->VI_VN:Lorg/apache/poi/util/LocaleID;

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v22, v48

    move-object/from16 v23, v49

    move-object/from16 v24, v50

    move-object/from16 v25, v15

    move-object/from16 v26, v59

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v14

    const-string v1, "VI_VN"

    move-object/from16 v54, v3

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2, v14}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->VI_VN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v14, v0

    sget-object v1, Lorg/apache/poi/util/LocaleID;->HI_IN:Lorg/apache/poi/util/LocaleID;

    move-object/from16 v16, v38

    move-object/from16 v17, v58

    move-object/from16 v18, v62

    move-object/from16 v19, v46

    move-object/from16 v20, v61

    move-object/from16 v21, v49

    move-object/from16 v22, v15

    move-object/from16 v23, v57

    move-object/from16 v24, v38

    move-object/from16 v25, v46

    move-object/from16 v26, v48

    move-object/from16 v27, v49

    move-object/from16 v28, v59

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "HI_IN"

    const/16 v15, 0xe

    invoke-direct {v0, v3, v15, v1, v2}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->HI_IN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object v15, v0

    sget-object v1, Lorg/apache/poi/util/LocaleID;->SYR_SY:Lorg/apache/poi/util/LocaleID;

    move-object/from16 v16, v57

    move-object/from16 v17, v38

    move-object/from16 v18, v58

    move-object/from16 v19, v62

    move-object/from16 v20, v60

    move-object/from16 v21, v46

    move-object/from16 v22, v63

    move-object/from16 v23, v61

    move-object/from16 v24, v39

    move-object/from16 v25, v47

    move-object/from16 v28, v50

    filled-new-array/range {v16 .. v28}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "SYR_SY"

    move-object/from16 v17, v4

    move/from16 v4, v52

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->SYR_SY:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object/from16 v16, v0

    sget-object v1, Lorg/apache/poi/util/LocaleID;->INVALID_O:Lorg/apache/poi/util/LocaleID;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    filled-new-array/range {v29 .. v45}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "NO_MAP"

    move/from16 v4, v51

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;-><init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->NO_MAP:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-object/from16 v4, v17

    move-object/from16 v0, v53

    move-object/from16 v3, v54

    move-object/from16 v2, v55

    move-object/from16 v1, v56

    filled-new-array/range {v0 .. v16}, [Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->$VALUES:[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    invoke-static {}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->values()[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hslf/util/f;

    invoke-direct {v1}, Lorg/apache/poi/hslf/util/f;-><init>()V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->LCID_LOOKUP:Ljava/util/Map;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/LocaleID;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->lcid:Lorg/apache/poi/util/LocaleID;

    iput-object p4, p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->mapping:[Ljava/lang/Object;

    return-void
.end method

.method public static mapFormatId(Lorg/apache/poi/util/LocaleID;I)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->LCID_LOOKUP:Ljava/util/Map;

    sget-object v1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->NO_MAP:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    iget-object p0, p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->mapping:[Ljava/lang/Object;

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->$VALUES:[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;

    return-object v0
.end method


# virtual methods
.method public getLocaleID()Lorg/apache/poi/util/LocaleID;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatPPT;->lcid:Lorg/apache/poi/util/LocaleID;

    return-object p0
.end method
