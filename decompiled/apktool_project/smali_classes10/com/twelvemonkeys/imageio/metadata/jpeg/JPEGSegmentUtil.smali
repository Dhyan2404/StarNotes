.class public final Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$AllAppSegmentsMap;,
        Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$AllSegmentsMap;,
        Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$AllIdsList;
    }
.end annotation


# static fields
.field public static final ALL_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_SEGMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final APP_SEGMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$AllIdsList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$AllIdsList;-><init>(Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$a;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->ALL_IDS:Ljava/util/List;

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$AllSegmentsMap;

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$AllSegmentsMap;-><init>(Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$a;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->ALL_SEGMENTS:Ljava/util/Map;

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$AllAppSegmentsMap;

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$AllAppSegmentsMap;-><init>(Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil$a;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->APP_SEGMENTS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "ascii"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static b([BI)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    add-int v1, p1, v0

    aget-byte v2, p0, v1

    if-eqz v2, :cond_1

    const/16 v2, 0xff

    if-le v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p0, p1, v1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->a([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    iget v0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->identifier()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;)Z
    .locals 1

    iget p0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker:I

    const v0, 0xffda

    if-eq p0, v0, :cond_1

    const v0, 0xffd9

    if-eq p0, v0, :cond_1

    const v0, 0xffd8

    if-ne p0, v0, :cond_0

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

.method public static e(Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    iget v0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->identifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->c(Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Ljavax/imageio/stream/ImageInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result p0

    const v0, 0xffd8

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Not a JPEG stream"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljavax/imageio/stream/ImageInputStream;Ljava/util/Map;)Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/stream/ImageInputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v0

    :goto_0
    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v0

    const v2, 0xff00

    :goto_1
    or-int/2addr v0, v2

    const v3, 0xffff

    if-ne v0, v3, :cond_1

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v0

    goto :goto_1

    :cond_1
    shr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_5

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 p1, v1, -0x2

    new-array p1, p1, [B

    invoke-interface {p0, p1}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    goto :goto_3

    :cond_2
    invoke-static {v0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->isAppSegmentMarker(I)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x20

    invoke-direct {p1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_2
    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    add-int/lit8 v2, v1, -0x3

    array-length v3, p1

    sub-int/2addr v2, v3

    invoke-interface {p0, v2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_4
    add-int/lit8 p1, v1, -0x2

    invoke-interface {p0, p1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    const/4 p1, 0x0

    :goto_3
    new-instance p0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;

    invoke-direct {p0, v0, p1, v1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;-><init>(I[BI)V

    return-object p0

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Bad marker: %04x"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    aget-object v2, p0, v1

    array-length v3, p0

    const-string v4, "------"

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object v2

    sget-object v3, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->ALL_SEGMENTS:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->readSegments(Ljavax/imageio/stream/ImageInputStream;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "segment: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->identifier()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exif"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;

    iget-object v7, v3, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->offset()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-direct {v6, v7, v8, v3}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;-><init>([BII)V

    new-instance v3, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;

    invoke-direct {v3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;-><init>()V

    invoke-virtual {v3, v6}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v3

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXIF: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v6, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->identifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;

    invoke-direct {v6}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;-><init>()V

    new-instance v7, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;

    iget-object v8, v3, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->offset()I

    move-result v9

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->length()I

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;-><init>([BII)V

    invoke-virtual {v6, v7}, Lcom/twelvemonkeys/imageio/metadata/xmp/XMPReader;->read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v6

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XMP: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v3, v3, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    invoke-static {v3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader$HexDump;->dump([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v6, "Photoshop 3.0"

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->identifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;

    iget-object v7, v3, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->offset()I

    move-result v8

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->length()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;-><init>([BII)V

    new-instance v7, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader;

    invoke-direct {v7}, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader;-><init>()V

    invoke-virtual {v7, v6}, Lcom/twelvemonkeys/imageio/metadata/psd/PSDReader;->read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v6

    const/16 v7, 0x40f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v8, Ljava/awt/color/ICC_ColorSpace;

    invoke-interface {v7}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v7}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "colorSpace: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PSD: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v3, v3, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    invoke-static {v3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader$HexDump;->dump([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v6, "ICC_PROFILE"

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->identifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_1

    :cond_5
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v3, v3, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data:[B

    invoke-static {v3}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader$HexDump;->dump([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    array-length v2, p0

    if-le v2, v5, :cond_7

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static readSegments(Ljavax/imageio/stream/ImageInputStream;ILjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/stream/ImageInputStream;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->ALL_IDS:Ljava/util/List;

    :goto_0
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->readSegments(Ljavax/imageio/stream/ImageInputStream;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readSegments(Ljavax/imageio/stream/ImageInputStream;Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/stream/ImageInputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    .line 2
    invoke-static {p0, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/stream/ImageInputStream;

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->f(Ljavax/imageio/stream/ImageInputStream;)V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->g(Ljavax/imageio/stream/ImageInputStream;Ljava/util/Map;)Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;

    move-result-object v1

    .line 5
    invoke-static {v1, p1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->e(Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v0, v2, :cond_1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 8
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    invoke-static {v1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->d(Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :catch_0
    return-object v0
.end method
