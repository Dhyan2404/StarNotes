.class public final Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;
.super Lcom/twelvemonkeys/imageio/metadata/MetadataWriter;
.source "SourceFile"


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x4

.field public static final c:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/metadata/MetadataWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const-wide v0, 0xffffffffL

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    long-to-int p0, p1

    return p0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Integer overflow for TIFF stream"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lcom/twelvemonkeys/imageio/metadata/Directory;)J
    .locals 7

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-virtual {p0, v2}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->e(Lcom/twelvemonkeys/imageio/metadata/Entry;)S

    move-result v3

    invoke-virtual {p0, v2}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->d(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->c(II)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    int-to-long v3, v3

    add-long/2addr v0, v3

    :cond_1
    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/twelvemonkeys/imageio/metadata/Directory;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twelvemonkeys/imageio/metadata/Directory;

    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0xc

    add-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    invoke-virtual {p0, v2}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->b(Lcom/twelvemonkeys/imageio/metadata/Directory;)J

    move-result-wide v5

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown size for entry %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-wide v0
.end method

.method public final c(Lcom/twelvemonkeys/imageio/metadata/Directory;)Lcom/twelvemonkeys/imageio/metadata/Directory;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->f(Lcom/twelvemonkeys/imageio/metadata/Directory;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter$a;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter$a;-><init>(Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Lcom/sunia/HTREnginev2/bci;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/bci;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_1
    return-object p1
.end method

.method public computeIFDOffsetSize(Ljava/util/Collection;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)J"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/bci;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/bci;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->b(Lcom/twelvemonkeys/imageio/metadata/Directory;)J

    move-result-wide p0

    const-wide/16 v0, 0x4

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public computeIFDSize(Ljava/util/Collection;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;)J"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/bci;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/bci;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->b(Lcom/twelvemonkeys/imageio/metadata/Directory;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0xc

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public final d(Lcom/twelvemonkeys/imageio/metadata/Entry;)I
    .locals 1

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->valueCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final e(Lcom/twelvemonkeys/imageio/metadata/Entry;)S
    .locals 5

    instance-of p0, p1, Lcom/sunia/HTREnginev2/fkf;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sunia/HTREnginev2/fkf;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/fkf;->d()S

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getTypeName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    move v1, v0

    :goto_0
    sget-object v2, Lcom/twelvemonkeys/imageio/metadata/exif/TIFF;->TYPE_NAMES:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    int-to-short p0, v1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    :cond_3
    instance-of v2, p0, Ljava/lang/Byte;

    if-eqz v2, :cond_4

    return v0

    :cond_4
    instance-of v2, p0, Ljava/lang/Short;

    const/4 v3, 0x3

    if-eqz v2, :cond_6

    if-nez v1, :cond_5

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    const/16 p1, 0x7f

    if-ge p0, p1, :cond_5

    return v0

    :cond_5
    return v3

    :cond_6
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v2, 0x4

    if-eqz v0, :cond_8

    if-nez v1, :cond_7

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x7fff

    if-ge p0, p1, :cond_7

    return v3

    :cond_7
    return v2

    :cond_8
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v0, v3

    if-gez v0, :cond_9

    return v2

    :cond_9
    instance-of v0, p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    if-eqz v0, :cond_a

    const/4 p0, 0x5

    return p0

    :cond_a
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    const/4 p0, 0x2

    return p0

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Method getType not implemented for entry of type %s/value of type %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(Lcom/twelvemonkeys/imageio/metadata/Directory;)Z
    .locals 3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getIdentifier()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    return p1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final g(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/stream/ImageOutputStream;Z)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->c(Lcom/twelvemonkeys/imageio/metadata/Directory;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p1

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->b(Lcom/twelvemonkeys/imageio/metadata/Directory;)J

    move-result-wide v2

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0x4

    add-long/2addr v4, v2

    if-nez p3, :cond_0

    invoke-virtual {p0, v4, v5}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->a(J)I

    move-result p3

    invoke-interface {p2, p3}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    add-long/2addr v0, v2

    invoke-interface {p2, v4, v5}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->size()I

    move-result p3

    mul-int/lit8 p3, p3, 0xc

    add-int/lit8 p3, p3, 0x2

    int-to-long v2, p3

    add-long/2addr v0, v2

    :goto_0
    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->size()I

    move-result p3

    invoke-interface {p2, p3}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {p3}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getIdentifier()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v2}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    invoke-virtual {p0, p3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->e(Lcom/twelvemonkeys/imageio/metadata/Entry;)S

    move-result v2

    invoke-interface {p2, v2}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    invoke-virtual {p0, p3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->d(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result v2

    invoke-interface {p2, v2}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    invoke-interface {p3}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/twelvemonkeys/imageio/metadata/Directory;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->a(J)I

    move-result v2

    invoke-interface {p2, v2}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    invoke-interface {p2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    invoke-interface {p2, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    invoke-interface {p3}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/4 v6, 0x1

    invoke-virtual {p0, p3, p2, v6}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->g(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/stream/ImageOutputStream;Z)J

    invoke-virtual {p0, p3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->b(Lcom/twelvemonkeys/imageio/metadata/Directory;)J

    move-result-wide v6

    add-long/2addr v0, v6

    invoke-interface {p2, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p3, v0, v1, p2}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->h(Lcom/twelvemonkeys/imageio/metadata/Entry;JLjavax/imageio/stream/ImageOutputStream;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_1

    :cond_2
    return-wide v4
.end method

.method public final h(Lcom/twelvemonkeys/imageio/metadata/Entry;JLjavax/imageio/stream/ImageOutputStream;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->e(Lcom/twelvemonkeys/imageio/metadata/Entry;)S

    move-result v4

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->d(Lcom/twelvemonkeys/imageio/metadata/Entry;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->c(II)I

    move-result v6

    const/4 v0, 0x4

    if-gt v6, v0, :cond_1

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, v4, p4}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->j(Ljava/lang/Object;SLjavax/imageio/stream/ImageOutputStream;)V

    :goto_0
    if-ge v6, v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p4, p0}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, p0

    move-wide v1, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->i(JLjava/lang/Object;SLjavax/imageio/stream/ImageOutputStream;)V

    int-to-long p0, v6

    return-wide p0
.end method

.method public final i(JLjava/lang/Object;SLjavax/imageio/stream/ImageOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->a(J)I

    move-result v0

    invoke-interface {p5, v0}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    invoke-interface {p5}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    invoke-interface {p5, p1, p2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    invoke-virtual {p0, p3, p4, p5}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->j(Ljava/lang/Object;SLjavax/imageio/stream/ImageOutputStream;)V

    invoke-interface {p5, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    return-void
.end method

.method public final j(Ljava/lang/Object;SLjavax/imageio/stream/ImageOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    const-string v0, "Unsupported TIFF type: "

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    const-string p0, "Unsupported type for TIFF FLOAT: "

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    instance-of p2, p1, [D

    if-eqz p2, :cond_0

    check-cast p1, [D

    array-length p0, p1

    invoke-interface {p3, p1, v1, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeDoubles([DII)V

    goto/16 :goto_6

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_2
    instance-of p2, p1, [F

    if-eqz p2, :cond_1

    check-cast p1, [F

    array-length p0, p1

    invoke-interface {p3, p1, v1, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeFloats([FII)V

    goto/16 :goto_6

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_3
    check-cast p1, [Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    array-length p0, p1

    :goto_0
    if-ge v1, p0, :cond_a

    aget-object p2, p1, v1

    invoke-virtual {p2}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {p3, v0}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    invoke-virtual {p2}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator()J

    move-result-wide v2

    long-to-int p2, v2

    invoke-interface {p3, p2}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_4
    instance-of p0, p1, [I

    if-eqz p0, :cond_2

    check-cast p1, [I

    goto :goto_2

    :cond_2
    instance-of p0, p1, [J

    if-eqz p0, :cond_4

    check-cast p1, [J

    array-length p0, p1

    new-array p0, p0, [I

    move p2, v1

    :goto_1
    array-length v0, p1

    if-ge p2, v0, :cond_3

    aget-wide v2, p1, p2

    long-to-int v0, v2

    aput v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move-object p1, p0

    :goto_2
    array-length p0, p1

    invoke-interface {p3, p1, v1, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeInts([III)V

    goto/16 :goto_6

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported type for TIFF LONG: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    instance-of p0, p1, [S

    if-eqz p0, :cond_5

    check-cast p1, [S

    goto :goto_5

    :cond_5
    instance-of p0, p1, [I

    if-eqz p0, :cond_7

    check-cast p1, [I

    array-length p0, p1

    new-array p0, p0, [S

    move p2, v1

    :goto_3
    array-length v0, p1

    if-ge p2, v0, :cond_6

    aget v0, p1, p2

    int-to-short v0, v0

    aput-short v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    move-object p1, p0

    goto :goto_5

    :cond_7
    instance-of p0, p1, [J

    if-eqz p0, :cond_8

    check-cast p1, [J

    array-length p0, p1

    new-array p0, p0, [S

    move p2, v1

    :goto_4
    array-length v0, p1

    if-ge p2, v0, :cond_6

    aget-wide v2, p1, p2

    long-to-int v0, v2

    int-to-short v0, v0

    aput-short v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :goto_5
    array-length p0, p1

    invoke-interface {p3, p1, v1, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeShorts([SII)V

    goto/16 :goto_6

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported type for TIFF SHORT: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    check-cast p1, [B

    invoke-interface {p3, p1}, Ljavax/imageio/stream/ImageOutputStream;->write([B)V

    goto :goto_6

    :cond_9
    packed-switch p2, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-interface {p3, p0, p1}, Ljavax/imageio/stream/ImageOutputStream;->writeDouble(D)V

    goto :goto_6

    :pswitch_8
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-interface {p3, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeFloat(F)V

    goto :goto_6

    :pswitch_9
    check-cast p1, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-virtual {p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->numerator()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-interface {p3, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->denominator()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-interface {p3, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    goto :goto_6

    :pswitch_a
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-interface {p3, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    goto :goto_6

    :pswitch_b
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-interface {p3, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    goto :goto_6

    :pswitch_c
    check-cast p1, Ljava/lang/String;

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-interface {p3, p0}, Ljavax/imageio/stream/ImageOutputStream;->write([B)V

    invoke-interface {p3, v1}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    goto :goto_6

    :pswitch_d
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-interface {p3, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeByte(I)V

    :cond_a
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public write(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/stream/ImageOutputStream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p2}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->writeTIFFHeader(Ljavax/imageio/stream/ImageOutputStream;)V

    .line 5
    instance-of v0, p1, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    move v0, v1

    .line 7
    :goto_0
    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->directoryCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 8
    invoke-interface {p1, v0}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->getDirectory(I)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->g(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/stream/ImageOutputStream;Z)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->g(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/stream/ImageOutputStream;Z)J

    .line 10
    :cond_1
    invoke-interface {p2, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public write(Ljava/util/Collection;Ljavax/imageio/stream/ImageOutputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;",
            "Ljavax/imageio/stream/ImageOutputStream;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/bci;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/bci;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p2}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->write(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/stream/ImageOutputStream;)Z

    move-result p0

    return p0
.end method

.method public writeIFD(Ljava/util/Collection;Ljavax/imageio/stream/ImageOutputStream;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;",
            "Ljavax/imageio/stream/ImageOutputStream;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/bci;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/bci;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFWriter;->g(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/stream/ImageOutputStream;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public writeTIFFHeader(Ljavax/imageio/stream/ImageOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x4d4d

    goto :goto_0

    :cond_0
    const/16 p0, 0x4949

    :goto_0
    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    const/16 p0, 0x2a

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    return-void
.end method
