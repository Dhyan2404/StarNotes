.class public final Lorg/apache/poi/hdgf/chunks/ChunkHeaderV11;
.super Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;-><init>()V

    return-void
.end method


# virtual methods
.method public getChunkCharset()Ljava/nio/charset/Charset;
    .locals 0

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public hasSeparator()Z
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;->getUnknown2()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;->getUnknown3()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/hdgf/chunks/ChunkHeader;->getType()I

    move-result v2

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_6

    const/16 v3, 0x69

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0xb4

    const/4 v5, 0x2

    if-eq v2, v3, :cond_0

    const/16 v3, 0xb6

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_6

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xaa

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_1

    return v4

    :cond_1
    :goto_0
    if-ne v0, v5, :cond_2

    const/16 v2, 0x55

    if-eq v1, v2, :cond_3

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    const/16 v0, 0x50

    if-eq v1, v0, :cond_4

    :cond_3
    return v4

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/hdgf/chunks/ChunkHeaderV6;->hasTrailer()Z

    move-result p0

    return p0

    :cond_5
    return v4

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
