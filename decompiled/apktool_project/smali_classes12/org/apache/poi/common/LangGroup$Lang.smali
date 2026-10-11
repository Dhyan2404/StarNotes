.class public final enum Lorg/apache/poi/common/LangGroup$Lang;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/common/LangGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Lang"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/LangGroup$Lang;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum ASSAMESE_INDIA:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum BENGALI_BANGLADESH:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum BENGALI_INDIA:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum CHEROKEE:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum DARI:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum ETHIOPIA:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum GUJARATI:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum HEBREW:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum HINDI:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum JAPAN:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum KHMER:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum KNIN:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum KOKIN:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum KOKR:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum KUARABIQ:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum LOLA:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum MARATHI:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum MLIN:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum NEPALI:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum ORIYA:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum PERSIAN:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum PUNJABI:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum PUNJABI_ARABIC_PAKISTAN:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum SAUDI_ARABIA:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum SINDH:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum SINHALA:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum SYRIA:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum SYRIA_ARABIA:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum TAMIL:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum TELUGU:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum THAI:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum TIGRINYA:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum UNKNOWN:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum URDU:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum US:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum UYGUR:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum ZH_CN:Lorg/apache/poi/common/LangGroup$Lang;

.field public static final enum ZH_TW:Lorg/apache/poi/common/LangGroup$Lang;


# instance fields
.field private abbr:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 42

    new-instance v1, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "en-US"

    const-string v4, "US"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/common/LangGroup$Lang;->US:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v2, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "zh-CN"

    const-string v5, "ZH_CN"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/common/LangGroup$Lang;->ZH_CN:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v3, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "zh-TW"

    const-string v6, "ZH_TW"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/common/LangGroup$Lang;->ZH_TW:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v4, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "am-ET"

    const-string v7, "ETHIOPIA"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/common/LangGroup$Lang;->ETHIOPIA:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v5, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "ar-SA"

    const-string v8, "SAUDI_ARABIA"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/common/LangGroup$Lang;->SAUDI_ARABIA:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v6, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "ar-SY"

    const-string v9, "SYRIA_ARABIA"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/common/LangGroup$Lang;->SYRIA_ARABIA:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v7, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "as-IN"

    const-string v10, "ASSAMESE_INDIA"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/common/LangGroup$Lang;->ASSAMESE_INDIA:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v8, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "bn-BD"

    const-string v11, "BENGALI_BANGLADESH"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/common/LangGroup$Lang;->BENGALI_BANGLADESH:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v9, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "bn-IN"

    const-string v12, "BENGALI_INDIA"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/common/LangGroup$Lang;->BENGALI_INDIA:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v10, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "chr-Cher-US"

    const-string v13, "CHEROKEE"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/common/LangGroup$Lang;->CHEROKEE:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v11, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "fa-IR"

    const-string v14, "PERSIAN"

    invoke-direct {v11, v14, v12, v13}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/common/LangGroup$Lang;->PERSIAN:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v12, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "gu-IN"

    const-string v15, "GUJARATI"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/common/LangGroup$Lang;->GUJARATI:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v13, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "he-IL"

    move-object/from16 v38, v0

    const-string v0, "HEBREW"

    invoke-direct {v13, v0, v14, v15}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/common/LangGroup$Lang;->HEBREW:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "hi-IN"

    move-object/from16 v39, v1

    const-string v1, "HINDI"

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->HINDI:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "ja-JP"

    move-object/from16 v40, v2

    const-string v2, "JAPAN"

    invoke-direct {v0, v2, v1, v15}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->JAPAN:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "km-KH"

    move-object/from16 v41, v3

    const-string v3, "KHMER"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->KHMER:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "kn-IN"

    const-string v3, "KNIN"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->KNIN:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "kok-IN"

    const-string v3, "KOKIN"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->KOKIN:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "ko-KR"

    const-string v3, "KOKR"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->KOKR:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "ku-Arab-IQ"

    const-string v3, "KUARABIQ"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->KUARABIQ:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "lo-LA"

    const-string v3, "LOLA"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->LOLA:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "ml-IN"

    const-string v3, "MLIN"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->MLIN:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "mr-IN"

    const-string v3, "MARATHI"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->MARATHI:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "ne-NP"

    const-string v3, "NEPALI"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->NEPALI:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "or-IN"

    const-string v3, "ORIYA"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->ORIYA:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-string v2, "pa-Arab-PK"

    const-string v3, "PUNJABI_ARABIC_PAKISTAN"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->PUNJABI_ARABIC_PAKISTAN:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-string v2, "pa-IN"

    const-string v3, "PUNJABI"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->PUNJABI:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const-string v2, "prs-AF"

    const-string v3, "DARI"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->DARI:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const-string v2, "sd-Arab-PK"

    const-string v3, "SINDH"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->SINDH:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const-string v2, "si-LK"

    const-string v3, "SINHALA"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->SINHALA:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const-string v2, "syr-SY"

    const-string v3, "SYRIA"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->SYRIA:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v31, v0

    const/16 v1, 0x1f

    const-string v2, "ta-IN"

    const-string v3, "TAMIL"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->TAMIL:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v32, v0

    const/16 v1, 0x20

    const-string v2, "te-IN"

    const-string v3, "TELUGU"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->TELUGU:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v33, v0

    const/16 v1, 0x21

    const-string v2, "th-TH"

    const-string v3, "THAI"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->THAI:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v34, v0

    const/16 v1, 0x22

    const-string v2, "ti-ET"

    const-string v3, "TIGRINYA"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->TIGRINYA:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v35, v0

    const/16 v1, 0x23

    const-string v2, "ug-CN"

    const-string v3, "UYGUR"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->UYGUR:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v36, v0

    const/16 v1, 0x24

    const-string v2, "ur-PK"

    const-string v3, "URDU"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->URDU:Lorg/apache/poi/common/LangGroup$Lang;

    new-instance v0, Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v37, v0

    const/16 v1, 0x25

    const-string v2, ""

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$Lang;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->UNKNOWN:Lorg/apache/poi/common/LangGroup$Lang;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    filled-new-array/range {v0 .. v37}, [Lorg/apache/poi/common/LangGroup$Lang;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/LangGroup$Lang;->$VALUES:[Lorg/apache/poi/common/LangGroup$Lang;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/common/LangGroup$Lang;->abbr:Ljava/lang/String;

    return-void
.end method

.method public static getLang(Ljava/lang/String;)Lorg/apache/poi/common/LangGroup$Lang;
    .locals 5

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/apache/poi/common/LangGroup$Lang;->values()[Lorg/apache/poi/common/LangGroup$Lang;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/common/LangGroup$Lang;->abbr:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/apache/poi/common/LangGroup$Lang;->UNKNOWN:Lorg/apache/poi/common/LangGroup$Lang;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lorg/apache/poi/common/LangGroup$Lang;->UNKNOWN:Lorg/apache/poi/common/LangGroup$Lang;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/LangGroup$Lang;
    .locals 1

    const-class v0, Lorg/apache/poi/common/LangGroup$Lang;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/LangGroup$Lang;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/LangGroup$Lang;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/LangGroup$Lang;->$VALUES:[Lorg/apache/poi/common/LangGroup$Lang;

    invoke-virtual {v0}, [Lorg/apache/poi/common/LangGroup$Lang;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/LangGroup$Lang;

    return-object v0
.end method
