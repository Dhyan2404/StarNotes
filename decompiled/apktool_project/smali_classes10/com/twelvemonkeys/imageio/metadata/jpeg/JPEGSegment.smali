.class public final Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final data:[B

.field private transient id:Ljava/lang/String;

.field private final length:I

.field final marker:I


# direct methods
.method public constructor <init>(I[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker:I

    iput-object p2, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    iput p3, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->length:I

    return-void
.end method

.method public static isAppSegmentMarker(I)Z
    .locals 1

    const v0, 0xffe0

    if-lt p0, v0, :cond_0

    const v0, 0xffef

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public data()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->offset()I

    move-result v2

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->length()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;

    iget v0, p1, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker:I

    iget v1, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->identifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker()I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xffff

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public identifier()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker:I

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->isAppSegmentMarker(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->b([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->id:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->id:Ljava/lang/String;

    return-object p0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->offset()I

    move-result p0

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public marker()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker:I

    return p0
.end method

.method public offset()I
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->identifier()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public segmentData()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public segmentLength()I
    .locals 0

    iget p0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->length:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->identifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->segmentLength()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "JPEGSegment[%04x/%s size: %d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget v0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->segmentLength()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "JPEGSegment[%04x size: %d]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
