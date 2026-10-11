.class public Lorg/apache/commons/compress/harmony/unpack200/FileBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "SourceFile"


# instance fields
.field public a:[[B

.field public b:[I

.field public c:[Ljava/lang/String;

.field public d:[I

.field public e:[J

.field public final f:[Ljava/lang/String;

.field public g:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpUTF8()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->f:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileBits()[[B
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->a:[[B

    return-object p0
.end method

.method public getFileModtime()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->b:[I

    return-object p0
.end method

.method public getFileName()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public getFileOptions()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->d:[I

    return-object p0
.end method

.method public getFileSize()[J
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->e:[J

    return-object p0
.end method

.method public processFileBits()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getNumberOfFiles()I

    move-result v0

    new-array v1, v0, [[B

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->a:[[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->e:[J

    aget-wide v2, v2, v1

    long-to-int v2, v2

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->a:[[B

    new-array v4, v2, [B

    aput-object v4, v3, v1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->g:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eqz v2, :cond_1

    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes but read "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getNumberOfFiles()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v7

    const-string v2, "file_name"

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->f:[Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v8

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->c:[Ljava/lang/String;

    const-string v2, "file_size"

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFileSizeHi()Z

    move-result v6

    move-object v1, p0

    move v4, v0

    move-object v5, v8

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[J

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->e:[J

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFileModtime()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "file_modtime"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->b:[I

    goto :goto_0

    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->b:[I

    :goto_0
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFileOptions()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file_options"

    invoke-virtual {p0, v1, p1, v8, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->d:[I

    goto :goto_1

    :cond_1
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->d:[I

    :goto_1
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->g:Ljava/io/InputStream;

    return-void
.end method

.method public unpack()V
    .locals 0

    return-void
.end method
