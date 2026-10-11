.class public final Lorg/apache/poi/hdgf/pointers/PointerV5;
.super Lorg/apache/poi/hdgf/pointers/Pointer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hdgf/pointers/Pointer;-><init>()V

    return-void
.end method


# virtual methods
.method public destinationCompressed()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/pointers/Pointer;->getFormat()S

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public destinationHasChunks()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/pointers/Pointer;->getType()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v0, 0xd0

    const/16 v1, 0xdf

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hdgf/pointers/Pointer;->isFormatBetween(II)Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public destinationHasPointers()Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/pointers/Pointer;->getType()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/16 v0, 0x1d

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hdgf/pointers/Pointer;->isFormatBetween(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x50

    const/16 v1, 0x60

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hdgf/pointers/Pointer;->isFormatBetween(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    return v3

    :cond_3
    return v2
.end method

.method public destinationHasStrings()Z
    .locals 2

    const/16 v0, 0x40

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hdgf/pointers/Pointer;->isFormatBetween(II)Z

    move-result p0

    return p0
.end method

.method public getNumPointers(I[B)I
    .locals 0

    invoke-static {p2, p1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p0

    return p0
.end method

.method public getNumPointersOffset([B)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/pointers/Pointer;->getType()I

    move-result p0

    const/16 p1, 0x14

    if-eq p0, p1, :cond_2

    const/16 p1, 0x4e

    const/16 v0, 0x1e

    if-eq p0, p1, :cond_1

    const/16 p1, 0x1d

    if-eq p0, p1, :cond_1

    if-eq p0, v0, :cond_0

    const/16 p0, 0xa

    return p0

    :cond_0
    const/16 p0, 0x36

    return p0

    :cond_1
    return v0

    :cond_2
    const/16 p0, 0x82

    return p0
.end method

.method public getPostNumPointersSkip()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getSizeInBytes()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method
