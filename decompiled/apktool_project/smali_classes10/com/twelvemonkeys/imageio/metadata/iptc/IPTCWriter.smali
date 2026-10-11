.class public final Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCWriter;
.super Lcom/twelvemonkeys/imageio/metadata/MetadataWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/metadata/MetadataWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_0

    check-cast p2, Ljava/lang/String;

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p2, p0

    invoke-interface {p1, p2}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    instance-of p0, p2, [B

    if-eqz p0, :cond_1

    check-cast p2, [B

    array-length p0, p2

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    invoke-interface {p1, p2}, Ljavax/imageio/stream/ImageOutputStream;->write([B)V

    goto :goto_0

    :cond_1
    instance-of p0, p2, Ljava/lang/Integer;

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public write(Lcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/stream/ImageOutputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "directory"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "stream"

    invoke-static {p2, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twelvemonkeys/imageio/metadata/Entry;

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getIdentifier()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    int-to-short v3, v2

    invoke-static {v3}, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTC$Tags;->a(S)Z

    move-result v3

    const/16 v4, 0x1c

    if-eqz v3, :cond_1

    check-cast v0, [Ljava/lang/Object;

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    invoke-interface {p2, v4}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    invoke-interface {p2, v2}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    invoke-virtual {p0, p2, v5}, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCWriter;->a(Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p2, v4}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    invoke-interface {p2, v2}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    invoke-virtual {p0, p2, v0}, Lcom/twelvemonkeys/imageio/metadata/iptc/IPTCWriter;->a(Ljavax/imageio/stream/ImageOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return v1
.end method
