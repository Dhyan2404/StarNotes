.class public final Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCReader;
.super Lcom/twelvemonkeys/imageio/metadata/MetadataReader;
.source "SourceFile"


# static fields
.field public static final b:I = -0x1

.field public static final c:I = 0x0

.field public static final d:I = 0x1b2547


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/metadata/MetadataReader;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCReader;->a:I

    return-void
.end method


# virtual methods
.method public final a(SLjava/lang/Object;Lcom/twelvemonkeys/imageio/metadata/Entry;)Lcom/sunia/HTREnginev2/zfi;
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_2

    if-nez p0, :cond_1

    check-cast p2, Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    check-cast p0, [Ljava/lang/String;

    array-length p3, p0

    add-int/lit8 p3, p3, 0x1

    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    aput-object p2, p0, p3

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    array-length p3, p0

    add-int/lit8 p3, p3, 0x1

    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    array-length p3, p0

    add-int/lit8 p3, p3, -0x1

    aput-object p2, p0, p3

    :goto_1
    new-instance p2, Lcom/sunia/HTREnginev2/zfi;

    invoke-direct {p2, p1, p0}, Lcom/sunia/HTREnginev2/zfi;-><init>(ILjava/lang/Object;)V

    return-object p2
.end method

.method public final b(Ljavax/imageio/stream/ImageInputStream;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x3

    if-ne p2, p0, :cond_0

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p0, p2

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result p1

    or-int/2addr p0, p1

    const p1, 0x1b2547

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final c(Ljavax/imageio/stream/ImageInputStream;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p2, [B

    invoke-interface {p1, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    :try_start_0
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget p0, p0, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCReader;->a:I

    const v1, 0x1b2547

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    const-string p1, "ISO8859_1"

    invoke-static {v0, p0, p2, p1}, Lcom/twelvemonkeys/lang/StringUtil;->decode([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p2, "Wrong encoding of IPTC data, explicitly set to UTF-8 in DataSet 1:90"

    invoke-direct {p0, p2, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final d(Ljavax/imageio/stream/ImageInputStream;SIZLcom/twelvemonkeys/imageio/metadata/Entry;)Lcom/sunia/HTREnginev2/zfi;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x15a

    const/4 v1, 0x0

    if-eq p2, v0, :cond_4

    const/16 v0, 0x200

    if-eq p2, v0, :cond_2

    const v2, 0xff00

    and-int/2addr v2, p2

    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCReader;->c(Ljavax/imageio/stream/ImageInputStream;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-array v1, p3, [B

    invoke-interface {p1, v1}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p0, p2, v1, p5}, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCReader;->a(SLjava/lang/Object;Lcom/twelvemonkeys/imageio/metadata/Entry;)Lcom/sunia/HTREnginev2/zfi;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/sunia/HTREnginev2/zfi;

    invoke-direct {p0, p2, v1}, Lcom/sunia/HTREnginev2/zfi;-><init>(ILjava/lang/Object;)V

    :goto_1
    return-object p0

    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCReader;->b(Ljavax/imageio/stream/ImageInputStream;I)I

    move-result p1

    iput p1, p0, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCReader;->a:I

    return-object v1
.end method

.method public read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_2

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readShort()S

    move-result v1

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v6

    invoke-static {v1}, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTC$Tags;->a(S)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twelvemonkeys/imageio/metadata/Entry;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object v8, v2

    move-object v3, p0

    move-object v4, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCReader;->d(Ljavax/imageio/stream/ImageInputStream;SIZLcom/twelvemonkeys/imageio/metadata/Entry;)Lcom/sunia/HTREnginev2/zfi;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/sunia/HTREnginev2/yfi;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/yfi;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method
