.class public Ljava/awt/Color;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Paint;
.implements Ljava/io/Serializable;


# static fields
.field public static final BLACK:Ljava/awt/Color;

.field public static final BLUE:Ljava/awt/Color;

.field public static final CYAN:Ljava/awt/Color;

.field public static final DARK_GRAY:Ljava/awt/Color;

.field private static final FACTOR:D = 0.7

.field public static final GRAY:Ljava/awt/Color;

.field public static final GREEN:Ljava/awt/Color;

.field public static final LIGHT_GRAY:Ljava/awt/Color;

.field public static final MAGENTA:Ljava/awt/Color;

.field public static final ORANGE:Ljava/awt/Color;

.field public static final PINK:Ljava/awt/Color;

.field public static final RED:Ljava/awt/Color;

.field public static final TRANSPARENT:Ljava/awt/Color;

.field public static final WHITE:Ljava/awt/Color;

.field public static final YELLOW:Ljava/awt/Color;

.field public static final black:Ljava/awt/Color;

.field public static final blue:Ljava/awt/Color;

.field public static final cyan:Ljava/awt/Color;

.field public static final darkGray:Ljava/awt/Color;

.field public static final gray:Ljava/awt/Color;

.field public static final green:Ljava/awt/Color;

.field public static final lightGray:Ljava/awt/Color;

.field public static final magenta:Ljava/awt/Color;

.field public static final orange:Ljava/awt/Color;

.field public static final pink:Ljava/awt/Color;

.field public static final red:Ljava/awt/Color;

.field private static final serialVersionUID:J = 0x1a51783108f3375L

.field public static final white:Ljava/awt/Color;

.field public static final yellow:Ljava/awt/Color;


# instance fields
.field private cs:Ljava/awt/color/ColorSpace;

.field private falpha:F

