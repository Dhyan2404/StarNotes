.class public Ljava/awt/Font;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/awt/Font$FontAccessImpl;
    }
.end annotation


# static fields
.field public static final BOLD:I = 0x1

.field public static final CENTER_BASELINE:I = 0x1

.field public static final DEFAULT_FONT:Ljava/awt/Font;

.field public static final DEFAULT_SIZE:I = 0xc

.field public static final DIALOG:Ljava/lang/String; = "Dialog"

.field public static final DIALOG_INPUT:Ljava/lang/String; = "DialogInput"

.field private static final EXTRA_MASK:I

.field public static final HANGING_BASELINE:I = 0x2

.field public static final ITALIC:I = 0x2

.field public static final LAYOUT_LEFT_TO_RIGHT:I = 0x0

.field private static final LAYOUT_MASK:I

.field public static final LAYOUT_NO_LIMIT_CONTEXT:I = 0x4

.field public static final LAYOUT_NO_START_CONTEXT:I = 0x2

.field public static final LAYOUT_RIGHT_TO_LEFT:I = 0x1

.field public static final MONOSPACED:Ljava/lang/String; = "Monospaced"

.field public static final PLAIN:I = 0x0

.field private static final PRIMARY_MASK:I

.field private static final RECOGNIZED_MASK:I

.field public static final ROMAN_BASELINE:I = 0x0

.field public static final SANS_SERIF:Ljava/lang/String; = "SansSerif"

.field private static final SECONDARY_MASK:I

.field public static final SERIF:Ljava/lang/String; = "Serif"

.field public static final TRUETYPE_FONT:I = 0x0

.field public static final TYPE1_FONT:I = 0x1

.field private static final identityTx:Ljava/awt/geom/AffineTransform;

.field private static final serialVersionUID:J = -0x3a5eca193321a98dL

