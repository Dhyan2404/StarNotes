.class public final Lcom/twelvemonkeys/imageio/color/UInt32ColorModel;
.super Ljava/awt/image/ComponentColorModel;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/awt/color/ColorSpace;ZZ)V
    .locals 7

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v5, v0

    const/4 v6, 0x3

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    return-void
.end method


# virtual methods
.method public getNormalizedComponents(Ljava/lang/Object;[FI)[F
    .locals 9

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v0

    if-nez p2, :cond_0

    add-int p2, v0, p3

    new-array p2, p2, [F

    :cond_0
    check-cast p1, [I

    const/4 v1, 0x0

    move v2, p3

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-float v3, v3

    invoke-virtual {p0, v1}, Ljava/awt/image/ColorModel;->getComponentSize(I)I

    move-result v4

    const-wide/16 v5, 0x1

    shl-long v7, v5, v4

    sub-long/2addr v7, v5

    long-to-float v4, v7

    div-float/2addr v3, v4

    aput v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getNumColorComponents()I

    move-result p1

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/2addr p1, p3

    aget p0, p2, p1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    :goto_1
    if-ge p3, p1, :cond_2

    aget p0, p2, p3

    mul-float/2addr p0, v0

    aput p0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-object p2
.end method