.field private frgbvalue:[F

.field private fvalue:[F

.field value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/awt/Color;

    const/16 v1, 0xff

    invoke-direct {v0, v1, v1, v1}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->white:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/16 v2, 0xc0

    invoke-direct {v0, v2, v2, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->lightGray:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->LIGHT_GRAY:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/16 v2, 0x80

    invoke-direct {v0, v2, v2, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->gray:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->GRAY:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/16 v2, 0x40

    invoke-direct {v0, v2, v2, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->darkGray:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->DARK_GRAY:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->black:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v1, v2, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->red:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->RED:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/16 v3, 0xaf

    invoke-direct {v0, v1, v3, v3}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->pink:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->PINK:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v3, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->orange:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->ORANGE:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v1, v1, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->YELLOW:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v2, v1, v2}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->green:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->GREEN:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v1, v2, v1}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->magenta:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->MAGENTA:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v2, v1, v1}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->cyan:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->CYAN:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v2, v2, v1}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Ljava/awt/Color;->blue:Ljava/awt/Color;

    sput-object v0, Ljava/awt/Color;->BLUE:Ljava/awt/Color;

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v2, v2, v2, v2}, Ljava/awt/Color;-><init>(IIII)V

    sput-object v0, Ljava/awt/Color;->TRANSPARENT:Ljava/awt/Color;

    invoke-static {}, Ljava/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/awt/Color;->initIDs()V

    :cond_0
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 7

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    mul-float v2, p2, v0

    float-to-double v5, v2

    add-double/2addr v5, v3

    double-to-int v2, v5

    mul-float/2addr v0, p3

    float-to-double v5, v0

    add-double/2addr v5, v3

    double-to-int v0, v5

    .line 22
    invoke-direct {p0, v1, v2, v0}, Ljava/awt/Color;-><init>(III)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    invoke-static {p1, p2, p3, v0}, Ljava/awt/Color;->testColorValueRange(FFFF)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 24
    iput-object v1, p0, Ljava/awt/Color;->frgbvalue:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    aput p3, v1, p1

    .line 25
    iput v0, p0, Ljava/awt/Color;->falpha:F

    .line 26
    iput-object v1, p0, Ljava/awt/Color;->fvalue:[F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 8

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    mul-float v2, p2, v0

    float-to-double v5, v2

    add-double/2addr v5, v3

    double-to-int v2, v5

    mul-float v5, p3, v0

    float-to-double v5, v5

    add-double/2addr v5, v3

    double-to-int v5, v5

    mul-float/2addr v0, p4

    float-to-double v6, v0

    add-double/2addr v6, v3

    double-to-int v0, v6

    .line 27
    invoke-direct {p0, v1, v2, v5, v0}, Ljava/awt/Color;-><init>(IIII)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 28
    iput-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    .line 29
    iput p4, p0, Ljava/awt/Color;->falpha:F

    .line 30
    iput-object v0, p0, Ljava/awt/Color;->fvalue:[F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    .line 11
    iput-object v0, p0, Ljava/awt/Color;->fvalue:[F

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Ljava/awt/Color;->falpha:F

    .line 13
    iput-object v0, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 14
    iput p1, p0, Ljava/awt/Color;->value:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/16 v0, 0xff

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/Color;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .annotation runtime Ljava/beans/ConstructorProperties;
        value = {
            "red",
            "green",
            "blue",
            "alpha"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    .line 4
    iput-object v0, p0, Ljava/awt/Color;->fvalue:[F

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Ljava/awt/Color;->falpha:F

    .line 6
    iput-object v0, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    and-int/lit16 v0, p4, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Ljava/awt/Color;->value:I

    .line 8
    invoke-static {p1, p2, p3, p4}, Ljava/awt/Color;->testColorValueRange(IIII)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    .line 17
    iput-object v0, p0, Ljava/awt/Color;->fvalue:[F

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Ljava/awt/Color;->falpha:F

    .line 19
    iput-object v0, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    if-eqz p2, :cond_0

    .line 20
    iput p1, p0, Ljava/awt/Color;->value:I

    goto :goto_0

    :cond_0
    const/high16 p2, -0x1000000

    or-int/2addr p1, p2

    .line 21
    iput p1, p0, Ljava/awt/Color;->value:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/awt/color/ColorSpace;[FF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 32
    iput-object v3, v0, Ljava/awt/Color;->frgbvalue:[F

    .line 33
    iput-object v3, v0, Ljava/awt/Color;->fvalue:[F

    const/4 v4, 0x0

    .line 34
    iput v4, v0, Ljava/awt/Color;->falpha:F

    .line 35
    iput-object v3, v0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    .line 36
    invoke-virtual/range {p1 .. p1}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v3

    .line 37
    new-array v4, v3, [F

    iput-object v4, v0, Ljava/awt/Color;->fvalue:[F

    const/4 v4, 0x0

    const-string v5, ""

    move v6, v4

    move v7, v6

    :goto_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    if-ge v6, v3, :cond_2

    .line 38
    aget v13, p2, v6

    float-to-double v14, v13

    cmpg-double v10, v14, v10

    if-ltz v10, :cond_1

    float-to-double v10, v13

    cmpl-double v8, v10, v8

    if-lez v8, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    iget-object v8, v0, Ljava/awt/Color;->fvalue:[F

    aput v13, v8, v6

    goto :goto_2

    .line 40
    :cond_1
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Component "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v7, v12

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    float-to-double v13, v2

    cmpg-double v3, v13, v10

    if-ltz v3, :cond_4

    cmpl-double v3, v13, v8

    if-lez v3, :cond_3

    goto :goto_3

    .line 41
    :cond_3
    iput v2, v0, Ljava/awt/Color;->falpha:F

    goto :goto_4

    .line 42
    :cond_4
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Alpha"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v7, v12

    :goto_4
    if-nez v7, :cond_5

    .line 43
    iget-object v2, v0, Ljava/awt/Color;->fvalue:[F

    invoke-virtual {v1, v2}, Ljava/awt/color/ColorSpace;->toRGB([F)[F

    move-result-object v2

    iput-object v2, v0, Ljava/awt/Color;->frgbvalue:[F

    .line 44
    iput-object v1, v0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    .line 45
    iget v1, v0, Ljava/awt/Color;->falpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aget v5, v2, v4

    mul-float/2addr v5, v3

    float-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    aget v5, v2, v12

    mul-float/2addr v5, v3

    float-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    const/4 v5, 0x2

    aget v2, v2, v5

    mul-float/2addr v2, v3

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    iput v1, v0, Ljava/awt/Color;->value:I

    return-void

    .line 46
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color parameter outside of expected range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static HSBtoRGB(FFF)I
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v3, 0x0

    if-nez v0, :cond_0

    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p0, p2

    goto :goto_0

    :cond_0
    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    sub-float/2addr p0, v0

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr p0, v0

    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v0, v4

    sub-float v0, p0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p1

    mul-float/2addr v5, p2

    mul-float v6, p1, v0

    sub-float v6, v4, v6

    mul-float/2addr v6, p2

    sub-float v0, v4, v0

    mul-float/2addr p1, v0

    sub-float/2addr v4, p1

    mul-float/2addr v4, p2

    float-to-int p0, p0

    if-eqz p0, :cond_6

    const/4 p1, 0x1

    if-eq p0, p1, :cond_5

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x3

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    move p0, v3

    :goto_0
    move p1, p0

    move p2, p1

    goto :goto_3

    :cond_1
    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p0, p2

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int p1, v5

    mul-float/2addr v6, v2

    add-float/2addr v6, v1

    float-to-int p2, v6

    goto :goto_3

    :cond_2
    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p0, v4

    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int p1, v5

    goto :goto_1

    :cond_3
    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int p0, v5

    mul-float/2addr v6, v2

    add-float/2addr v6, v1

    float-to-int p1, v6

    :goto_1
    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p2, p2

    goto :goto_3

    :cond_4
    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int p0, v5

    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p1, p2

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p2, v4

    goto :goto_3

    :cond_5
    mul-float/2addr v6, v2

    add-float/2addr v6, v1

    float-to-int p0, v6

    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p1, p2

    goto :goto_2

    :cond_6
    mul-float/2addr p2, v2

    add-float/2addr p2, v1

    float-to-int p0, p2

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int p1, v4

    :goto_2
    mul-float/2addr v5, v2

    add-float/2addr v5, v1

    float-to-int p2, v5

    :goto_3
    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x0

    or-int/2addr p0, p1

    return p0
.end method

.method public static RGBtoHSB(III[F)[F
    .locals 7

    if-nez p3, :cond_0

    const/4 p3, 0x3

    new-array p3, p3, [F

    :cond_0
    if-le p0, p1, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    if-le p2, v0, :cond_2

    move v0, p2

    :cond_2
    if-ge p0, p1, :cond_3

    move v1, p0

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    if-ge p2, v1, :cond_4

    move v1, p2

    :cond_4
    int-to-float v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v3, v2, v3

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    sub-int v5, v0, v1

    int-to-float v5, v5

    div-float/2addr v5, v2

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    cmpl-float v2, v5, v4

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    sub-int v2, v0, p0

    int-to-float v2, v2

    sub-int v1, v0, v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    sub-int v6, v0, p1

    int-to-float v6, v6

    div-float/2addr v6, v1

    sub-int p2, v0, p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    if-ne p0, v0, :cond_7

    sub-float/2addr p2, v6

    goto :goto_3

    :cond_7
    if-ne p1, v0, :cond_8

    const/high16 p0, 0x40000000    # 2.0f

    add-float/2addr v2, p0

    sub-float p2, v2, p2

    goto :goto_3

    :cond_8
    const/high16 p0, 0x40800000    # 4.0f

    add-float/2addr v6, p0

    sub-float p2, v6, v2

    :goto_3
    const/high16 p0, 0x40c00000    # 6.0f

    div-float/2addr p2, p0

    cmpg-float p0, p2, v4

    if-gez p0, :cond_9

    const/high16 p0, 0x3f800000    # 1.0f

    add-float v4, p2, p0

    goto :goto_4

    :cond_9
    move v4, p2

    :goto_4
    const/4 p0, 0x0

    aput v4, p3, p0

    const/4 p0, 0x1

    aput v5, p3, p0

    const/4 p0, 0x2

    aput v3, p3, p0

    return-object p3
.end method

.method public static decode(Ljava/lang/String;)Ljava/awt/Color;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v0, Ljava/awt/Color;

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p0, p0, 0xff

    invoke-direct {v0, v1, v2, p0}, Ljava/awt/Color;-><init>(III)V

    return-object v0
.end method

.method public static getColor(Ljava/lang/String;)Ljava/awt/Color;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Ljava/awt/Color;->getColor(Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public static getColor(Ljava/lang/String;I)Ljava/awt/Color;
    .locals 2

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 7
    :cond_0
    new-instance p0, Ljava/awt/Color;

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v0, v1, p1}, Ljava/awt/Color;-><init>(III)V

    return-object p0
.end method

.method public static getColor(Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color;
    .locals 2

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4
    new-instance p1, Ljava/awt/Color;

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    invoke-direct {p1, v0, v1, p0}, Ljava/awt/Color;-><init>(III)V

    return-object p1
.end method

.method public static getHSBColor(FFF)Ljava/awt/Color;
    .locals 1

    new-instance v0, Ljava/awt/Color;

    invoke-static {p0, p1, p2}, Ljava/awt/Color;->HSBtoRGB(FFF)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/awt/Color;-><init>(I)V

    return-object v0
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method

.method private static testColorValueRange(FFFF)V
    .locals 8

    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpg-double p3, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    const-string v7, ""

    if-ltz p3, :cond_1

    cmpl-double p3, v0, v4

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Alpha"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move p3, v6

    :goto_1
    float-to-double v0, p0

    cmpg-double p0, v0, v2

    if-ltz p0, :cond_2

    cmpl-double p0, v0, v4

    if-lez p0, :cond_3

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Red"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move p3, v6

    :cond_3
    float-to-double p0, p1

    cmpg-double v0, p0, v2

    if-ltz v0, :cond_4

    cmpl-double p0, p0, v4

    if-lez p0, :cond_5

    .line 8
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Green"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move p3, v6

    :cond_5
    float-to-double p0, p2

    cmpg-double p2, p0, v2

    if-ltz p2, :cond_6

    cmpl-double p0, p0, v4

    if-lez p0, :cond_7

    .line 9
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Blue"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move p3, v6

    :cond_7
    if-eq p3, v6, :cond_8

    return-void

    .line 10
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Color parameter outside of expected range:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static testColorValueRange(IIII)V
    .locals 3

    const/16 v0, 0xff

    const/4 v1, 0x1

    const-string v2, ""

    if-ltz p3, :cond_1

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Alpha"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move p3, v1

    :goto_1
    if-ltz p0, :cond_2

    if-le p0, v0, :cond_3

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Red"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move p3, v1

    :cond_3
    if-ltz p1, :cond_4

    if-le p1, v0, :cond_5

    .line 3
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Green"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move p3, v1

    :cond_5
    if-ltz p2, :cond_6

    if-le p2, v0, :cond_7

    .line 4
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Blue"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move p3, v1

    :cond_7
    if-eq p3, v1, :cond_8

    return-void

    .line 5
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Color parameter outside of expected range:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public brighter()Ljava/awt/Color;
    .locals 10

    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    const/4 v3, 0x3

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    new-instance v0, Ljava/awt/Color;

    invoke-direct {v0, v3, v3, v3, p0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v3, :cond_1

    move v0, v3

    :cond_1
    if-lez v1, :cond_2

    if-ge v1, v3, :cond_2

    move v1, v3

    :cond_2
    if-lez v2, :cond_3

    if-ge v2, v3, :cond_3

    move v2, v3

    :cond_3
    new-instance v3, Ljava/awt/Color;

    int-to-double v4, v0

    const-wide v6, 0x3fe6666666666666L    # 0.7

    div-double/2addr v4, v6

    double-to-int v0, v4

    const/16 v4, 0xff

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v8, v1

    div-double/2addr v8, v6

    double-to-int v1, v8

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-double v8, v2

    div-double/2addr v8, v6

    double-to-int v2, v8

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v3, v0, v1, v2, p0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v3
.end method

.method public declared-synchronized createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;
    .locals 0

    monitor-enter p0

    :try_start_0
    new-instance p2, Ljava/awt/ColorPaintContext;

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p3

    invoke-direct {p2, p3, p1}, Ljava/awt/ColorPaintContext;-><init>(ILjava/awt/image/ColorModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public darker()Ljava/awt/Color;
    .locals 8

    new-instance v0, Ljava/awt/Color;

    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v3

    double-to-int v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v3

    double-to-int v3, v6

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    invoke-direct {v0, v1, v5, v2, p0}, Ljava/awt/Color;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/awt/Color;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getRGB()I

    move-result p1

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAlpha()I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getBlue()I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    shr-int/lit8 p0, p0, 0x0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getColorComponents(Ljava/awt/color/ColorSpace;[F)[F
    .locals 5

    .line 6
    iget-object v0, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    .line 7
    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    .line 8
    :cond_0
    iget-object v0, p0, Ljava/awt/Color;->fvalue:[F

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 9
    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 10
    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 11
    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 12
    :cond_1
    iget-object p0, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    invoke-virtual {p0, v0}, Ljava/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Ljava/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object p0

    if-nez p2, :cond_2

    return-object p0

    .line 14
    :cond_2
    :goto_0
    array-length p1, p0

    if-ge v1, p1, :cond_3

    .line 15
    aget p1, p0, v1

    aput p1, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method public getColorComponents([F)[F
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/awt/Color;->fvalue:[F

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/awt/Color;->getRGBColorComponents([F)[F

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    array-length v0, v0

    if-nez p1, :cond_1

    .line 4
    new-array p1, v0, [F

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Ljava/awt/Color;->fvalue:[F

    aget v2, v2, v1

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public getColorSpace()Ljava/awt/color/ColorSpace;
    .locals 1

    iget-object v0, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    :cond_0
    iget-object p0, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    return-object p0
.end method

.method public getComponents(Ljava/awt/color/ColorSpace;[F)[F
    .locals 6

    .line 7
    iget-object v0, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    .line 8
    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    .line 9
    :cond_0
    iget-object v0, p0, Ljava/awt/Color;->fvalue:[F

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x437f0000    # 255.0f

    if-nez v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 10
    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    aput v4, v0, v1

    .line 11
    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    aput v4, v0, v2

    .line 12
    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 13
    :cond_1
    iget-object v4, p0, Ljava/awt/Color;->cs:Ljava/awt/color/ColorSpace;

    invoke-virtual {v4, v0}, Ljava/awt/color/ColorSpace;->toCIEXYZ([F)[F

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/awt/color/ColorSpace;->fromCIEXYZ([F)[F

    move-result-object p1

    if-nez p2, :cond_2

    .line 15
    array-length p2, p1

    add-int/2addr p2, v2

    new-array p2, p2, [F

    .line 16
    :cond_2
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_3

    .line 17
    aget v0, p1, v1

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, Ljava/awt/Color;->fvalue:[F

    if-nez v0, :cond_4

    .line 19
    array-length p1, p1

    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    aput p0, p2, p1

    goto :goto_1

    .line 20
    :cond_4
    array-length p1, p1

    iget p0, p0, Ljava/awt/Color;->falpha:F

    aput p0, p2, p1

    :goto_1
    return-object p2
.end method

.method public getComponents([F)[F
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/awt/Color;->fvalue:[F

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/awt/Color;->getRGBComponents([F)[F

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    array-length v0, v0

    if-nez p1, :cond_1

    add-int/lit8 p1, v0, 0x1

    .line 4
    new-array p1, p1, [F

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Ljava/awt/Color;->fvalue:[F

    aget v2, v2, v1

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget p0, p0, Ljava/awt/Color;->falpha:F

    aput p0, p1, v0

    return-object p1
.end method

.method public getGreen()I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getRGB()I
    .locals 0

    iget p0, p0, Ljava/awt/Color;->value:I

    return p0
.end method

.method public getRGBColorComponents([F)[F
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [F

    :cond_0
    iget-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v0, v4

    aput v0, p1, v3

    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    aput v0, p1, v2

    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v4

    aput p0, p1, v1

    goto :goto_0

    :cond_1
    aget p0, v0, v3

    aput p0, p1, v3

    aget p0, v0, v2

    aput p0, p1, v2

    aget p0, v0, v1

    aput p0, p1, v1

    :goto_0
    return-object p1
.end method

.method public getRGBComponents([F)[F
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [F

    :cond_0
    iget-object v0, p0, Ljava/awt/Color;->frgbvalue:[F

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v0, v5

    aput v0, p1, v4

    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    aput v0, p1, v3

    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    aput v0, p1, v2

    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v5

    aput p0, p1, v1

    goto :goto_0

    :cond_1
    aget v5, v0, v4

    aput v5, p1, v4

    aget v4, v0, v3

    aput v4, p1, v3

    aget v0, v0, v2

    aput v0, p1, v2

    iget p0, p0, Ljava/awt/Color;->falpha:F

    aput p0, p1, v1

    :goto_0
    return-object p1
.end method

.method public getRed()I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getTransparency()I
    .locals 1

    invoke-virtual {p0}, Ljava/awt/Color;->getAlpha()I

    move-result p0

    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Ljava/awt/Color;->value:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Color;->getRed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/Color;->getBlue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
