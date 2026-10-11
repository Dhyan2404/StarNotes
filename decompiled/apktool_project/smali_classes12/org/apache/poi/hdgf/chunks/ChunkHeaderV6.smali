.class public Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;
.super Lorg/apache/poi/hdgf/chunks/ChunkHeader;
.source "SourceFile"


# instance fields
.field private unknown2:S

.field private unknown3:S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;-><init>()V

    return-void
.end method

.method public static getHeaderSize()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method


# virtual methods
.method public getChunkCharset()Ljava/nio/charset/Charset;
    .locals 0

    sget-object p0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getSizeInBytes()I
    .locals 0

    invoke-static {}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;->getHeaderSize()I

    move-result p0

    return p0
.end method

.method public getUnknown2()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;->unknown2:S

    return p0
.end method

.method public getUnknown3()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;->unknown3:S

    return p0
.end method

.method public hasSeparator()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasTrailer()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getType()I

    move-result v0

    const/16 v1, 0x2c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 v1, 0x71

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getUnknown1()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setUnknown2(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;->unknown2:S

    return-void
.end method

.method public setUnknown3(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;->unknown3:S

    return-void
.end method
