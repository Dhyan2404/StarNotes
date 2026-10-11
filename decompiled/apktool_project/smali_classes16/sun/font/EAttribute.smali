.class public final enum Lsun/font/EAttribute;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/font/EAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/font/EAttribute;

.field public static final enum EBACKGROUND:Lsun/font/EAttribute;

.field public static final enum EBASELINE_TRANSFORM:Lsun/font/EAttribute;

.field public static final enum EBIDI_EMBEDDING:Lsun/font/EAttribute;

.field public static final enum ECHAR_REPLACEMENT:Lsun/font/EAttribute;

.field public static final enum EFAMILY:Lsun/font/EAttribute;

.field public static final enum EFONT:Lsun/font/EAttribute;

.field public static final enum EFOREGROUND:Lsun/font/EAttribute;

.field public static final enum EINPUT_METHOD_HIGHLIGHT:Lsun/font/EAttribute;

.field public static final enum EINPUT_METHOD_UNDERLINE:Lsun/font/EAttribute;

.field public static final enum EJUSTIFICATION:Lsun/font/EAttribute;

.field public static final enum EKERNING:Lsun/font/EAttribute;

.field public static final enum ELIGATURES:Lsun/font/EAttribute;

.field public static final enum ENUMERIC_SHAPING:Lsun/font/EAttribute;

.field public static final enum EPOSTURE:Lsun/font/EAttribute;

.field public static final enum ERUN_DIRECTION:Lsun/font/EAttribute;

.field public static final enum ESIZE:Lsun/font/EAttribute;

.field public static final enum ESTRIKETHROUGH:Lsun/font/EAttribute;

.field public static final enum ESUPERSCRIPT:Lsun/font/EAttribute;

.field public static final enum ESWAP_COLORS:Lsun/font/EAttribute;

.field public static final enum ETRACKING:Lsun/font/EAttribute;

.field public static final enum ETRANSFORM:Lsun/font/EAttribute;

.field public static final enum EUNDERLINE:Lsun/font/EAttribute;

.field public static final enum EWEIGHT:Lsun/font/EAttribute;

.field public static final enum EWIDTH:Lsun/font/EAttribute;

