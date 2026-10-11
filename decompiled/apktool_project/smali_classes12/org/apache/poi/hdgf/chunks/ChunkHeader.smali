.class public abstract Lorg/apache/poi/hdgf/chunks/ChunkHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:I

.field private length:I

.field private type:I

.field private unknown1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createChunkHeader(I[BI)Lorg/apache/poi/hdgf/chunks/ChunkHeader;
    .locals 2

    const/4 v0, 0x6

    if-lt p0, v0, :cond_1

    if-le p0, v0, :cond_0

    new-instance p0, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV11;

    invoke-direct {p0}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV11;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;

    invoke-direct {p0}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;-><init>()V

    :goto_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->setType(I)V

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->setId(I)V

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->setUnknown1(I)V

    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->setLength(I)V

    add-int/lit8 v0, p2, 0x10

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;->setUnknown2(S)V

    add-int/lit8 p2, p2, 0x12

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;->setUnknown3(S)V

    return-object p0

    :cond_1
    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/poi/hdgf/exceptions/OldVisioFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Visio files with versions below 4 are not supported, yours was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/hdgf/exceptions/OldVisioFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    new-instance p0, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV4V5;

    invoke-direct {p0}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV4V5;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->setType(I)V

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->setId(I)V

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV4V5;->setUnknown2(S)V

    add-int/lit8 v0, p2, 0x5

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV4V5;->setUnknown3(S)V

    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->setUnknown1(I)V

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->setLength(I)V

    return-object p0
.end method

.method public static getHeaderSize(I)I
    .locals 1

    const/4 v0, 0x6

    if-lt p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;->getHeaderSize()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV4V5;->getHeaderSize()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract getChunkCharset()Ljava/nio/charset/Charset;
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->id:I

    return p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->length:I

    return p0
.end method

.method public abstract getSizeInBytes()I
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->type:I

    return p0
.end method

.method public getUnknown1()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->unknown1:I

    return p0
.end method

.method public abstract hasSeparator()Z
.end method

.method public abstract hasTrailer()Z
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->id:I

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->length:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->type:I

    return-void
.end method

.method public setUnknown1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->unknown1:I

    return-void
.end method
