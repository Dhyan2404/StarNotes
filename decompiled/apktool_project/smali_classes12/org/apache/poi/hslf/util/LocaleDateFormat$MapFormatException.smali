.class final enum Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/util/LocaleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapFormatException"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum BOKMAL:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum CHINESE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum CZECH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum DANISH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum DUTCH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum FINISH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum FRENCH_CANADIAN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum GERMAN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum HINDI:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum HUNGARIAN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum ITALIAN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum JAPANESE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field public static final enum KOREAN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

.field private static final LCID_LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/util/LocaleID;",
            "Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NO_MAP:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;


# instance fields
.field private final lcid:[Lorg/apache/poi/util/LocaleID;

.field private final mapping:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 228

    new-instance v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v1, Lorg/apache/poi/util/LocaleID;->ZH:Lorg/apache/poi/util/LocaleID;

    sget-object v2, Lorg/apache/poi/util/LocaleID;->ZH_HANS:Lorg/apache/poi/util/LocaleID;

    sget-object v3, Lorg/apache/poi/util/LocaleID;->ZH_HANT:Lorg/apache/poi/util/LocaleID;

    sget-object v4, Lorg/apache/poi/util/LocaleID;->ZH_CN:Lorg/apache/poi/util/LocaleID;

    sget-object v5, Lorg/apache/poi/util/LocaleID;->ZH_SG:Lorg/apache/poi/util/LocaleID;

    sget-object v6, Lorg/apache/poi/util/LocaleID;->ZH_MO:Lorg/apache/poi/util/LocaleID;

    sget-object v7, Lorg/apache/poi/util/LocaleID;->ZH_HK:Lorg/apache/poi/util/LocaleID;

    sget-object v8, Lorg/apache/poi/util/LocaleID;->ZH_YUE_HK:Lorg/apache/poi/util/LocaleID;

    filled-new-array/range {v1 .. v8}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v211, v3

    move-object/from16 v194, v3

    move-object/from16 v177, v3

    move-object/from16 v160, v3

    move-object/from16 v143, v3

    move-object/from16 v126, v3

    move-object/from16 v109, v3

    move-object/from16 v92, v3

    move-object/from16 v75, v3

    move-object/from16 v58, v3

    move-object/from16 v41, v3

    move-object/from16 v23, v3

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v212, v4

    move-object/from16 v195, v4

    move-object/from16 v178, v4

    move-object/from16 v161, v4

    move-object/from16 v144, v4

    move-object/from16 v127, v4

    move-object/from16 v93, v4

    move-object/from16 v76, v4

    move-object/from16 v59, v4

    move-object/from16 v42, v4

    move-object/from16 v24, v4

    const-string v5, "yyyy\u5e74M\u6708d\u65e5\u661f\u671fW"

    const-string v6, "yyyy\u5e74M\u6708d\u65e5"

    const-string v7, "yyyy/M/d"

    const-string v8, "yy.M.d"

    const-string v9, "yyyy\u5e74M\u6708d\u65e5\u661f\u671fW"

    const-string v10, "yyyy\u5e74M\u6708d\u65e5"

    const-string v11, "yyyy\u5e74M\u6708d\u65e5\u661f\u671fW"

    const-string v12, "yyyy\u5e74M\u6708"

    const-string v13, "yyyy\u5e74M\u6708"

    const-string v14, "h\u65f6m\u5206s\u79d2"

    const-string v16, "h\u65f6m\u5206"

    move-object/from16 v15, v16

    const-string v16, "h\u65f6m\u5206"

    const-string v17, "h\u65f6m\u5206"

    const-string v18, "ah\u65f6m\u5206"

    const-string v19, "ah\u65f6m\u5206"

    const-string v20, "EEEE\u5e74O\u6708A\u65e5"

    const-string v21, "EEEE\u5e74O\u6708A\u65e5\u661f\u671fW"

    const-string v22, "EEEE\u5e74O\u6708"

    filled-new-array/range {v3 .. v22}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "CHINESE"

    invoke-direct {v0, v4, v2, v1, v3}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->CHINESE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v2, Lorg/apache/poi/util/LocaleID;->HI:Lorg/apache/poi/util/LocaleID;

    sget-object v3, Lorg/apache/poi/util/LocaleID;->HI_IN:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v2, v3}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v2

    const-string v3, "dd/M/g"

    const-string v4, "dddd, d MMMM yyyy"

    const-string v5, "dd MMMM yyyy"

    const-string v6, "dd/M/yy"

    const-string v7, "yy-M-dd"

    const-string v8, "d-MMMM-yyyy"

    const-string v9, "dd.M.g"

    const-string v10, "dd MMMM. yy"

    const-string v11, "dd MMMM yy"

    const-string v12, "MMMM YY"

    const-string v13, "MMMM-g"

    const-string v14, "dd/M/g HH:mm"

    const-string v15, "dd/M/g HH:mm:ss"

    const-string v16, "HH:mm a"

    const-string v17, "HH:mm:ss a"

    const-string v18, "HH:mm"

    const-string v19, "HH:mm:ss"

    filled-new-array/range {v3 .. v19}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "HINDI"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->HINDI:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v2, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v3, Lorg/apache/poi/util/LocaleID;->JA:Lorg/apache/poi/util/LocaleID;

    sget-object v4, Lorg/apache/poi/util/LocaleID;->JA_JP:Lorg/apache/poi/util/LocaleID;

    sget-object v5, Lorg/apache/poi/util/LocaleID;->JA_PLOC_JP:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v3, v4, v5}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v3

    const-string v25, "EEEy\u5e74M\u6708d\u65e5"

    const-string v26, "yyyy\u5e74M\u6708d\u65e5"

    const-string v27, "yyyy/M/d"

    const-string v28, "yyyy\u5e74M\u6708d\u65e5"

    const-string v29, "yy\u5e74M\u6708d\u65e5"

    const-string v30, "yyyy\u5e74M\u6708d\u65e5"

    const-string v31, "yyyy\u5e74M\u6708d\u65e5(EEE)"

    const-string v32, "yyyy\u5e74M\u6708"

    const-string v33, "yyyy\u5e74M\u6708"

    const-string v34, "yy/M/d H\u6642m\u5206"

    const-string v35, "yy/M/d H\u6642m\u5206s\u79d2"

    const-string v36, "a h\u6642m\u5206"

    const-string v37, "a h\u6642m\u5206s\u79d2"

    const-string v38, "H\u6642m\u5206"

    const-string v39, "H\u6642m\u5206s\u79d2"

    const-string v40, "yyyy\u5e74M\u6708d\u65e5 EEE\u66dc\u65e5"

    filled-new-array/range {v23 .. v40}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "JAPANESE"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v213, v60

    move-object/from16 v196, v60

    move-object/from16 v179, v60

    move-object/from16 v162, v60

    move-object/from16 v145, v60

    move-object/from16 v128, v60

    move-object/from16 v94, v60

    move-object/from16 v77, v60

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v2, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->JAPANESE:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v3, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v4, Lorg/apache/poi/util/LocaleID;->KO:Lorg/apache/poi/util/LocaleID;

    sget-object v5, Lorg/apache/poi/util/LocaleID;->KO_KR:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v4, v5}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v4

    const-string v43, "yyyy\ub144 M\uc6d4 d\uc77c EEE\uc694\uc77c"

    const-string v44, "yyyy\ub144 M\uc6d4 d\uc77c"

    const-string v45, "yyyy/M/d"

    const-string v46, "yyMMdd"

    const-string v47, "yyyy\ub144 M\uc6d4 d\uc77c"

    const-string v48, "yyyy\ub144 M\uc6d4"

    const-string v49, "yyyy\ub144 M\uc6d4 d\uc77c"

    const-string v50, "yyyy"

    const-string v51, "yyyy\ub144 M\uc6d4"

    const-string v52, "yyyy\ub144 M\uc6d4 d\uc77c a h\uc2dc m\ubd84"

    const-string v53, "yy\ub144 M\uc6d4 d\uc77c H\uc2dc m\ubd84 s\ucd08"

    const-string v54, "a h\uc2dc m\ubd84"

    const-string v55, "a h\uc2dc m\ubd84 s\ucd08"

    const-string v56, "H\uc2dc m\ubd84"

    const-string v57, "H\uc2dc m\ubd84 S\ucd08"

    filled-new-array/range {v41 .. v57}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "KOREAN"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v61

    move-object/from16 v214, v61

    move-object/from16 v197, v61

    move-object/from16 v180, v61

    move-object/from16 v146, v61

    move-object/from16 v129, v61

    move-object/from16 v95, v61

    move-object/from16 v78, v61

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v3, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->KOREAN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v4, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v5, Lorg/apache/poi/util/LocaleID;->HU:Lorg/apache/poi/util/LocaleID;

    sget-object v6, Lorg/apache/poi/util/LocaleID;->HU_HU:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v5, v6}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    move-object/from16 v215, v62

    move-object/from16 v198, v62

    move-object/from16 v181, v62

    move-object/from16 v164, v62

    move-object/from16 v147, v62

    move-object/from16 v130, v62

    move-object/from16 v113, v62

    move-object/from16 v96, v62

    move-object/from16 v79, v62

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v216, v63

    move-object/from16 v165, v63

    move-object/from16 v148, v63

    move-object/from16 v131, v63

    move-object/from16 v97, v63

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v217, v64

    move-object/from16 v200, v64

    move-object/from16 v183, v64

    move-object/from16 v166, v64

    move-object/from16 v149, v64

    move-object/from16 v132, v64

    move-object/from16 v98, v64

    const-string v65, "yy. MMM. dd."

    const-string v66, "\u2019yy MMM."

    const-string v67, "MMMM \u2019yy"

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v221, v68

    move-object/from16 v204, v68

    move-object/from16 v187, v68

    move-object/from16 v170, v68

    move-object/from16 v153, v68

    move-object/from16 v136, v68

    move-object/from16 v102, v68

    const/16 v10, 0xb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    move-object/from16 v222, v69

    move-object/from16 v205, v69

    move-object/from16 v188, v69

    move-object/from16 v171, v69

    move-object/from16 v154, v69

    move-object/from16 v137, v69

    move-object/from16 v120, v69

    move-object/from16 v103, v69

    move-object/from16 v86, v69

    const/16 v11, 0xc

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    move-object/from16 v223, v70

    move-object/from16 v206, v70

    move-object/from16 v189, v70

    move-object/from16 v172, v70

    move-object/from16 v155, v70

    move-object/from16 v138, v70

    move-object/from16 v121, v70

    move-object/from16 v104, v70

    move-object/from16 v87, v70

    const-string v71, "a h:mm"

    const-string v72, "a h:mm:ss"

    const/16 v12, 0xf

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v226, v73

    move-object/from16 v209, v73

    move-object/from16 v192, v73

    move-object/from16 v175, v73

    move-object/from16 v158, v73

    move-object/from16 v141, v73

    move-object/from16 v124, v73

    move-object/from16 v107, v73

    move-object/from16 v90, v73

    const/16 v12, 0x10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v74

    move-object/from16 v227, v74

    move-object/from16 v210, v74

    move-object/from16 v193, v74

    move-object/from16 v176, v74

    move-object/from16 v159, v74

    move-object/from16 v142, v74

    move-object/from16 v125, v74

    move-object/from16 v108, v74

    move-object/from16 v91, v74

    filled-new-array/range {v58 .. v74}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "HUNGARIAN"

    invoke-direct {v4, v13, v6, v5, v12}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v4, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->HUNGARIAN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v5, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v6, Lorg/apache/poi/util/LocaleID;->NB_NO:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v6}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v6

    const-string v80, "d. MMM. yyyy"

    const-string v81, "d/m yyyy"

    const-string v82, "MMM. yy"

    const-string v83, "yyyy.mm.dd"

    const/16 v12, 0x9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v84

    const-string v85, "d. MMM."

    const/16 v13, 0xd

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v88

    move-object/from16 v224, v88

    move-object/from16 v207, v88

    move-object/from16 v190, v88

    move-object/from16 v173, v88

    move-object/from16 v156, v88

    move-object/from16 v139, v88

    move-object/from16 v122, v88

    move-object/from16 v105, v88

    const/16 v14, 0xe

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v89

    move-object/from16 v225, v89

    move-object/from16 v208, v89

    move-object/from16 v191, v89

    move-object/from16 v174, v89

    move-object/from16 v157, v89

    move-object/from16 v140, v89

    move-object/from16 v123, v89

    move-object/from16 v106, v89

    filled-new-array/range {v75 .. v91}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "BOKMAL"

    invoke-direct {v5, v15, v7, v6, v14}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v5, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->BOKMAL:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v6, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v7, Lorg/apache/poi/util/LocaleID;->CS:Lorg/apache/poi/util/LocaleID;

    sget-object v14, Lorg/apache/poi/util/LocaleID;->CS_CZ:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v7, v14}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v7

    const/4 v14, 0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v99

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v100

    move-object/from16 v219, v100

    move-object/from16 v185, v100

    move-object/from16 v168, v100

    move-object/from16 v151, v100

    move-object/from16 v134, v100

    const-string v101, "MMMM \u2019yy"

    filled-new-array/range {v92 .. v108}, [Ljava/lang/Object;

    move-result-object v13

    const-string v11, "CZECH"

    invoke-direct {v6, v11, v8, v7, v13}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v6, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->CZECH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v7, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v8, Lorg/apache/poi/util/LocaleID;->DA:Lorg/apache/poi/util/LocaleID;

    sget-object v11, Lorg/apache/poi/util/LocaleID;->DA_DK:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v8, v11}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v8

    const-string v110, "d. MMMM yyyy"

    const-string v111, "yy-MM-dd"

    const-string v112, "yyyy.MM.dd"

    const-string v114, "MMMM yyyy"

    const-string v115, "d.M.yy"

    const-string v116, "d/M yyyy"

    const-string v117, "dd.MM.yyyy"

    const-string v118, "d.M.yyyy"

    const-string v119, "dd/MM yyyy"

    filled-new-array/range {v109 .. v125}, [Ljava/lang/Object;

    move-result-object v11

    const-string v13, "DANISH"

    invoke-direct {v7, v13, v14, v8, v11}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v7, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->DANISH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v8, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v11, Lorg/apache/poi/util/LocaleID;->NL:Lorg/apache/poi/util/LocaleID;

    sget-object v13, Lorg/apache/poi/util/LocaleID;->NL_BE:Lorg/apache/poi/util/LocaleID;

    sget-object v10, Lorg/apache/poi/util/LocaleID;->NL_NL:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v11, v13, v10}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v133

    const-string v135, "MMMM \u2019yy"

    filled-new-array/range {v126 .. v142}, [Ljava/lang/Object;

    move-result-object v11

    const-string v13, "DUTCH"

    invoke-direct {v8, v13, v15, v10, v11}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v8, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->DUTCH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v10, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v11, Lorg/apache/poi/util/LocaleID;->FI:Lorg/apache/poi/util/LocaleID;

    sget-object v13, Lorg/apache/poi/util/LocaleID;->FI_FI:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v11, v13}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v150

    const-string v152, "MMMM \u2019yy"

    filled-new-array/range {v143 .. v159}, [Ljava/lang/Object;

    move-result-object v13

    const-string v15, "FINISH"

    invoke-direct {v10, v15, v12, v11, v13}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v10, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->FINISH:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v11, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v13, Lorg/apache/poi/util/LocaleID;->FR_CA:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v13}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v13

    const-string v163, "yy MM dd"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v167

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v169

    filled-new-array/range {v160 .. v176}, [Ljava/lang/Object;

    move-result-object v15

    const-string v14, "FRENCH_CANADIAN"

    invoke-direct {v11, v14, v9, v13, v15}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v11, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->FRENCH_CANADIAN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v13, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v20, Lorg/apache/poi/util/LocaleID;->DE:Lorg/apache/poi/util/LocaleID;

    sget-object v21, Lorg/apache/poi/util/LocaleID;->DE_AT:Lorg/apache/poi/util/LocaleID;

    sget-object v22, Lorg/apache/poi/util/LocaleID;->DE_CH:Lorg/apache/poi/util/LocaleID;

    sget-object v23, Lorg/apache/poi/util/LocaleID;->DE_DE:Lorg/apache/poi/util/LocaleID;

    sget-object v24, Lorg/apache/poi/util/LocaleID;->DE_LI:Lorg/apache/poi/util/LocaleID;

    sget-object v25, Lorg/apache/poi/util/LocaleID;->DE_LU:Lorg/apache/poi/util/LocaleID;

    filled-new-array/range {v20 .. v25}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v9

    const-string v182, "yy-MM-dd"

    const-string v184, "dd. MMM. yyyy"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v186

    filled-new-array/range {v177 .. v193}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "GERMAN"

    const/16 v12, 0xb

    invoke-direct {v13, v15, v12, v9, v14}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v13, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->GERMAN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v12, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v9, Lorg/apache/poi/util/LocaleID;->IT:Lorg/apache/poi/util/LocaleID;

    sget-object v14, Lorg/apache/poi/util/LocaleID;->IT_IT:Lorg/apache/poi/util/LocaleID;

    sget-object v15, Lorg/apache/poi/util/LocaleID;->IT_CH:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v9, v14, v15}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v9

    const-string v199, "d-MMM.-yy"

    const-string v201, "d. MMM. yy"

    const-string v202, "MMM. \u2019yy"

    const-string v203, "MMMM \u2019yy"

    filled-new-array/range {v194 .. v210}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "ITALIAN"

    move-object/from16 v18, v13

    const/16 v13, 0xc

    invoke-direct {v12, v15, v13, v9, v14}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v12, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->ITALIAN:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    new-instance v13, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    sget-object v9, Lorg/apache/poi/util/LocaleID;->INVALID_O:Lorg/apache/poi/util/LocaleID;

    filled-new-array {v9}, [Lorg/apache/poi/util/LocaleID;

    move-result-object v9

    const/4 v14, 0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v218

    const/16 v14, 0x9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v220

    filled-new-array/range {v211 .. v227}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "NO_MAP"

    move-object/from16 v17, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v9, v14}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;-><init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V

    sput-object v13, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->NO_MAP:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v17

    filled-new-array/range {v0 .. v13}, [Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->$VALUES:[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    invoke-static {}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->values()[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hslf/util/c;

    invoke-direct {v1}, Lorg/apache/poi/hslf/util/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/f1j;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/f1j;-><init>()V

    new-instance v2, Lorg/apache/poi/hslf/util/d;

    invoke-direct {v2}, Lorg/apache/poi/hslf/util/d;-><init>()V

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->LCID_LOOKUP:Ljava/util/Map;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lorg/apache/poi/util/LocaleID;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/poi/util/LocaleID;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->lcid:[Lorg/apache/poi/util/LocaleID;

    iput-object p4, p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->mapping:[Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;Lorg/apache/poi/util/LocaleID;)Ljava/util/AbstractMap$SimpleEntry;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->lambda$null$0(Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;Lorg/apache/poi/util/LocaleID;)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->lambda$static$1(Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$null$0(Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;Lorg/apache/poi/util/LocaleID;)Ljava/util/AbstractMap$SimpleEntry;
    .locals 1

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p1, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic lambda$static$1(Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;)Ljava/util/stream/Stream;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->lcid:[Lorg/apache/poi/util/LocaleID;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hslf/util/e;

    invoke-direct {v1, p0}, Lorg/apache/poi/hslf/util/e;-><init>(Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static mapFormatId(Lorg/apache/poi/util/LocaleID;I)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->LCID_LOOKUP:Ljava/util/Map;

    sget-object v1, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->NO_MAP:Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    iget-object p0, p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->mapping:[Ljava/lang/Object;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->$VALUES:[Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/util/LocaleDateFormat$MapFormatException;

    return-object v0
.end method