.field private static final ssinfo:[F


# instance fields
.field private transient createdFont:Z

.field private fRequestedAttributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient flmref:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lsun/font/FontLineMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private transient font2DHandle:Lsun/font/Font2DHandle;

.field private fontSerializedDataVersion:I

.field private transient hasLayoutAttributes:Z

.field transient hash:I

.field protected name:Ljava/lang/String;

.field private transient nonIdentityTx:Z

.field private transient pData:J

.field private transient peer:Ljava/awt/peer/FontPeer;

.field protected pointSize:F

.field protected size:I

.field protected style:I

.field private transient values:Lsun/font/AttributeValues;


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    invoke-static {}, Ljava/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Ljava/awt/Font;->initIDs()V

    new-instance v0, Ljava/awt/Font$FontAccessImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/awt/Font$FontAccessImpl;-><init>(Ljava/awt/Font$1;)V

    invoke-static {v0}, Lsun/font/FontAccess;->setFontAccess(Lsun/font/FontAccess;)V

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    sput-object v0, Ljava/awt/Font;->identityTx:Ljava/awt/geom/AffineTransform;

    new-instance v0, Ljava/awt/Font;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const-string v3, "Dialog"

    invoke-direct {v0, v3, v1, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/awt/Font;->DEFAULT_FONT:Ljava/awt/Font;

    sget v0, Lsun/font/AttributeValues;->MASK_ALL:I

    sget-object v1, Lsun/font/EAttribute;->EFONT:Lsun/font/EAttribute;

    invoke-static {v1}, Lsun/font/AttributeValues;->getMask(Lsun/font/EAttribute;)I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    sput v0, Ljava/awt/Font;->RECOGNIZED_MASK:I

    sget-object v1, Lsun/font/EAttribute;->EFAMILY:Lsun/font/EAttribute;

    sget-object v2, Lsun/font/EAttribute;->EWEIGHT:Lsun/font/EAttribute;

    sget-object v9, Lsun/font/EAttribute;->EWIDTH:Lsun/font/EAttribute;

    sget-object v4, Lsun/font/EAttribute;->EPOSTURE:Lsun/font/EAttribute;

    sget-object v5, Lsun/font/EAttribute;->ESIZE:Lsun/font/EAttribute;

    sget-object v10, Lsun/font/EAttribute;->ETRANSFORM:Lsun/font/EAttribute;

    sget-object v15, Lsun/font/EAttribute;->ESUPERSCRIPT:Lsun/font/EAttribute;

    sget-object v25, Lsun/font/EAttribute;->ETRACKING:Lsun/font/EAttribute;

    move-object v3, v9

    move-object v6, v10

    move-object v7, v15

    move-object/from16 v8, v25

    filled-new-array/range {v1 .. v8}, [Lsun/font/EAttribute;

    move-result-object v1

    invoke-static {v1}, Lsun/font/AttributeValues;->getMask([Lsun/font/EAttribute;)I

    move-result v1

    sput v1, Ljava/awt/Font;->PRIMARY_MASK:I

    not-int v1, v1

    and-int/2addr v0, v1

    sput v0, Ljava/awt/Font;->SECONDARY_MASK:I

    sget-object v11, Lsun/font/EAttribute;->ECHAR_REPLACEMENT:Lsun/font/EAttribute;

    sget-object v12, Lsun/font/EAttribute;->EFOREGROUND:Lsun/font/EAttribute;

    sget-object v13, Lsun/font/EAttribute;->EBACKGROUND:Lsun/font/EAttribute;

    sget-object v14, Lsun/font/EAttribute;->EUNDERLINE:Lsun/font/EAttribute;

    sget-object v0, Lsun/font/EAttribute;->ESTRIKETHROUGH:Lsun/font/EAttribute;

    sget-object v16, Lsun/font/EAttribute;->ERUN_DIRECTION:Lsun/font/EAttribute;

    sget-object v17, Lsun/font/EAttribute;->EBIDI_EMBEDDING:Lsun/font/EAttribute;

    sget-object v18, Lsun/font/EAttribute;->EJUSTIFICATION:Lsun/font/EAttribute;

    sget-object v19, Lsun/font/EAttribute;->EINPUT_METHOD_HIGHLIGHT:Lsun/font/EAttribute;

    sget-object v20, Lsun/font/EAttribute;->EINPUT_METHOD_UNDERLINE:Lsun/font/EAttribute;

    sget-object v21, Lsun/font/EAttribute;->ESWAP_COLORS:Lsun/font/EAttribute;

    sget-object v22, Lsun/font/EAttribute;->ENUMERIC_SHAPING:Lsun/font/EAttribute;

    sget-object v23, Lsun/font/EAttribute;->EKERNING:Lsun/font/EAttribute;

    sget-object v24, Lsun/font/EAttribute;->ELIGATURES:Lsun/font/EAttribute;

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v26, v1

    filled-new-array/range {v11 .. v26}, [Lsun/font/EAttribute;

    move-result-object v0

    invoke-static {v0}, Lsun/font/AttributeValues;->getMask([Lsun/font/EAttribute;)I

    move-result v0

    sput v0, Ljava/awt/Font;->LAYOUT_MASK:I

    filled-new-array {v10, v1, v9}, [Lsun/font/EAttribute;

    move-result-object v0

    invoke-static {v0}, Lsun/font/AttributeValues;->getMask([Lsun/font/EAttribute;)I

    move-result v0

    sput v0, Ljava/awt/Font;->EXTRA_MASK:I

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ljava/awt/Font;->ssinfo:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ec00000    # 0.375f
        0x3f200000    # 0.625f
        0x3f4aaaab
        0x3f671c72
        0x3f7a12f7
        0x3f835ba8
        0x3f879270
    .end array-data
.end method

.method public constructor <init>(Ljava/awt/Font;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Ljava/awt/Font;->createdFont:Z

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Ljava/awt/Font;->fontSerializedDataVersion:I

    .line 52
    iget-object v0, p1, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p1}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/AttributeValues;->clone()Lsun/font/AttributeValues;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/awt/Font;->initFromValues(Lsun/font/AttributeValues;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p1, Ljava/awt/Font;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    .line 55
    iget v0, p1, Ljava/awt/Font;->style:I

    iput v0, p0, Ljava/awt/Font;->style:I

    .line 56
    iget v0, p1, Ljava/awt/Font;->size:I

    iput v0, p0, Ljava/awt/Font;->size:I

    .line 57
    iget v0, p1, Ljava/awt/Font;->pointSize:F

    iput v0, p0, Ljava/awt/Font;->pointSize:F

    .line 58
    :goto_0
    iget-object v0, p1, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    iput-object v0, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    .line 59
    iget-boolean p1, p1, Ljava/awt/Font;->createdFont:Z

    iput-boolean p1, p0, Ljava/awt/Font;->createdFont:Z

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IZLsun/font/CreatedFontTracker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Ljava/awt/Font;->fontSerializedDataVersion:I

    .line 24
    iput-boolean v0, p0, Ljava/awt/Font;->createdFont:Z

    .line 25
    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v1

    .line 26
    invoke-interface {v1, p1, p2, p3, p4}, Lsun/font/FontManager;->createFont2D(Ljava/io/File;IZLsun/font/CreatedFontTracker;)Lsun/font/Font2D;

    move-result-object p1

    iget-object p1, p1, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    iput-object p1, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    .line 27
    iget-object p1, p1, Lsun/font/Font2DHandle;->font2D:Lsun/font/Font2D;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Ljava/awt/Font;->style:I

    .line 29
    iput v0, p0, Ljava/awt/Font;->size:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    iput p1, p0, Ljava/awt/Font;->pointSize:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Ljava/awt/Font;->createdFont:Z

    const/4 v1, 0x1

    .line 10
    iput v1, p0, Ljava/awt/Font;->fontSerializedDataVersion:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Default"

    .line 11
    :goto_0
    iput-object p1, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    and-int/lit8 p1, p2, -0x4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 12
    :goto_1
    iput p2, p0, Ljava/awt/Font;->style:I

    float-to-double p1, p3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    .line 13
    iput p1, p0, Ljava/awt/Font;->size:I

    .line 14
    iput p3, p0, Ljava/awt/Font;->pointSize:F

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFZLsun/font/Font2DHandle;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Ljava/awt/Font;-><init>(Ljava/lang/String;IF)V

    .line 16
    iput-boolean p4, p0, Ljava/awt/Font;->createdFont:Z

    if-eqz p4, :cond_1

    .line 17
    iget-object p1, p5, Lsun/font/Font2DHandle;->font2D:Lsun/font/Font2D;

    instance-of p3, p1, Lsun/font/CompositeFont;

    if-eqz p3, :cond_0

    .line 18
    invoke-virtual {p1}, Lsun/font/Font2D;->getStyle()I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 19
    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object p1

    const/4 p3, 0x0

    .line 20
    invoke-interface {p1, p3, p2, p5}, Lsun/font/FontManager;->getNewComposite(Ljava/lang/String;ILsun/font/Font2DHandle;)Lsun/font/Font2DHandle;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    goto :goto_0

    .line 21
    :cond_0
    iput-object p5, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ljava/awt/Font;->createdFont:Z

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Ljava/awt/Font;->fontSerializedDataVersion:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Default"

    .line 4
    :goto_0
    iput-object p1, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    and-int/lit8 p1, p2, -0x4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 5
    :goto_1
    iput p2, p0, Ljava/awt/Font;->style:I

    .line 6
    iput p3, p0, Ljava/awt/Font;->size:I

    int-to-float p1, p3

    .line 7
    iput p1, p0, Ljava/awt/Font;->pointSize:F

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Ljava/awt/Font;->createdFont:Z

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Ljava/awt/Font;->fontSerializedDataVersion:I

    .line 48
    sget v0, Ljava/awt/Font;->RECOGNIZED_MASK:I

    invoke-static {p1, v0}, Lsun/font/AttributeValues;->fromMap(Ljava/util/Map;I)Lsun/font/AttributeValues;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/Font;->initFromValues(Lsun/font/AttributeValues;)V

    return-void
.end method

.method private constructor <init>(Lsun/font/AttributeValues;Ljava/lang/String;IZLsun/font/Font2DHandle;)V
    .locals 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Ljava/awt/Font;->fontSerializedDataVersion:I

    .line 33
    iput-boolean p4, p0, Ljava/awt/Font;->createdFont:Z

    if-eqz p4, :cond_8

    .line 34
    iput-object p5, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p1}, Lsun/font/AttributeValues;->getFamily()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    move-object v1, p4

    :cond_1
    const/4 p2, 0x0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_2

    :goto_0
    move v0, v2

    goto :goto_2

    .line 37
    :cond_2
    invoke-virtual {p1}, Lsun/font/AttributeValues;->getWeight()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, p2

    .line 38
    :goto_1
    invoke-virtual {p1}, Lsun/font/AttributeValues;->getPosture()F

    move-result v3

    const v4, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    or-int/lit8 v0, v0, 0x2

    :cond_4
    if-ne p3, v0, :cond_5

    goto :goto_0

    .line 39
    :cond_5
    :goto_2
    iget-object p3, p5, Lsun/font/Font2DHandle;->font2D:Lsun/font/Font2D;

    instance-of p3, p3, Lsun/font/CompositeFont;

    if-eqz p3, :cond_7

    if-ne v0, v2, :cond_6

    if-eqz v1, :cond_8

    .line 40
    :cond_6
    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object p2

    .line 41
    invoke-interface {p2, v1, v0, p5}, Lsun/font/FontManager;->getNewComposite(Ljava/lang/String;ILsun/font/Font2DHandle;)Lsun/font/Font2DHandle;

    move-result-object p2

    iput-object p2, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    .line 42
    iput-boolean p2, p0, Ljava/awt/Font;->createdFont:Z

    .line 43
    iput-object p4, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    .line 44
    :cond_8
    :goto_3
    invoke-direct {p0, p1}, Ljava/awt/Font;->initFromValues(Lsun/font/AttributeValues;)V

    return-void
.end method

.method public static synthetic access$000(Ljava/awt/Font;)Lsun/font/Font2D;
    .locals 0

    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$102(Ljava/awt/Font;Lsun/font/Font2DHandle;)Lsun/font/Font2DHandle;
    .locals 0

    iput-object p1, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    return-object p1
.end method

.method public static synthetic access$200(Ljava/awt/Font;)Z
    .locals 0

    iget-boolean p0, p0, Ljava/awt/Font;->createdFont:Z

    return p0
.end method

.method public static synthetic access$202(Ljava/awt/Font;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljava/awt/Font;->createdFont:Z

    return p1
.end method

.method private static applyStyle(ILsun/font/AttributeValues;)V
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Lsun/font/AttributeValues;->setWeight(F)V

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const p0, 0x3e4ccccd    # 0.2f

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Lsun/font/AttributeValues;->setPosture(F)V

    return-void
.end method

.method private static applyTransform(Ljava/awt/geom/AffineTransform;Lsun/font/AttributeValues;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lsun/font/AttributeValues;->setTransform(Ljava/awt/geom/AffineTransform;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "transform must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFont(ILjava/io/File;)Ljava/awt/Font;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "font format not recognized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    new-instance v1, Ljava/io/FilePermission;

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 17
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    new-instance p1, Ljava/awt/Font;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, p0, v1, v2}, Ljava/awt/Font;-><init>(Ljava/io/File;IZLsun/font/CreatedFontTracker;)V

    return-object p1

    .line 19
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t read "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFont(ILjava/io/InputStream;)Ljava/awt/Font;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/awt/Font;->hasTempPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Ljava/awt/Font;->createFont0(ILjava/io/InputStream;Lsun/font/CreatedFontTracker;)Ljava/awt/Font;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lsun/font/CreatedFontTracker;->getTracker()Lsun/font/CreatedFontTracker;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lsun/font/CreatedFontTracker;->acquirePermit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {p0, p1, v0}, Ljava/awt/Font;->createFont0(ILjava/io/InputStream;Lsun/font/CreatedFontTracker;)Ljava/awt/Font;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lsun/font/CreatedFontTracker;->releasePermit()V

    :cond_1
    return-object p0

    .line 7
    :cond_2
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Timed out waiting for resources."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Problem reading font data."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v0}, Lsun/font/CreatedFontTracker;->releasePermit()V

    .line 10
    :cond_3
    throw p0
.end method

.method private static createFont0(ILjava/io/InputStream;Lsun/font/CreatedFontTracker;)Ljava/awt/Font;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "font format not recognized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    new-instance v1, Ljava/awt/Font$1;

    invoke-direct {v1}, Ljava/awt/Font$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Lsun/font/CreatedFontTracker;->add(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/awt/Font$2;

    invoke-direct {v3, v1}, Ljava/awt/Font$2;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v1, v3}, Lsun/font/CreatedFontTracker;->set(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :cond_3
    const/16 v4, 0x2000

    :try_start_2
    new-array v4, v4, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v5, v2

    :goto_1
    :try_start_3
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-gez v6, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance p1, Ljava/awt/Font;

    invoke-direct {p1, v1, p0, v0, p2}, Ljava/awt/Font;-><init>(Ljava/io/File;IZLsun/font/CreatedFontTracker;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p2, :cond_4

    :try_start_6
    invoke-virtual {p2, v1}, Lsun/font/CreatedFontTracker;->remove(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :cond_4
    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_8

    add-int v7, v5, v6

    const/high16 v8, 0x2000000

    if-gt v7, v8, :cond_7

    :try_start_7
    invoke-virtual {p2}, Lsun/font/CreatedFontTracker;->getNumBytes()I

    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/2addr v8, v5

    const/high16 v9, 0x14000000

    if-gt v8, v9, :cond_6

    :try_start_8
    invoke-virtual {p2, v6}, Lsun/font/CreatedFontTracker;->addBytes(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v5, v7

    goto :goto_2

    :catchall_1
    move-exception p0

    move v5, v7

    goto :goto_3

    :cond_6
    :try_start_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Total files too big."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File too big."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    invoke-virtual {v3, v4, v2, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_3

    :catchall_3
    move-exception p0

    move v5, v2

    :goto_3
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    move v0, v2

    :goto_4
    move v2, v5

    goto :goto_5

    :catchall_5
    move-exception p0

    move v0, v2

    :goto_5
    if-eqz p2, :cond_9

    :try_start_b
    invoke-virtual {p2, v1}, Lsun/font/CreatedFontTracker;->remove(Ljava/io/File;)V

    :cond_9
    if-nez v0, :cond_b

    if-eqz p2, :cond_a

    invoke-virtual {p2, v2}, Lsun/font/CreatedFontTracker;->subBytes(I)V

    :cond_a
    new-instance p1, Ljava/awt/Font$3;

    invoke-direct {p1, v1}, Ljava/awt/Font$3;-><init>(Ljava/io/File;)V

    invoke-static {p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    :cond_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception p0

    instance-of p1, p0, Ljava/awt/FontFormatException;

    if-nez p1, :cond_e

    instance-of p1, p0, Ljava/io/IOException;

    if-nez p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/awt/FontFormatException;

    if-eqz p1, :cond_c

    check-cast p0, Ljava/awt/FontFormatException;

    throw p0

    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Problem reading font data."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_e
    check-cast p0, Ljava/awt/FontFormatException;

    throw p0
.end method

.method public static decode(Ljava/lang/String;)Ljava/awt/Font;
    .locals 8

    const/16 v0, 0xc

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance p0, Ljava/awt/Font;

    const-string v2, "Dialog"

    invoke-direct {p0, v2, v1, v0}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    return-object p0

    :cond_0
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-le v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v3, :cond_4

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v5, :cond_4

    :try_start_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v6, :cond_2

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_1

    :catch_0
    add-int/lit8 v4, v5, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_3

    add-int/lit8 v4, v5, -0x1

    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v4

    move v4, v3

    move v3, v7

    :goto_2
    if-ltz v3, :cond_a

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v5, :cond_a

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bolditalic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x3

    goto :goto_4

    :cond_5
    const-string v6, "italic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x2

    goto :goto_4

    :cond_6
    const-string v6, "bold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    const-string v6, "plain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_3
    move v2, v1

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v4, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_9

    add-int/lit8 v3, v4, -0x1

    goto :goto_3

    :cond_9
    move v2, v1

    move v3, v4

    :goto_4
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v1, v2

    goto :goto_6

    :cond_a
    if-lez v3, :cond_b

    move v5, v3

    goto :goto_5

    :cond_b
    if-lez v4, :cond_c

    move v5, v4

    :cond_c
    :goto_5
    if-lez v5, :cond_d

    add-int/lit8 v3, v5, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_d

    add-int/lit8 v5, v5, -0x1

    :cond_d
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_6
    new-instance v2, Ljava/awt/Font;

    invoke-direct {v2, p0, v1, v0}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method

.method private defaultLineMetrics(Ljava/awt/font/FontRenderContext;)Lsun/font/FontLineMetrics;
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Ljava/awt/Font;->flmref:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/FontLineMetrics;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lsun/font/FontLineMetrics;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {v1, v7}, Ljava/awt/font/FontRenderContext;->equals(Ljava/awt/font/FontRenderContext;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/16 v0, 0x8

    new-array v8, v0, [F

    invoke-direct/range {p0 .. p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object v0

    sget-object v2, Ljava/awt/Font;->identityTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/font/FontRenderContext;->getAntiAliasingHint()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/awt/font/FontRenderContext;->getFractionalMetricsHint()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lsun/font/Font2D;->getFontMetrics(Ljava/awt/Font;Ljava/awt/geom/AffineTransform;Ljava/lang/Object;Ljava/lang/Object;[F)V

    const/4 v0, 0x0

    aget v1, v8, v0

    const/4 v2, 0x1

    aget v3, v8, v2

    const/4 v4, 0x2

    aget v12, v8, v4

    iget-object v5, v6, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lsun/font/AttributeValues;->getSuperscript()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/awt/Font;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v10

    double-to-float v5, v10

    sub-float/2addr v1, v5

    add-float/2addr v3, v5

    move v10, v1

    move v11, v3

    move/from16 v20, v5

    goto :goto_0

    :cond_1
    move v10, v1

    move v11, v3

    move/from16 v20, v9

    :goto_0
    add-float v1, v10, v11

    add-float v13, v1, v12

    const/4 v14, 0x0

    const/4 v1, 0x3

    new-array v15, v1, [F

    aput v9, v15, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v11, v1

    sub-float/2addr v3, v10

    div-float/2addr v3, v1

    aput v3, v15, v2

    neg-float v1, v10

    aput v1, v15, v4

    const/4 v1, 0x4

    aget v1, v8, v1

    const/4 v2, 0x5

    aget v2, v8, v2

    const/4 v3, 0x6

    aget v3, v8, v3

    const/4 v4, 0x7

    aget v4, v8, v4

    invoke-direct/range {p0 .. p1}, Ljava/awt/Font;->getItalicAngle(Ljava/awt/font/FontRenderContext;)F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Ljava/awt/Font;->isTransformed()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v6, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    invoke-virtual {v5}, Lsun/font/AttributeValues;->getCharTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v8, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v8}, Ljava/awt/geom/Point2D$Float;-><init>()V

    invoke-virtual {v8, v9, v1}, Ljava/awt/geom/Point2D$Float;->setLocation(FF)V

    invoke-virtual {v5, v8, v8}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget v1, v8, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-virtual {v8, v9, v2}, Ljava/awt/geom/Point2D$Float;->setLocation(FF)V

    invoke-virtual {v5, v8, v8}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget v2, v8, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-virtual {v8, v9, v3}, Ljava/awt/geom/Point2D$Float;->setLocation(FF)V

    invoke-virtual {v5, v8, v8}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget v3, v8, Ljava/awt/geom/Point2D$Float;->y:F

    invoke-virtual {v8, v9, v4}, Ljava/awt/geom/Point2D$Float;->setLocation(FF)V

    invoke-virtual {v5, v8, v8}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget v4, v8, Ljava/awt/geom/Point2D$Float;->y:F

    :cond_2
    move/from16 v17, v2

    move/from16 v19, v4

    add-float v16, v1, v20

    add-float v18, v3, v20

    new-instance v1, Lsun/font/CoreMetrics;

    move-object v9, v1

    invoke-direct/range {v9 .. v21}, Lsun/font/CoreMetrics;-><init>(FFFFI[FFFFFFF)V

    new-instance v2, Lsun/font/FontLineMetrics;

    invoke-direct {v2, v0, v1, v7}, Lsun/font/FontLineMetrics;-><init>(ILsun/font/CoreMetrics;Ljava/awt/font/FontRenderContext;)V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v6, Ljava/awt/Font;->flmref:Ljava/lang/ref/SoftReference;

    move-object v0, v2

    :cond_3
    invoke-virtual {v0}, Lsun/font/FontLineMetrics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/FontLineMetrics;

    return-object v0
.end method

.method private getAttributeValues()Lsun/font/AttributeValues;
    .locals 2

    iget-object v0, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    if-nez v0, :cond_2

    new-instance v0, Lsun/font/AttributeValues;

    invoke-direct {v0}, Lsun/font/AttributeValues;-><init>()V

    iget-object v1, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/font/AttributeValues;->setFamily(Ljava/lang/String;)V

    iget v1, p0, Ljava/awt/Font;->pointSize:F

    invoke-virtual {v0, v1}, Lsun/font/AttributeValues;->setSize(F)V

    iget v1, p0, Ljava/awt/Font;->style:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lsun/font/AttributeValues;->setWeight(F)V

    :cond_0
    iget v1, p0, Ljava/awt/Font;->style:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lsun/font/AttributeValues;->setPosture(F)V

    :cond_1
    sget v1, Ljava/awt/Font;->PRIMARY_MASK:I

    invoke-virtual {v0, v1}, Lsun/font/AttributeValues;->defineAll(I)V

    iput-object v0, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    :cond_2
    iget-object p0, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    return-object p0
.end method

.method public static getFont(Ljava/lang/String;)Ljava/awt/Font;
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-static {p0, v0}, Ljava/awt/Font;->getFont(Ljava/lang/String;Ljava/awt/Font;)Ljava/awt/Font;

    move-result-object p0

    return-object p0
.end method

.method public static getFont(Ljava/lang/String;Ljava/awt/Font;)Ljava/awt/Font;
    .locals 0

    .line 18
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    return-object p1

    .line 19
    :cond_0
    invoke-static {p0}, Ljava/awt/Font;->decode(Ljava/lang/String;)Ljava/awt/Font;

    move-result-object p0

    return-object p0
.end method

.method public static getFont(Ljava/util/Map;)Ljava/awt/Font;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)",
            "Ljava/awt/Font;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lsun/font/AttributeMap;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lsun/font/AttributeMap;

    .line 2
    invoke-virtual {v0}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object v0

    .line 4
    sget-object v1, Lsun/font/EAttribute;->EFONT:Lsun/font/EAttribute;

    invoke-virtual {v0, v1}, Lsun/font/AttributeValues;->isNonDefault(Lsun/font/EAttribute;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lsun/font/AttributeValues;->getFont()Ljava/awt/Font;

    move-result-object v1

    .line 6
    sget v2, Ljava/awt/Font;->SECONDARY_MASK:I

    invoke-virtual {v0, v2}, Lsun/font/AttributeValues;->anyDefined(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    invoke-direct {v1}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/AttributeValues;->clone()Lsun/font/AttributeValues;

    move-result-object v4

    .line 8
    invoke-virtual {v4, p0, v2}, Lsun/font/AttributeValues;->merge(Ljava/util/Map;I)Lsun/font/AttributeValues;

    .line 9
    new-instance p0, Ljava/awt/Font;

    iget-object v5, v1, Ljava/awt/Font;->name:Ljava/lang/String;

    iget v6, v1, Ljava/awt/Font;->style:I

    iget-boolean v7, v1, Ljava/awt/Font;->createdFont:Z

    iget-object v8, v1, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Ljava/awt/Font;-><init>(Lsun/font/AttributeValues;Ljava/lang/String;IZLsun/font/Font2DHandle;)V

    return-object p0

    .line 10
    :cond_1
    new-instance v0, Ljava/awt/Font;

    invoke-direct {v0, p0}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 11
    :cond_2
    sget-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Font;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 13
    invoke-direct {v0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object v1

    invoke-virtual {v1}, Lsun/font/AttributeValues;->clone()Lsun/font/AttributeValues;

    move-result-object v3

    .line 14
    sget v1, Ljava/awt/Font;->SECONDARY_MASK:I

    invoke-virtual {v3, p0, v1}, Lsun/font/AttributeValues;->merge(Ljava/util/Map;I)Lsun/font/AttributeValues;

    .line 15
    new-instance p0, Ljava/awt/Font;

    iget-object v4, v0, Ljava/awt/Font;->name:Ljava/lang/String;

    iget v5, v0, Ljava/awt/Font;->style:I

    iget-boolean v6, v0, Ljava/awt/Font;->createdFont:Z

    iget-object v7, v0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Ljava/awt/Font;-><init>(Lsun/font/AttributeValues;Ljava/lang/String;IZLsun/font/Font2DHandle;)V

    return-object p0

    :cond_3
    return-object v0

    .line 16
    :cond_4
    new-instance v0, Ljava/awt/Font;

    invoke-direct {v0, p0}, Ljava/awt/Font;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private getFont2D()Lsun/font/Font2D;
    .locals 4

    invoke-static {}, Lsun/font/FontManagerFactory;->getInstance()Lsun/font/FontManager;

    move-result-object v0

    invoke-interface {v0}, Lsun/font/FontManager;->usingPerAppContextComposites()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lsun/font/Font2DHandle;->font2D:Lsun/font/Font2D;

    instance-of v3, v1, Lsun/font/CompositeFont;

    if-eqz v3, :cond_0

    check-cast v1, Lsun/font/CompositeFont;

    invoke-virtual {v1}, Lsun/font/CompositeFont;->isStdComposite()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    iget p0, p0, Ljava/awt/Font;->style:I

    invoke-interface {v0, v1, p0, v2}, Lsun/font/FontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    if-nez v1, :cond_1

    iget-object v1, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    iget v3, p0, Ljava/awt/Font;->style:I

    invoke-interface {v0, v1, v3, v2}, Lsun/font/FontManager;->findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;

    move-result-object v0

    iget-object v0, v0, Lsun/font/Font2D;->handle:Lsun/font/Font2DHandle;

    iput-object v0, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    :cond_1
    iget-object p0, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    iget-object p0, p0, Lsun/font/Font2DHandle;->font2D:Lsun/font/Font2D;

    return-object p0
.end method

.method private getItalicAngle(Ljava/awt/font/FontRenderContext;)F
    .locals 4

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

    .line 3
    sget-object v0, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_OFF:Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->getAntiAliasingHint()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->getFractionalMetricsHint()Ljava/lang/Object;

    move-result-object p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 6
    :goto_0
    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object v1

    sget-object v2, Ljava/awt/Font;->identityTx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, p0, v2, p1, v0}, Lsun/font/Font2D;->getItalicAngle(Ljava/awt/Font;Ljava/awt/geom/AffineTransform;Ljava/lang/Object;Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method private static hasTempPermission()Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "+~JT"

    const-string v2, ".tmp"

    invoke-static {v0, v2}, Lcom/onyx/common/util/FileUtils;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private initFromValues(Lsun/font/AttributeValues;)V
    .locals 4

    iput-object p1, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    sget v0, Ljava/awt/Font;->PRIMARY_MASK:I

    invoke-virtual {p1, v0}, Lsun/font/AttributeValues;->defineAll(I)V

    invoke-virtual {p1}, Lsun/font/AttributeValues;->getFamily()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lsun/font/AttributeValues;->getSize()F

    move-result v0

    iput v0, p0, Ljava/awt/Font;->pointSize:F

    invoke-virtual {p1}, Lsun/font/AttributeValues;->getSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Ljava/awt/Font;->size:I

    invoke-virtual {p1}, Lsun/font/AttributeValues;->getWeight()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Ljava/awt/Font;->style:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/awt/Font;->style:I

    :cond_0
    invoke-virtual {p1}, Lsun/font/AttributeValues;->getPosture()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Ljava/awt/Font;->style:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/awt/Font;->style:I

    :cond_1
    sget v0, Ljava/awt/Font;->EXTRA_MASK:I

    invoke-virtual {p1, v0}, Lsun/font/AttributeValues;->anyNonDefault(I)Z

    move-result v0

    iput-boolean v0, p0, Ljava/awt/Font;->nonIdentityTx:Z

    sget v0, Ljava/awt/Font;->LAYOUT_MASK:I

    invoke-virtual {p1, v0}, Lsun/font/AttributeValues;->anyNonDefault(I)Z

    move-result p1

    iput-boolean p1, p0, Ljava/awt/Font;->hasLayoutAttributes:Z

    return-void
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget p1, p0, Ljava/awt/Font;->pointSize:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget p1, p0, Ljava/awt/Font;->size:I

    int-to-float p1, p1

    iput p1, p0, Ljava/awt/Font;->pointSize:F

    :cond_0
    iget-object p1, p0, Ljava/awt/Font;->fRequestedAttributes:Ljava/util/Hashtable;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    iget-object p1, p0, Ljava/awt/Font;->fRequestedAttributes:Ljava/util/Hashtable;

    invoke-static {p1}, Lsun/font/AttributeValues;->fromSerializableHashtable(Ljava/util/Hashtable;)Lsun/font/AttributeValues;

    move-result-object p1

    iget-object v0, p0, Ljava/awt/Font;->fRequestedAttributes:Ljava/util/Hashtable;

    invoke-static {v0}, Lsun/font/AttributeValues;->is16Hashtable(Ljava/util/Hashtable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lsun/font/AttributeValues;->unsetDefault()V

    :cond_1
    invoke-direct {p0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/font/AttributeValues;->merge(Lsun/font/AttributeValues;)Lsun/font/AttributeValues;

    move-result-object p1

    iput-object p1, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    sget v0, Ljava/awt/Font;->EXTRA_MASK:I

    invoke-virtual {p1, v0}, Lsun/font/AttributeValues;->anyNonDefault(I)Z

    move-result p1

    iput-boolean p1, p0, Ljava/awt/Font;->nonIdentityTx:Z

    iget-object p1, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    sget v0, Ljava/awt/Font;->LAYOUT_MASK:I

    invoke-virtual {p1, v0}, Lsun/font/AttributeValues;->anyNonDefault(I)Z

    move-result p1

    iput-boolean p1, p0, Ljava/awt/Font;->hasLayoutAttributes:Z

    const/4 p1, 0x0

    iput-object p1, p0, Ljava/awt/Font;->fRequestedAttributes:Ljava/util/Hashtable;

    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    invoke-virtual {v1}, Lsun/font/AttributeValues;->toSerializableHashtable()Ljava/util/Hashtable;

    move-result-object v1

    iput-object v1, p0, Ljava/awt/Font;->fRequestedAttributes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 p1, 0x0

    iput-object p1, p0, Ljava/awt/Font;->fRequestedAttributes:Ljava/util/Hashtable;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    :goto_0
    return-void
.end method


# virtual methods
.method public canDisplay(C)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/Font2D;->canDisplay(C)Z

    move-result p0

    return p0
.end method

.method public canDisplay(I)Z
    .locals 2

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/Font2D;->canDisplay(I)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid code point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canDisplayUpTo(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4
    invoke-virtual {p0, v2}, Lsun/font/Font2D;->canDisplay(C)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lsun/font/Font2D;->canDisplay(I)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public canDisplayUpTo(Ljava/text/CharacterIterator;II)I
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    .line 13
    invoke-interface {p1, p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    :goto_0
    if-ge p2, p3, :cond_4

    .line 14
    invoke-virtual {p0, v0}, Lsun/font/Font2D;->canDisplay(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_1

    return p2

    .line 16
    :cond_1
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_2

    return p2

    .line 18
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/font/Font2D;->canDisplay(I)Z

    move-result v0

    if-nez v0, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 19
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public canDisplayUpTo([CII)I
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 8
    aget-char v0, p1, p2

    .line 9
    invoke-virtual {p0, v0}, Lsun/font/Font2D;->canDisplay(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_1

    return p2

    .line 11
    :cond_1
    invoke-static {p1, p2, p3}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/font/Font2D;->canDisplay(I)Z

    move-result v0

    if-nez v0, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public createGlyphVector(Ljava/awt/font/FontRenderContext;Ljava/lang/String;)Ljava/awt/font/GlyphVector;
    .locals 1

    .line 1
    new-instance v0, Lsun/font/AndroidGlyphVector;

    invoke-direct {v0, p0, p2, p1}, Lsun/font/AndroidGlyphVector;-><init>(Ljava/awt/Font;Ljava/lang/String;Ljava/awt/font/FontRenderContext;)V

    return-object v0
.end method

.method public createGlyphVector(Ljava/awt/font/FontRenderContext;Ljava/text/CharacterIterator;)Ljava/awt/font/GlyphVector;
    .locals 1

    .line 3
    new-instance v0, Lsun/font/AndroidGlyphVector;

    invoke-direct {v0, p0, p2, p1}, Lsun/font/AndroidGlyphVector;-><init>(Ljava/awt/Font;Ljava/text/CharacterIterator;Ljava/awt/font/FontRenderContext;)V

    return-object v0
.end method

.method public createGlyphVector(Ljava/awt/font/FontRenderContext;[C)Ljava/awt/font/GlyphVector;
    .locals 1

    .line 2
    new-instance v0, Lsun/font/AndroidGlyphVector;

    invoke-direct {v0, p0, p2, p1}, Lsun/font/AndroidGlyphVector;-><init>(Ljava/awt/Font;[CLjava/awt/font/FontRenderContext;)V

    return-object v0
.end method

.method public createGlyphVector(Ljava/awt/font/FontRenderContext;[I)Ljava/awt/font/GlyphVector;
    .locals 1

    .line 4
    new-instance v0, Lsun/font/AndroidGlyphVector;

    invoke-direct {v0, p0, p2, p1}, Lsun/font/AndroidGlyphVector;-><init>(Ljava/awt/Font;[ILjava/awt/font/FontRenderContext;)V

    return-object v0
.end method

.method public deriveFont(F)Ljava/awt/Font;
    .locals 7

    .line 13
    iget-object v0, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Ljava/awt/Font;

    iget-object v2, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    iget v3, p0, Ljava/awt/Font;->style:I

    iget-boolean v5, p0, Ljava/awt/Font;->createdFont:Z

    iget-object v6, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Ljava/awt/Font;-><init>(Ljava/lang/String;IFZLsun/font/Font2DHandle;)V

    return-object v0

    .line 15
    :cond_0
    invoke-direct {p0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/AttributeValues;->clone()Lsun/font/AttributeValues;

    move-result-object v2

    .line 16
    invoke-virtual {v2, p1}, Lsun/font/AttributeValues;->setSize(F)V

    .line 17
    new-instance p1, Ljava/awt/Font;

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-boolean v5, p0, Ljava/awt/Font;->createdFont:Z

    iget-object v6, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljava/awt/Font;-><init>(Lsun/font/AttributeValues;Ljava/lang/String;IZLsun/font/Font2DHandle;)V

    return-object p1
.end method

.method public deriveFont(I)Ljava/awt/Font;
    .locals 7

    .line 21
    iget-object v0, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/awt/Font;

    iget-object v2, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    iget v1, p0, Ljava/awt/Font;->size:I

    int-to-float v4, v1

    iget-boolean v5, p0, Ljava/awt/Font;->createdFont:Z

    iget-object v6, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Ljava/awt/Font;-><init>(Ljava/lang/String;IFZLsun/font/Font2DHandle;)V

    return-object v0

    .line 23
    :cond_0
    invoke-direct {p0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/AttributeValues;->clone()Lsun/font/AttributeValues;

    move-result-object v2

    .line 24
    iget v0, p0, Ljava/awt/Font;->style:I

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    move v4, v0

    .line 25
    invoke-static {p1, v2}, Ljava/awt/Font;->applyStyle(ILsun/font/AttributeValues;)V

    .line 26
    new-instance p1, Ljava/awt/Font;

    const/4 v3, 0x0

    iget-boolean v5, p0, Ljava/awt/Font;->createdFont:Z

    iget-object v6, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljava/awt/Font;-><init>(Lsun/font/AttributeValues;Ljava/lang/String;IZLsun/font/Font2DHandle;)V

    return-object p1
.end method

.method public deriveFont(IF)Ljava/awt/Font;
    .locals 7

    .line 1
    iget-object v0, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/awt/Font;

    iget-object v2, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    iget-boolean v5, p0, Ljava/awt/Font;->createdFont:Z

    iget-object v6, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    move-object v1, v0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Ljava/awt/Font;-><init>(Ljava/lang/String;IFZLsun/font/Font2DHandle;)V

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/AttributeValues;->clone()Lsun/font/AttributeValues;

    move-result-object v2

    .line 4
    iget v0, p0, Ljava/awt/Font;->style:I

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    move v4, v0

    .line 5
    invoke-static {p1, v2}, Ljava/awt/Font;->applyStyle(ILsun/font/AttributeValues;)V

    .line 6
    invoke-virtual {v2, p2}, Lsun/font/AttributeValues;->setSize(F)V

    .line 7
    new-instance p1, Ljava/awt/Font;

    const/4 v3, 0x0

    iget-boolean v5, p0, Ljava/awt/Font;->createdFont:Z

    iget-object v6, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljava/awt/Font;-><init>(Lsun/font/AttributeValues;Ljava/lang/String;IZLsun/font/Font2DHandle;)V

    return-object p1
.end method

.method public deriveFont(ILjava/awt/geom/AffineTransform;)Ljava/awt/Font;
    .locals 7

    .line 8
    invoke-direct {p0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/AttributeValues;->clone()Lsun/font/AttributeValues;

    move-result-object v2

    .line 9
    iget v0, p0, Ljava/awt/Font;->style:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    move v4, v0

    .line 10
    invoke-static {p1, v2}, Ljava/awt/Font;->applyStyle(ILsun/font/AttributeValues;)V

    .line 11
    invoke-static {p2, v2}, Ljava/awt/Font;->applyTransform(Ljava/awt/geom/AffineTransform;Lsun/font/AttributeValues;)V

    .line 12
    new-instance p1, Ljava/awt/Font;

    const/4 v3, 0x0

    iget-boolean v5, p0, Ljava/awt/Font;->createdFont:Z

    iget-object v6, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljava/awt/Font;-><init>(Lsun/font/AttributeValues;Ljava/lang/String;IZLsun/font/Font2DHandle;)V

    return-object p1
.end method

.method public deriveFont(Ljava/awt/geom/AffineTransform;)Ljava/awt/Font;
    .locals 7

    .line 18
    invoke-direct {p0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/AttributeValues;->clone()Lsun/font/AttributeValues;

    move-result-object v2

    .line 19
    invoke-static {p1, v2}, Ljava/awt/Font;->applyTransform(Ljava/awt/geom/AffineTransform;Lsun/font/AttributeValues;)V

    .line 20
    new-instance p1, Ljava/awt/Font;

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-boolean v5, p0, Ljava/awt/Font;->createdFont:Z

    iget-object v6, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljava/awt/Font;-><init>(Lsun/font/AttributeValues;Ljava/lang/String;IZLsun/font/Font2DHandle;)V

    return-object p1
.end method

.method public deriveFont(Ljava/util/Map;)Ljava/awt/Font;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)",
            "Ljava/awt/Font;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 27
    :cond_0
    invoke-direct {p0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/AttributeValues;->clone()Lsun/font/AttributeValues;

    move-result-object v2

    .line 28
    sget v0, Ljava/awt/Font;->RECOGNIZED_MASK:I

    invoke-virtual {v2, p1, v0}, Lsun/font/AttributeValues;->merge(Ljava/util/Map;I)Lsun/font/AttributeValues;

    .line 29
    new-instance p1, Ljava/awt/Font;

    iget-object v3, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    iget v4, p0, Ljava/awt/Font;->style:I

    iget-boolean v5, p0, Ljava/awt/Font;->createdFont:Z

    iget-object v6, p0, Ljava/awt/Font;->font2DHandle:Lsun/font/Font2DHandle;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljava/awt/Font;-><init>(Lsun/font/AttributeValues;Ljava/lang/String;IZLsun/font/Font2DHandle;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    :try_start_0
    check-cast p1, Ljava/awt/Font;

    iget v1, p0, Ljava/awt/Font;->size:I

    iget v2, p1, Ljava/awt/Font;->size:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Ljava/awt/Font;->style:I

    iget v2, p1, Ljava/awt/Font;->style:I

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Ljava/awt/Font;->nonIdentityTx:Z

    iget-boolean v2, p1, Ljava/awt/Font;->nonIdentityTx:Z

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Ljava/awt/Font;->hasLayoutAttributes:Z

    iget-boolean v2, p1, Ljava/awt/Font;->hasLayoutAttributes:Z

    if-ne v1, v2, :cond_3

    iget v1, p0, Ljava/awt/Font;->pointSize:F

    iget v2, p1, Ljava/awt/Font;->pointSize:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    iget-object v1, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    iget-object v2, p1, Ljava/awt/Font;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    if-nez v1, :cond_2

    iget-object v1, p1, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object p0

    iget-object p1, p1, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    invoke-virtual {p0, p1}, Lsun/font/AttributeValues;->equals(Lsun/font/AttributeValues;)Z

    move-result p0

    return p0

    :cond_2
    invoke-direct {p1}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object p0

    invoke-virtual {v1, p0}, Lsun/font/AttributeValues;->equals(Lsun/font/AttributeValues;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/awt/font/TextAttribute;",
            "*>;"
        }
    .end annotation

    new-instance v0, Lsun/font/AttributeMap;

    invoke-direct {p0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object p0

    invoke-direct {v0, p0}, Lsun/font/AttributeMap;-><init>(Lsun/font/AttributeValues;)V

    return-object v0
.end method

.method public getAvailableAttributes()[Ljava/text/AttributedCharacterIterator$Attribute;
    .locals 2

    const/16 p0, 0x16

    new-array p0, p0, [Ljava/text/AttributedCharacterIterator$Attribute;

    const/4 v0, 0x0

    sget-object v1, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Ljava/awt/font/TextAttribute;->WEIGHT:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/4 v0, 0x2

    sget-object v1, Ljava/awt/font/TextAttribute;->WIDTH:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/4 v0, 0x3

    sget-object v1, Ljava/awt/font/TextAttribute;->POSTURE:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/4 v0, 0x4

    sget-object v1, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/4 v0, 0x5

    sget-object v1, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/4 v0, 0x6

    sget-object v1, Ljava/awt/font/TextAttribute;->SUPERSCRIPT:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/4 v0, 0x7

    sget-object v1, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0x8

    sget-object v1, Ljava/awt/font/TextAttribute;->FOREGROUND:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0x9

    sget-object v1, Ljava/awt/font/TextAttribute;->BACKGROUND:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0xa

    sget-object v1, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0xb

    sget-object v1, Ljava/awt/font/TextAttribute;->STRIKETHROUGH:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0xc

    sget-object v1, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0xd

    sget-object v1, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0xe

    sget-object v1, Ljava/awt/font/TextAttribute;->JUSTIFICATION:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0xf

    sget-object v1, Ljava/awt/font/TextAttribute;->INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0x10

    sget-object v1, Ljava/awt/font/TextAttribute;->INPUT_METHOD_UNDERLINE:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0x11

    sget-object v1, Ljava/awt/font/TextAttribute;->SWAP_COLORS:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0x12

    sget-object v1, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0x13

    sget-object v1, Ljava/awt/font/TextAttribute;->KERNING:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0x14

    sget-object v1, Ljava/awt/font/TextAttribute;->LIGATURES:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    const/16 v0, 0x15

    sget-object v1, Ljava/awt/font/TextAttribute;->TRACKING:Ljava/awt/font/TextAttribute;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getBaselineFor(C)B
    .locals 0

    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/Font2D;->getBaselineFor(C)B

    move-result p0

    return p0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/awt/Font;->getFamily_NoClientCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFamily(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null locale doesn\'t mean default"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getFamily_NoClientCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/awt/Font;->getFamily(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/awt/Font;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    invoke-virtual {p0, p1}, Lsun/font/Font2D;->getFontName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null locale doesn\'t mean default"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItalicAngle()F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ljava/awt/Font;->getItalicAngle(Ljava/awt/font/FontRenderContext;)F

    move-result p0

    return p0
.end method

.method public getLineMetrics(Ljava/lang/String;IILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;
    .locals 0

    .line 3
    invoke-direct {p0, p4}, Ljava/awt/Font;->defaultLineMetrics(Ljava/awt/font/FontRenderContext;)Lsun/font/FontLineMetrics;

    move-result-object p0

    sub-int/2addr p3, p2

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 4
    :cond_0
    iput p3, p0, Lsun/font/FontLineMetrics;->numchars:I

    return-object p0
.end method

.method public getLineMetrics(Ljava/lang/String;Ljava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/awt/Font;->defaultLineMetrics(Ljava/awt/font/FontRenderContext;)Lsun/font/FontLineMetrics;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lsun/font/FontLineMetrics;->numchars:I

    return-object p0
.end method

.method public getLineMetrics(Ljava/text/CharacterIterator;IILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;
    .locals 0

    .line 7
    invoke-direct {p0, p4}, Ljava/awt/Font;->defaultLineMetrics(Ljava/awt/font/FontRenderContext;)Lsun/font/FontLineMetrics;

    move-result-object p0

    sub-int/2addr p3, p2

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 8
    :cond_0
    iput p3, p0, Lsun/font/FontLineMetrics;->numchars:I

    return-object p0
.end method

.method public getLineMetrics([CIILjava/awt/font/FontRenderContext;)Ljava/awt/font/LineMetrics;
    .locals 0

    .line 5
    invoke-direct {p0, p4}, Ljava/awt/Font;->defaultLineMetrics(Ljava/awt/font/FontRenderContext;)Lsun/font/FontLineMetrics;

    move-result-object p0

    sub-int/2addr p3, p2

    if-gez p3, :cond_0

    const/4 p3, 0x0

    .line 6
    :cond_0
    iput p3, p0, Lsun/font/FontLineMetrics;->numchars:I

    return-object p0
.end method

.method public getMaxCharBounds(Ljava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [F

    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lsun/font/Font2D;->getFontMetrics(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[F)V

    new-instance p0, Ljava/awt/geom/Rectangle2D$Float;

    const/4 p1, 0x0

    aget p1, v0, p1

    neg-float v1, p1

    const/4 v2, 0x3

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    add-float/2addr p1, v3

    const/4 v3, 0x2

    aget v0, v0, v3

    add-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object p0
.end method

.method public getMissingGlyphCode()I
    .locals 0

    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/Font2D;->getMissingGlyphCode()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNumGlyphs()I
    .locals 0

    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/Font2D;->getNumGlyphs()I

    move-result p0

    return p0
.end method

.method public getPSName()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Ljava/awt/Font;->getFont2D()Lsun/font/Font2D;

    move-result-object p0

    invoke-virtual {p0}, Lsun/font/Font2D;->getPostscriptName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPeer()Ljava/awt/peer/FontPeer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/awt/Font;->getPeer_NoClientCode()Ljava/awt/peer/FontPeer;

    move-result-object p0

    return-object p0
.end method

.method public final getPeer_NoClientCode()Ljava/awt/peer/FontPeer;
    .locals 3

    iget-object v0, p0, Ljava/awt/Font;->peer:Ljava/awt/peer/FontPeer;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    iget-object v1, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    iget v2, p0, Ljava/awt/Font;->style:I

    invoke-virtual {v0, v1, v2}, Ljava/awt/Toolkit;->getFontPeer(Ljava/lang/String;I)Ljava/awt/peer/FontPeer;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/Font;->peer:Ljava/awt/peer/FontPeer;

    :cond_0
    iget-object p0, p0, Ljava/awt/Font;->peer:Ljava/awt/peer/FontPeer;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Ljava/awt/Font;->size:I

    return p0
.end method

.method public getSize2D()F
    .locals 0

    iget p0, p0, Ljava/awt/Font;->pointSize:F

    return p0
.end method

.method public getStringBounds(Ljava/lang/String;IILjava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, p4}, Ljava/awt/Font;->getStringBounds(Ljava/lang/String;Ljava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getStringBounds(Ljava/lang/String;Ljava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Ljava/awt/Font;->getStringBounds([CIILjava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getStringBounds(Ljava/text/CharacterIterator;IILjava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;
    .locals 3

    .line 20
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 21
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_2

    if-gt p2, p3, :cond_1

    sub-int/2addr p3, p2

    .line 22
    new-array v0, p3, [C

    .line 23
    invoke-interface {p1, p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_0

    .line 24
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v2

    aput-char v2, v0, v1

    .line 25
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, v0, p2, p3, p4}, Ljava/awt/Font;->getStringBounds([CIILjava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "range length: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "limit: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStringBounds([CIILjava/awt/font/FontRenderContext;)Ljava/awt/geom/Rectangle2D;
    .locals 7

    if-ltz p2, :cond_6

    .line 5
    array-length v0, p1

    if-gt p3, v0, :cond_5

    if-gt p2, p3, :cond_4

    .line 6
    iget-object v0, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lsun/font/AttributeValues;->getKerning()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    invoke-virtual {v0}, Lsun/font/AttributeValues;->getLigatures()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    .line 8
    invoke-virtual {v0}, Lsun/font/AttributeValues;->getBaselineTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 9
    invoke-static {p1, p2, p3}, Lsun/font/FontUtilities;->isComplexText([CII)Z

    move-result v0

    xor-int/2addr v0, v1

    :cond_2
    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Lsun/font/AndroidGlyphVector;

    sub-int v5, p3, p2

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lsun/font/AndroidGlyphVector;-><init>(Ljava/awt/Font;[CIILjava/awt/font/FontRenderContext;)V

    .line 11
    invoke-virtual {v0}, Ljava/awt/font/GlyphVector;->getLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p3, p2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 13
    new-instance p1, Ljava/awt/font/TextLayout;

    invoke-direct {p1, v0, p0, p4}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    .line 14
    new-instance p0, Ljava/awt/geom/Rectangle2D$Float;

    invoke-virtual {p1}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result p2

    neg-float p2, p2

    invoke-virtual {p1}, Ljava/awt/font/TextLayout;->getAdvance()F

    move-result p3

    .line 15
    invoke-virtual {p1}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result p4

    invoke-virtual {p1}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v0

    add-float/2addr p4, v0

    .line 16
    invoke-virtual {p1}, Ljava/awt/font/TextLayout;->getLeading()F

    move-result p1

    add-float/2addr p4, p1

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object p0

    .line 17
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "range length: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "limit: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_6
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStyle()I
    .locals 0

    iget p0, p0, Ljava/awt/Font;->style:I

    return p0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 13

    iget-boolean v0, p0, Ljava/awt/Font;->nonIdentityTx:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Ljava/awt/Font;->getAttributeValues()Lsun/font/AttributeValues;

    move-result-object v0

    sget-object v1, Lsun/font/EAttribute;->ETRANSFORM:Lsun/font/EAttribute;

    invoke-virtual {v0, v1}, Lsun/font/AttributeValues;->isNonDefault(Lsun/font/EAttribute;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Lsun/font/AttributeValues;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/awt/geom/AffineTransform;

    invoke-direct {v1}, Ljava/awt/geom/AffineTransform;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lsun/font/AttributeValues;->getSuperscript()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lsun/font/AttributeValues;->getSuperscript()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v5, :cond_2

    const/4 v3, -0x1

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    neg-int v2, v2

    :goto_2
    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_3
    and-int/lit8 v9, v2, 0x7

    if-le v9, v4, :cond_4

    int-to-float v10, v3

    sget-object v11, Ljava/awt/Font;->ssinfo:[F

    aget v12, v11, v9

    aget v4, v11, v4

    sub-float/2addr v12, v4

    mul-float/2addr v10, v12

    float-to-double v10, v10

    add-double/2addr v7, v10

    shr-int/lit8 v2, v2, 0x3

    neg-int v3, v3

    move v4, v9

    goto :goto_3

    :cond_4
    iget p0, p0, Ljava/awt/Font;->pointSize:F

    float-to-double v2, p0

    mul-double/2addr v7, v2

    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    int-to-double v9, v4

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/awt/geom/AffineTransform;->preConcatenate(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {v1, v2, v3, v2, v3}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    :cond_5
    sget-object p0, Lsun/font/EAttribute;->EWIDTH:Lsun/font/EAttribute;

    invoke-virtual {v0, p0}, Lsun/font/AttributeValues;->isNonDefault(Lsun/font/EAttribute;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lsun/font/AttributeValues;->getWidth()F

    move-result p0

    float-to-double v2, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    :cond_6
    return-object v1

    :cond_7
    new-instance p0, Ljava/awt/geom/AffineTransform;

    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;-><init>()V

    return-object p0
.end method

.method public hasLayoutAttributes()Z
    .locals 0

    iget-boolean p0, p0, Ljava/awt/Font;->hasLayoutAttributes:Z

    return p0
.end method

.method public hasUniformLineMetrics()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljava/awt/Font;->hash:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/awt/Font;->style:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/awt/Font;->size:I

    xor-int/2addr v0, v1

    iput v0, p0, Ljava/awt/Font;->hash:I

    iget-boolean v0, p0, Ljava/awt/Font;->nonIdentityTx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsun/font/AttributeValues;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/awt/Font;->hash:I

    iget-object v1, p0, Ljava/awt/Font;->values:Lsun/font/AttributeValues;

    invoke-virtual {v1}, Lsun/font/AttributeValues;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/geom/AffineTransform;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Ljava/awt/Font;->hash:I

    :cond_0
    iget p0, p0, Ljava/awt/Font;->hash:I

    return p0
.end method

.method public isBold()Z
    .locals 1

    iget p0, p0, Ljava/awt/Font;->style:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isItalic()Z
    .locals 0

    iget p0, p0, Ljava/awt/Font;->style:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPlain()Z
    .locals 0

    iget p0, p0, Ljava/awt/Font;->style:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransformed()Z
    .locals 0

    iget-boolean p0, p0, Ljava/awt/Font;->nonIdentityTx:Z

    return p0
.end method

.method public layoutGlyphVector(Ljava/awt/font/FontRenderContext;[CIII)Ljava/awt/font/GlyphVector;
    .locals 9

    const/4 v0, 0x0

    invoke-static {v0}, Lsun/font/GlyphLayout;->get(Lsun/font/GlyphLayout$LayoutEngineFactory;)Lsun/font/GlyphLayout;

    move-result-object v0

    sub-int v6, p4, p3

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v7, p5

    invoke-virtual/range {v1 .. v8}, Lsun/font/GlyphLayout;->layout(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;[CIIILsun/font/AndroidGlyphVector;)Lsun/font/AndroidGlyphVector;

    move-result-object p0

    invoke-static {v0}, Lsun/font/GlyphLayout;->done(Lsun/font/GlyphLayout;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/Font;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bolditalic"

    goto :goto_0

    :cond_0
    const-string v0, "bold"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/awt/Font;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "italic"

    goto :goto_0

    :cond_2
    const-string v0, "plain"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[family="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/awt/Font;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",style="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",size="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/Font;->size:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
