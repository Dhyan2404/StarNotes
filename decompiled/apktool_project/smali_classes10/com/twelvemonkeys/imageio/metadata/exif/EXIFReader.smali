.class public final Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;
.super Lcom/twelvemonkeys/imageio/metadata/MetadataReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader$HexDump;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "com.twelvemonkeys.imageio.metadata.exif.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->a:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x8769

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x8825

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0xa005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x14a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->b:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/metadata/MetadataReader;-><init>()V

    return-void
.end method

.method public static a(JJ)Lcom/twelvemonkeys/imageio/metadata/exif/Rational;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;->NaN:Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    return-object p0

    :cond_0
    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/metadata/exif/Rational;-><init>(JJ)V

    return-object v0
.end method

.method public static c(II)I
    .locals 2

    if-lez p0, :cond_0

    sget-object v0, Lcom/twelvemonkeys/imageio/metadata/exif/TIFF;->TYPE_LENGTHS:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget p0, v0, p0

    mul-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static f(Ljavax/imageio/stream/ImageInputStream;SI)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lcom/sunia/HTREnginev2/rtn;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sunia/HTREnginev2/rtn;-><init>(SIJ)V

    return-object p0

    :pswitch_1
    if-ne p2, v3, :cond_2

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readLong()J

    move-result-wide v0

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-wide p1, 0x7fffffffffffffffL

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Value > %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    new-array p1, p2, [J

    :goto_1
    if-ge v2, p2, :cond_3

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readLong()J

    move-result-wide v0

    aput-wide v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    :pswitch_2
    if-ne p2, v3, :cond_4

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_4
    new-array p1, p2, [D

    invoke-interface {p0, p1, v2, p2}, Ljavax/imageio/stream/ImageInputStream;->readFully([DII)V

    return-object p1

    :pswitch_3
    if-ne p2, v3, :cond_5

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_5
    new-array p1, p2, [F

    invoke-interface {p0, p1, v2, p2}, Ljavax/imageio/stream/ImageInputStream;->readFully([FII)V

    return-object p1

    :pswitch_4
    if-ne p2, v3, :cond_6

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result p1

    int-to-long p1, p1

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1, p2, v0, v1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->a(JJ)Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    move-result-object p0

    return-object p0

    :cond_6
    new-array p1, p2, [Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    :goto_2
    if-ge v2, p2, :cond_7

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v1, v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->a(JJ)Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    move-result-object v0

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object p1

    :pswitch_5
    if-ne p2, v3, :cond_8

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide p1

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->a(JJ)Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    move-result-object p0

    return-object p0

    :cond_8
    new-array p1, p2, [Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    :goto_3
    if-ge v2, p2, :cond_9

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v0

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->a(JJ)Lcom/twelvemonkeys/imageio/metadata/exif/Rational;

    move-result-object v0

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    return-object p1

    :pswitch_6
    if-ne p2, v3, :cond_a

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_a
    :pswitch_7
    if-ne p2, v3, :cond_b

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_b
    new-array v0, p2, [I

    invoke-interface {p0, v0, v2, p2}, Ljavax/imageio/stream/ImageInputStream;->readFully([III)V

    const/4 p0, 0x4

    if-eq p1, p0, :cond_d

    const/16 p0, 0xd

    if-ne p1, p0, :cond_c

    goto :goto_4

    :cond_c
    return-object v0

    :cond_d
    :goto_4
    new-array p0, p2, [J

    :goto_5
    if-ge v2, p2, :cond_e

    aget p1, v0, v2

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aput-wide v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    return-object p0

    :pswitch_8
    if-ne p2, v3, :cond_f

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_f
    :pswitch_9
    if-ne p2, v3, :cond_10

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readShort()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_10
    new-array v0, p2, [S

    invoke-interface {p0, v0, v2, p2}, Ljavax/imageio/stream/ImageInputStream;->readFully([SII)V

    const/4 p0, 0x3

    if-ne p1, p0, :cond_12

    new-array p0, p2, [I

    :goto_6
    if-ge v2, p2, :cond_11

    aget-short p1, v0, v2

    const v1, 0xffff

    and-int/2addr p1, v1

    aput p1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return-object p0

    :cond_12
    return-object v0

    :pswitch_a
    if-nez p2, :cond_13

    const-string p0, ""

    return-object p0

    :cond_13
    new-array p1, p2, [B

    invoke-interface {p0, p1}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    add-int/lit8 p0, p2, -0x1

    aget-byte v0, p1, p0

    if-nez v0, :cond_14

    move p2, p0

    :cond_14
    const-string p0, "UTF-8"

    invoke-static {p1, v2, p2, p0}, Lcom/twelvemonkeys/lang/StringUtil;->decode([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    if-ne p2, v3, :cond_15

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_15
    :pswitch_c
    if-ne p2, v3, :cond_16

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_16
    :pswitch_d
    new-array p1, p2, [B

    invoke-interface {p0, p1}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;

    invoke-direct {v0}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;-><init>()V

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object v1

    array-length v3, p0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-le v3, v6, :cond_2

    aget-object v3, p0, v6

    const-string v7, "0x"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, p0, v6

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x10

    invoke-static {v3, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v7, v3

    goto :goto_0

    :cond_0
    aget-object v3, p0, v6

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :goto_0
    cmp-long v3, v7, v4

    if-gez v3, :cond_1

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_1
    invoke-interface {v1, v3}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-interface {v1, v7, v8}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    goto :goto_2

    :cond_2
    move-wide v7, v4

    :goto_2
    :try_start_0
    array-length p0, p0

    if-le p0, v6, :cond_3

    invoke-virtual {v0, v1, v7, v8, v2}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->readDirectory(Ljavax/imageio/stream/ImageInputStream;JZ)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/metadata/Entry;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, [B

    if-eqz v3, :cond_4

    check-cast v0, [B

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    array-length v6, v0

    const/16 v7, 0x80

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v5, v0, v2, v6}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader$HexDump;->dump(J[BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_5
    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->close()V

    throw p0
.end method


# virtual methods
.method public final b(Lcom/twelvemonkeys/imageio/metadata/Entry;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Byte;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array p1, v1, [J

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v1, p0

    aput-wide v1, p1, v0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Ljava/lang/Short;

    if-eqz p1, :cond_1

    new-array p1, v1, [J

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    const v1, 0xffff

    and-int/2addr p0, v1

    int-to-long v1, p0

    aput-wide v1, p1, v0

    goto :goto_0

    :cond_1
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    new-array p1, v1, [J

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aput-wide v1, p1, v0

    goto :goto_0

    :cond_2
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_3

    new-array p1, v1, [J

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, p1, v0

    goto :goto_0

    :cond_3
    instance-of p1, p0, [J

    if-eqz p1, :cond_4

    move-object p1, p0

    check-cast p1, [J

    :goto_0
    return-object p1

    :cond_4
    new-instance p1, Ljavax/imageio/IIOException;

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    aput-object p0, v1, v0

    const-string p0, "Unknown pointer type: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ljavax/imageio/stream/ImageInputStream;)Lcom/sunia/HTREnginev2/fkf;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v0

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readShort()S

    move-result v7

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v6

    if-ltz v6, :cond_7

    const/4 v1, 0x4

    if-lez v7, :cond_2

    const/16 v2, 0xd

    if-le v7, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v7, v6}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->c(II)I

    move-result v2

    if-lez v2, :cond_1

    if-gt v2, v1, :cond_1

    invoke-virtual {p0, p1, v7, v6}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->h(Ljavax/imageio/stream/ImageInputStream;SI)Ljava/lang/Object;

    move-result-object p0

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->g(Ljavax/imageio/stream/ImageInputStream;JSI)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    new-instance p1, Lcom/sunia/HTREnginev2/fkf;

    invoke-direct {p1, v0, p0, v7}, Lcom/sunia/HTREnginev2/fkf;-><init>(ILjava/lang/Object;S)V

    return-object p1

    :cond_2
    :goto_1
    invoke-interface {p1, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    sub-long/2addr v1, v3

    sget-boolean p0, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->a:Z

    if-eqz p0, :cond_6

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Bad EXIF data @%08x\n"

    invoke-virtual {v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tagId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (INVALID)"

    const-string v8, ""

    if-gtz v0, :cond_3

    move-object v0, v5

    goto :goto_2

    :cond_3
    move-object v0, v8

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    invoke-interface {p1, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    const/16 v0, 0x18

    :try_start_0
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v3, 0x78

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Ljavax/imageio/stream/ImageInputStream;->read([B)I

    move-result v3

    if-eqz p0, :cond_5

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader$HexDump;->dump(J[BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge v3, v6, :cond_4

    const-string v8, "[...]"

    :cond_4
    invoke-virtual {p0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    throw p0

    :cond_6
    :goto_3
    const/4 p0, 0x0

    return-object p0

    :cond_7
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v1, v0, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Illegal count %d for tag %s type %s @%08x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljavax/imageio/stream/ImageInputStream;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/stream/ImageInputStream;",
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/imageio/metadata/Entry;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/fkf;

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/AbstractEntry;->getIdentifier()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_0
    sget-object v5, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->b:Ljava/util/Collection;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->b(Lcom/twelvemonkeys/imageio/metadata/Entry;)[J

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v5

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_2

    aget-wide v9, v5, v8

    invoke-virtual {p0, p1, v9, v10, v1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->readDirectory(Ljavax/imageio/stream/ImageInputStream;JZ)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v9

    check-cast v9, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    move v10, v1

    :goto_2
    invoke-interface {v9}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->directoryCount()I

    move-result v11

    if-ge v10, v11, :cond_1

    invoke-interface {v9, v10}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->getDirectory(I)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v11

    check-cast v11, Lcom/sunia/HTREnginev2/bci;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    new-instance v5, Lcom/sunia/HTREnginev2/fkf;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/fkf;->d()S

    move-result v3

    invoke-direct {v5, v4, v6, v3}, Lcom/sunia/HTREnginev2/fkf;-><init>(ILjava/lang/Object;S)V

    invoke-interface {p2, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    new-instance v5, Lcom/sunia/HTREnginev2/fkf;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/sunia/HTREnginev2/bci;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/fkf;->d()S

    move-result v3

    invoke-direct {v5, v4, v6, v3}, Lcom/sunia/HTREnginev2/fkf;-><init>(ILjava/lang/Object;S)V

    invoke-interface {p2, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/imageio/IIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    sget-boolean v5, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->a:Z

    if-eqz v5, :cond_4

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing sub-IFD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method public final g(Ljavax/imageio/stream/ImageInputStream;JSI)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    :try_start_0
    invoke-interface {p1, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    invoke-static {p1, p4, p5}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->f(Ljavax/imageio/stream/ImageInputStream;SI)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    throw p0
.end method

.method public final h(Ljavax/imageio/stream/ImageInputStream;SI)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->f(Ljavax/imageio/stream/ImageInputStream;SI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [B

    invoke-interface {p1, v1}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0x49

    if-ne v3, v5, :cond_0

    aget-byte v6, v1, v4

    if-ne v6, v5, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, v0}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x4d

    if-ne v3, v5, :cond_2

    aget-byte v3, v1, v4

    if-ne v3, v5, :cond_2

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, v0}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    :goto_0
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, v4}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->readDirectory(Ljavax/imageio/stream/ImageInputStream;JZ)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Wrong TIFF magic in EXIF data: %04x, expected: %04x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "ASCII"

    invoke-static {v1, v2, v0, p1}, Lcom/twelvemonkeys/lang/StringUtil;->decode([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Invalid TIFF byte order mark \'%s\', expected: \'II\' or \'MM\'"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readDirectory(Ljavax/imageio/stream/ImageInputStream;JZ)Lcom/twelvemonkeys/imageio/metadata/Directory;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result p3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p3, p2

    :goto_0
    move v2, p2

    :goto_1
    if-ge v2, p3, :cond_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->d(Ljavax/imageio/stream/ImageInputStream;)Lcom/sunia/HTREnginev2/fkf;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/imageio/IIOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    :cond_1
    const/4 p3, 0x1

    if-eqz p4, :cond_2

    const-wide/16 v2, 0x0

    :try_start_2
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v4
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-wide v4, v2

    :goto_2
    cmp-long p4, v4, v2

    if-eqz p4, :cond_2

    invoke-virtual {p0, p1, v4, v5, p3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->readDirectory(Ljavax/imageio/stream/ImageInputStream;JZ)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p4

    check-cast p4, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    move v2, p2

    :goto_3
    invoke-interface {p4}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->directoryCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p4, v2}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->getDirectory(I)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/bci;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Integer;

    const v2, 0x8769

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p4, p2

    const v2, 0x8825

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p4, p3

    const p3, 0xa005

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x2

    aput-object p3, p4, v2

    const/16 p3, 0x14a

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    aput-object p3, p4, v2

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p1, v1, p3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->e(Ljavax/imageio/stream/ImageInputStream;Ljava/util/List;Ljava/util/List;)V

    new-instance p0, Lcom/sunia/HTREnginev2/bci;

    invoke-direct {p0, v1}, Lcom/sunia/HTREnginev2/bci;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance p0, Lcom/sunia/HTREnginev2/ekf;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/ekf;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method