.field static final atts:[Lsun/font/EAttribute;


# instance fields
.field final att:Ljava/awt/font/TextAttribute;

.field final mask:I


# direct methods
.method public static constructor <clinit>()V
    .locals 28

    new-instance v1, Lsun/font/EAttribute;

    move-object v0, v1

    const/4 v2, 0x0

    sget-object v3, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    const-string v4, "EFAMILY"

    invoke-direct {v1, v4, v2, v3}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v1, Lsun/font/EAttribute;->EFAMILY:Lsun/font/EAttribute;

    new-instance v2, Lsun/font/EAttribute;

    move-object v1, v2

    const/4 v3, 0x1

    sget-object v4, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    const-string v5, "EWEIGHT"

    invoke-direct {v2, v5, v3, v4}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v2, Lsun/font/EAttribute;->EWEIGHT:Lsun/font/EAttribute;

    new-instance v3, Lsun/font/EAttribute;

    move-object v2, v3

    const/4 v4, 0x2

    sget-object v5, Ljava/awt/font/TextAttribute;->WIDTH:Ljava/awt/font/TextAttribute;

    const-string v6, "EWIDTH"

    invoke-direct {v3, v6, v4, v5}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v3, Lsun/font/EAttribute;->EWIDTH:Lsun/font/EAttribute;

    new-instance v4, Lsun/font/EAttribute;

    move-object v3, v4

    const/4 v5, 0x3

    sget-object v6, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    const-string v7, "EPOSTURE"

    invoke-direct {v4, v7, v5, v6}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v4, Lsun/font/EAttribute;->EPOSTURE:Lsun/font/EAttribute;

    new-instance v5, Lsun/font/EAttribute;

    move-object v4, v5

    const/4 v6, 0x4

    sget-object v7, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    const-string v8, "ESIZE"

    invoke-direct {v5, v8, v6, v7}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v5, Lsun/font/EAttribute;->ESIZE:Lsun/font/EAttribute;

    new-instance v6, Lsun/font/EAttribute;

    move-object v5, v6

    const/4 v7, 0x5

    sget-object v8, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    const-string v9, "ETRANSFORM"

    invoke-direct {v6, v9, v7, v8}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v6, Lsun/font/EAttribute;->ETRANSFORM:Lsun/font/EAttribute;

    new-instance v7, Lsun/font/EAttribute;

    move-object v6, v7

    const/4 v8, 0x6

    sget-object v9, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    const-string v10, "ESUPERSCRIPT"

    invoke-direct {v7, v10, v8, v9}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v7, Lsun/font/EAttribute;->ESUPERSCRIPT:Lsun/font/EAttribute;

    new-instance v8, Lsun/font/EAttribute;

    move-object v7, v8

    const/4 v9, 0x7

    sget-object v10, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    const-string v11, "EFONT"

    invoke-direct {v8, v11, v9, v10}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v8, Lsun/font/EAttribute;->EFONT:Lsun/font/EAttribute;

    new-instance v9, Lsun/font/EAttribute;

    move-object v8, v9

    const/16 v10, 0x8

    sget-object v11, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    const-string v12, "ECHAR_REPLACEMENT"

    invoke-direct {v9, v12, v10, v11}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v9, Lsun/font/EAttribute;->ECHAR_REPLACEMENT:Lsun/font/EAttribute;

    new-instance v10, Lsun/font/EAttribute;

    move-object v9, v10

    const/16 v11, 0x9

    sget-object v12, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    const-string v13, "EFOREGROUND"

    invoke-direct {v10, v13, v11, v12}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v10, Lsun/font/EAttribute;->EFOREGROUND:Lsun/font/EAttribute;

    new-instance v11, Lsun/font/EAttribute;

    move-object v10, v11

    const/16 v12, 0xa

    sget-object v13, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    const-string v14, "EBACKGROUND"

    invoke-direct {v11, v14, v12, v13}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v11, Lsun/font/EAttribute;->EBACKGROUND:Lsun/font/EAttribute;

    new-instance v12, Lsun/font/EAttribute;

    move-object v11, v12

    const/16 v13, 0xb

    sget-object v14, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    const-string v15, "EUNDERLINE"

    invoke-direct {v12, v15, v13, v14}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v12, Lsun/font/EAttribute;->EUNDERLINE:Lsun/font/EAttribute;

    new-instance v13, Lsun/font/EAttribute;

    move-object v12, v13

    const/16 v14, 0xc

    sget-object v15, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    move-object/from16 v24, v0

    const-string v0, "ESTRIKETHROUGH"

    invoke-direct {v13, v0, v14, v15}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v13, Lsun/font/EAttribute;->ESTRIKETHROUGH:Lsun/font/EAttribute;

    new-instance v0, Lsun/font/EAttribute;

    move-object v13, v0

    const/16 v14, 0xd

    sget-object v15, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    move-object/from16 v25, v1

    const-string v1, "ERUN_DIRECTION"

    invoke-direct {v0, v1, v14, v15}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v0, Lsun/font/EAttribute;->ERUN_DIRECTION:Lsun/font/EAttribute;

    new-instance v0, Lsun/font/EAttribute;

    move-object v14, v0

    const/16 v1, 0xe

    sget-object v15, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    move-object/from16 v26, v2

    const-string v2, "EBIDI_EMBEDDING"

    invoke-direct {v0, v2, v1, v15}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v0, Lsun/font/EAttribute;->EBIDI_EMBEDDING:Lsun/font/EAttribute;

    new-instance v0, Lsun/font/EAttribute;

    move-object v15, v0

    const/16 v1, 0xf

    sget-object v2, Ljava/awt/font/TextAttribute;->JUSTIFICATION:Ljava/awt/font/TextAttribute;

    move-object/from16 v27, v3

    const-string v3, "EJUSTIFICATION"

    invoke-direct {v0, v3, v1, v2}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v0, Lsun/font/EAttribute;->EJUSTIFICATION:Lsun/font/EAttribute;

    new-instance v0, Lsun/font/EAttribute;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    sget-object v2, Ljava/awt/font/TextAttribute;->INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

    const-string v3, "EINPUT_METHOD_HIGHLIGHT"

    invoke-direct {v0, v3, v1, v2}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v0, Lsun/font/EAttribute;->EINPUT_METHOD_HIGHLIGHT:Lsun/font/EAttribute;

    new-instance v0, Lsun/font/EAttribute;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    sget-object v2, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    const-string v3, "EINPUT_METHOD_UNDERLINE"

    invoke-direct {v0, v3, v1, v2}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v0, Lsun/font/EAttribute;->EINPUT_METHOD_UNDERLINE:Lsun/font/EAttribute;

    new-instance v0, Lsun/font/EAttribute;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    sget-object v2, Ljava/awt/font/TextAttribute;->SWAP_COLORS:Ljava/awt/font/TextAttribute;

    const-string v3, "ESWAP_COLORS"

    invoke-direct {v0, v3, v1, v2}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v0, Lsun/font/EAttribute;->ESWAP_COLORS:Lsun/font/EAttribute;

    new-instance v0, Lsun/font/EAttribute;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    sget-object v2, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    const-string v3, "ENUMERIC_SHAPING"

    invoke-direct {v0, v3, v1, v2}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v0, Lsun/font/EAttribute;->ENUMERIC_SHAPING:Lsun/font/EAttribute;

    new-instance v0, Lsun/font/EAttribute;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    sget-object v2, Ljava/awt/font/TextAttribute;->KERNING:Ljava/awt/font/TextAttribute;

    const-string v3, "EKERNING"

    invoke-direct {v0, v3, v1, v2}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v0, Lsun/font/EAttribute;->EKERNING:Lsun/font/EAttribute;

    new-instance v0, Lsun/font/EAttribute;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    sget-object v2, Ljava/awt/font/TextAttribute;->LIGATURES:Ljava/awt/font/TextAttribute;

    const-string v3, "ELIGATURES"

    invoke-direct {v0, v3, v1, v2}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v0, Lsun/font/EAttribute;->ELIGATURES:Lsun/font/EAttribute;

    new-instance v0, Lsun/font/EAttribute;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    sget-object v2, Ljava/awt/font/TextAttribute;->TRACKING:Ljava/awt/font/TextAttribute;

    const-string v3, "ETRACKING"

    invoke-direct {v0, v3, v1, v2}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v0, Lsun/font/EAttribute;->ETRACKING:Lsun/font/EAttribute;

    new-instance v0, Lsun/font/EAttribute;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const/4 v2, 0x0

    const-string v3, "EBASELINE_TRANSFORM"

    invoke-direct {v0, v3, v1, v2}, Lsun/font/EAttribute;-><init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V

    sput-object v0, Lsun/font/EAttribute;->EBASELINE_TRANSFORM:Lsun/font/EAttribute;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    filled-new-array/range {v0 .. v23}, [Lsun/font/EAttribute;

    move-result-object v0

    sput-object v0, Lsun/font/EAttribute;->$VALUES:[Lsun/font/EAttribute;

    const-class v0, Lsun/font/EAttribute;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/font/EAttribute;

    sput-object v0, Lsun/font/EAttribute;->atts:[Lsun/font/EAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/awt/font/TextAttribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/font/TextAttribute;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lsun/font/EAttribute;->mask:I

    iput-object p3, p0, Lsun/font/EAttribute;->att:Ljava/awt/font/TextAttribute;

    return-void
.end method

.method public static forAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Lsun/font/EAttribute;
    .locals 5

    sget-object v0, Lsun/font/EAttribute;->atts:[Lsun/font/EAttribute;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lsun/font/EAttribute;->att:Ljava/awt/font/TextAttribute;

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/font/EAttribute;
    .locals 1

    const-class v0, Lsun/font/EAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsun/font/EAttribute;

    return-object p0
.end method

.method public static values()[Lsun/font/EAttribute;
    .locals 1

    sget-object v0, Lsun/font/EAttribute;->$VALUES:[Lsun/font/EAttribute;

    invoke-virtual {v0}, [Lsun/font/EAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/font/EAttribute;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
