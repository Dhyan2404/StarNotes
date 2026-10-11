.class public final enum Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;",
        ">;",
        "Lorg/apache/poi/common/usermodel/fonts/FontInfo;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

.field public static final enum ARIAL:Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

.field public static final enum COURIER_NEW:Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

.field public static final enum TIMES_NEW_ROMAN:Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

.field public static final enum WINGDINGS:Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;


# instance fields
.field private charset:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

.field private family:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

.field private pitch:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

.field private typeface:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    new-instance v7, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    const-string v1, "ARIAL"

    const/4 v2, 0x0

    const-string v3, "Arial"

    sget-object v15, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    sget-object v16, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    sget-object v6, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-object v0, v7

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V

    sput-object v7, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->ARIAL:Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    const-string v9, "TIMES_NEW_ROMAN"

    const/4 v10, 0x1

    const-string v11, "Times New Roman"

    sget-object v14, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_ROMAN:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-object v8, v0

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->TIMES_NEW_ROMAN:Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    const-string v9, "COURIER_NEW"

    const/4 v10, 0x2

    const-string v11, "Courier New"

    sget-object v13, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->FIXED:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    sget-object v14, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_MODERN:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->COURIER_NEW:Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    new-instance v2, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    const-string v9, "WINGDINGS"

    const/4 v10, 0x3

    const-string v11, "Wingdings"

    sget-object v12, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->SYMBOL:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    sget-object v14, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_DONTCARE:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    move-object v8, v2

    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V

    sput-object v2, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->WINGDINGS:Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    filled-new-array {v7, v0, v1, v2}, [Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/poi/common/usermodel/fonts/FontCharset;Lorg/apache/poi/common/usermodel/fonts/FontPitch;Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/common/usermodel/fonts/FontCharset;",
            "Lorg/apache/poi/common/usermodel/fonts/FontPitch;",
            "Lorg/apache/poi/common/usermodel/fonts/FontFamily;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->typeface:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->charset:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    iput-object p5, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->pitch:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    iput-object p6, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->family:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    return-object v0
.end method


# virtual methods
.method public getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->charset:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object p0
.end method

.method public getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->family:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object p0
.end method

.method public getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->pitch:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    return-object p0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->typeface:Ljava/lang/String;

    return-object p0
.end method
