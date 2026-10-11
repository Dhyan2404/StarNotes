.class public final enum Lorg/apache/poi/common/LangGroup$FontScript;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/common/LangGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontScript"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/common/LangGroup$FontScript;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum ARAB:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum BENG:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum ENGLISH:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum ETHI:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum GUJR:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum HANG:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum HANS:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum HANT:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum HEBREW:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum JAPAN:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum KHMR:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum KNDA:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum THAI:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum UNKNOWN:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum ZH_CN:Lorg/apache/poi/common/LangGroup$FontScript;

.field public static final enum ZH_TW:Lorg/apache/poi/common/LangGroup$FontScript;


# instance fields
.field private script:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v0, Lorg/apache/poi/common/LangGroup$FontScript;

    const/4 v1, 0x0

    const-string v2, "US"

    const-string v3, "ENGLISH"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/common/LangGroup$FontScript;->ENGLISH:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v1, Lorg/apache/poi/common/LangGroup$FontScript;

    const/4 v2, 0x1

    const-string v3, "Jpan"

    const-string v4, "JAPAN"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/common/LangGroup$FontScript;->JAPAN:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v2, Lorg/apache/poi/common/LangGroup$FontScript;

    const/4 v3, 0x2

    const-string v4, "Hang"

    const-string v5, "HANG"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/common/LangGroup$FontScript;->HANG:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v3, Lorg/apache/poi/common/LangGroup$FontScript;

    const/4 v4, 0x3

    const-string v5, "Hans"

    const-string v6, "HANS"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/common/LangGroup$FontScript;->HANS:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v4, Lorg/apache/poi/common/LangGroup$FontScript;

    const/4 v5, 0x4

    const-string v6, "Hant"

    const-string v7, "HANT"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/common/LangGroup$FontScript;->HANT:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v5, Lorg/apache/poi/common/LangGroup$FontScript;

    const/4 v6, 0x5

    const-string v7, "Arab"

    const-string v8, "ARAB"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/common/LangGroup$FontScript;->ARAB:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v6, Lorg/apache/poi/common/LangGroup$FontScript;

    const/4 v7, 0x6

    const-string v8, "Hebr"

    const-string v9, "HEBREW"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/common/LangGroup$FontScript;->HEBREW:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v7, Lorg/apache/poi/common/LangGroup$FontScript;

    const/4 v8, 0x7

    const-string v9, "Thai"

    const-string v10, "THAI"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/common/LangGroup$FontScript;->THAI:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v8, Lorg/apache/poi/common/LangGroup$FontScript;

    const/16 v9, 0x8

    const-string v10, "Ethi"

    const-string v11, "ETHI"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/common/LangGroup$FontScript;->ETHI:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v9, Lorg/apache/poi/common/LangGroup$FontScript;

    const/16 v10, 0x9

    const-string v11, "Beng"

    const-string v12, "BENG"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/common/LangGroup$FontScript;->BENG:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v10, Lorg/apache/poi/common/LangGroup$FontScript;

    const/16 v11, 0xa

    const-string v12, "Gujr"

    const-string v13, "GUJR"

    invoke-direct {v10, v13, v11, v12}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/poi/common/LangGroup$FontScript;->GUJR:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v11, Lorg/apache/poi/common/LangGroup$FontScript;

    const/16 v12, 0xb

    const-string v13, "Khmr"

    const-string v14, "KHMR"

    invoke-direct {v11, v14, v12, v13}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/apache/poi/common/LangGroup$FontScript;->KHMR:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v12, Lorg/apache/poi/common/LangGroup$FontScript;

    const/16 v13, 0xc

    const-string v14, "Knda"

    const-string v15, "KNDA"

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/poi/common/LangGroup$FontScript;->KNDA:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v13, Lorg/apache/poi/common/LangGroup$FontScript;

    const/16 v14, 0xd

    const-string v15, "zh_CN"

    move-object/from16 v16, v12

    const-string v12, "ZH_CN"

    invoke-direct {v13, v12, v14, v15}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/poi/common/LangGroup$FontScript;->ZH_CN:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v14, Lorg/apache/poi/common/LangGroup$FontScript;

    const/16 v12, 0xe

    const-string v15, "zh_TW"

    move-object/from16 v17, v13

    const-string v13, "ZH_TW"

    invoke-direct {v14, v13, v12, v15}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lorg/apache/poi/common/LangGroup$FontScript;->ZH_TW:Lorg/apache/poi/common/LangGroup$FontScript;

    new-instance v15, Lorg/apache/poi/common/LangGroup$FontScript;

    const/16 v12, 0xf

    const-string v13, ""

    move-object/from16 v18, v14

    const-string v14, "UNKNOWN"

    invoke-direct {v15, v14, v12, v13}, Lorg/apache/poi/common/LangGroup$FontScript;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lorg/apache/poi/common/LangGroup$FontScript;->UNKNOWN:Lorg/apache/poi/common/LangGroup$FontScript;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    filled-new-array/range {v0 .. v15}, [Lorg/apache/poi/common/LangGroup$FontScript;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/common/LangGroup$FontScript;->$VALUES:[Lorg/apache/poi/common/LangGroup$FontScript;

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

    iput-object p3, p0, Lorg/apache/poi/common/LangGroup$FontScript;->script:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/common/LangGroup$FontScript;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/LangGroup$FontScript;->script:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/common/LangGroup$FontScript;
    .locals 1

    const-class v0, Lorg/apache/poi/common/LangGroup$FontScript;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/common/LangGroup$FontScript;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/common/LangGroup$FontScript;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/LangGroup$FontScript;->$VALUES:[Lorg/apache/poi/common/LangGroup$FontScript;

    invoke-virtual {v0}, [Lorg/apache/poi/common/LangGroup$FontScript;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/common/LangGroup$FontScript;

    return-object v0
.end method


# virtual methods
.method public getScript()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/LangGroup$FontScript;->script:Ljava/lang/String;

    return-object p0
.end method
