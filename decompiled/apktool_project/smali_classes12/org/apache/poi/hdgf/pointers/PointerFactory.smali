.class public final Lorg/apache/poi/hdgf/pointers/PointerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_NUMBER_OF_POINTERS:I = 0x186a0


# instance fields
.field private final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/hdgf/pointers/PointerFactory;->version:I

    return-void
.end method


# virtual methods
.method public createContainerPointers(Lorg/apache/poi/hdgf/pointers/Pointer;[B)[Lorg/apache/poi/hdgf/pointers/Pointer;
    .locals 5

    invoke-virtual {p1, p2}, Lorg/apache/poi/hdgf/pointers/Pointer;->getNumPointersOffset([B)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lorg/apache/poi/hdgf/pointers/Pointer;->getNumPointers(I[B)I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/hdgf/pointers/Pointer;->getPostNumPointersSkip()I

    move-result p1

    if-ltz v1, :cond_1

    int-to-long v2, v1

    const v4, 0x186a0

    invoke-static {v2, v3, v4}, Lorg/apache/poi/util/IOUtils;->safelyAllocateCheck(JI)V

    add-int/2addr v0, p1

    new-array p1, v1, [Lorg/apache/poi/hdgf/pointers/Pointer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, p2, v0}, Lorg/apache/poi/hdgf/pointers/PointerFactory;->createPointer([BI)Lorg/apache/poi/hdgf/pointers/Pointer;

    move-result-object v3

    aput-object v3, p1, v2

    invoke-virtual {v3}, Lorg/apache/poi/hdgf/pointers/Pointer;->getSizeInBytes()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot create container pointers with negative count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createPointer([BI)Lorg/apache/poi/hdgf/pointers/Pointer;
    .locals 2

    iget v0, p0, Lorg/apache/poi/hdgf/pointers/PointerFactory;->version:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    new-instance p0, Lorg/apache/poi/hdgf/pointers/PointerV6;

    invoke-direct {p0}, Lorg/apache/poi/hdgf/pointers/PointerV6;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->setType(I)V

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->setAddress(I)V

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->setOffset(I)V

    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->setLength(I)V

    add-int/lit8 p2, p2, 0x10

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hdgf/pointers/Pointer;->setFormat(S)V

    return-object p0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p0, Lorg/apache/poi/hdgf/pointers/PointerV5;

    invoke-direct {p0}, Lorg/apache/poi/hdgf/pointers/PointerV5;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->setType(I)V

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->setFormat(S)V

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->setAddress(I)V

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/pointers/Pointer;->setOffset(I)V

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hdgf/pointers/Pointer;->setLength(I)V

    return-object p0

    :cond_1
    new-instance p1, Lorg/apache/poi/hdgf/exceptions/OldVisioFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Visio files with versions below 5 are not supported, yours was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/hdgf/pointers/PointerFactory;->version:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/hdgf/exceptions/OldVisioFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getVersion()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hdgf/pointers/PointerFactory;->version:I

    return p0
.end method
