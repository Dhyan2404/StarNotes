.class public final Lorg/apache/poi/hdgf/pointers/PointerV6;
.super Lorg/apache/poi/hdgf/pointers/Pointer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hdgf/pointers/Pointer;-><init>()V

    return-void
.end method

.method public static getNumPointersOffsetV6([B)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0
.end method

.method public static getNumPointersV6(I[B)I
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    return p0
.end method

.method public static getPostNumPointersSkipV6()I
    .locals 1

    const/16 v0, 0x8

    return v0
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
    .locals 2

    const/16 v0, 0xd0

    const/16 v1, 0xdf

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hdgf/pointers/Pointer;->isFormatBetween(II)Z

    move-result p0

    return p0
.end method

.method public destinationHasPointers()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/pointers/Pointer;->getType()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

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
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
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

    invoke-static {p1, p2}, Lorg/apache/poi/hdgf/pointers/PointerV6;->getNumPointersV6(I[B)I

    move-result p0

    return p0
.end method

.method public getNumPointersOffset([B)I
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/hdgf/pointers/PointerV6;->getNumPointersOffsetV6([B)I

    move-result p0

    return p0
.end method

.method public getPostNumPointersSkip()I
    .locals 0

    invoke-static {}, Lorg/apache/poi/hdgf/pointers/PointerV6;->getPostNumPointersSkipV6()I

    move-result p0

    return p0
.end method

.method public getSizeInBytes()I
    .locals 0

    const/16 p0, 0x12

    return p0
.end method
