.class public Lcom/sun/imageio/plugins/common/BogusColorSpace;
.super Ljava/awt/color/ColorSpace;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/BogusColorSpace;->getType(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Ljava/awt/color/ColorSpace;-><init>(II)V

    return-void
.end method

.method private static getType(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    if-eq p0, v0, :cond_0

    add-int/lit8 p0, p0, 0xa

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "numComponents < 1!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public fromCIEXYZ([F)[F
    .locals 2

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result p0

    new-array v0, p0, [F

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "xyzvalue.length < 3"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fromRGB([F)[F
    .locals 2

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result p0

    new-array v0, p0, [F

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "rgbvalue.length < 3"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toCIEXYZ([F)[F
    .locals 2

    array-length v0, p1

    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [F

    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "colorvalue.length < getNumComponents()"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toRGB([F)[F
    .locals 2

    array-length v0, p1

    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [F

    invoke-virtual {p0}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "colorvalue.length < getNumComponents()"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
