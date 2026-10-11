.class public final Lcom/twelvemonkeys/imageio/metadata/xmp/XMPScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPScanner;->a:[B

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPScanner;->b:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3ct
        0x3ft
        0x78t
        0x70t
        0x61t
        0x63t
        0x6bt
        0x65t
        0x74t
        0x20t
        0x62t
        0x65t
        0x67t
        0x69t
        0x6et
        0x3dt
    .end array-data

    :array_1
    .array-data 1
        0x3ct
        0x3ft
        0x78t
        0x70t
        0x61t
        0x63t
        0x6bt
        0x65t
        0x74t
        0x20t
        0x65t
        0x6et
        0x64t
        0x3dt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/imageio/stream/ImageInputStream;[B)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :goto_0
    move-wide v4, v0

    move v3, v2

    move v6, v3

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v7

    if-ltz v7, :cond_6

    aget-byte v8, p1, v3

    int-to-byte v9, v7

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-ne v8, v9, :cond_4

    cmp-long v7, v4, v0

    if-nez v7, :cond_1

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    sub-long/2addr v4, v7

    :cond_1
    if-eq v6, v11, :cond_2

    if-ne v6, v10, :cond_3

    :cond_2
    invoke-interface {p0, v6}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    array-length v7, p1

    if-ne v3, v7, :cond_0

    return-wide v4

    :cond_4
    if-ne v3, v11, :cond_5

    if-nez v7, :cond_5

    if-ge v6, v10, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_0

    goto :goto_0

    :cond_6
    return-wide v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPScanner;->scanForXMPPacket(Ljava/lang/Object;)Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    return-void
.end method

.method public static scanForXMPPacket(Ljava/lang/Object;)Ljava/io/Reader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/imageio/stream/ImageInputStream;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;

    if-nez v0, :cond_1

    new-instance v0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;-><init>(Ljavax/imageio/stream/ImageInputStream;)V

    move-object p0, v0

    :cond_1
    sget-object v0, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPScanner;->a:[B

    invoke-static {p0, v0}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPScanner;->a(Ljavax/imageio/stream/ImageInputStream;[B)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_b

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readByte()B

    move-result v0

    const/16 v2, 0x27

    if-eq v0, v2, :cond_2

    const/16 v2, 0x22

    if-ne v0, v2, :cond_b

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-interface {p0, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    const/16 v4, -0x11

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v3, v4, :cond_3

    aget-byte v4, v2, v7

    const/16 v8, -0x45

    if-ne v4, v8, :cond_3

    aget-byte v4, v2, v6

    const/16 v8, -0x41

    if-ne v4, v8, :cond_3

    aget-byte v4, v2, v5

    if-eq v4, v0, :cond_4

    :cond_3
    if-ne v3, v0, :cond_5

    :cond_4
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    const/4 v4, -0x2

    const/4 v8, -0x1

    if-ne v3, v4, :cond_6

    aget-byte v9, v2, v7

    if-ne v9, v8, :cond_6

    aget-byte v9, v2, v6

    if-nez v9, :cond_6

    aget-byte v9, v2, v5

    if-ne v9, v0, :cond_6

    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-nez v3, :cond_7

    aget-byte v9, v2, v7

    if-ne v9, v8, :cond_7

    aget-byte v9, v2, v6

    if-ne v9, v4, :cond_7

    aget-byte v9, v2, v5

    if-ne v9, v0, :cond_7

    invoke-interface {p0, v7}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    :cond_7
    if-nez v3, :cond_8

    aget-byte v0, v2, v7

    if-nez v0, :cond_8

    aget-byte v0, v2, v6

    if-ne v0, v4, :cond_8

    aget-byte v0, v2, v5

    if-ne v0, v8, :cond_8

    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    :cond_8
    if-nez v3, :cond_9

    aget-byte v0, v2, v7

    if-nez v0, :cond_9

    aget-byte v0, v2, v6

    if-nez v0, :cond_9

    aget-byte v0, v2, v5

    if-ne v0, v8, :cond_9

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_9

    invoke-interface {p0, v6}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    :cond_9
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    sget-object v1, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPScanner;->b:[B

    invoke-static {p0, v1}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPScanner;->a(Ljavax/imageio/stream/ImageInputStream;[B)J

    move-result-wide v1

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v3

    sub-long/2addr v1, v3

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {p0, v1, v2}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->createStreamAdapter(Ljavax/imageio/stream/ImageInputStream;J)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v3, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :goto_2
    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result p0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_a

    goto :goto_2

    :cond_a
    return-object v3

    :cond_b
    return-object v1
.end method
