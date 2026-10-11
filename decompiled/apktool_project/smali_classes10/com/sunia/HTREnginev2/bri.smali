.class public Lcom/sunia/HTREnginev2/bri;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:I = 0x10

.field public static final f:Ljava/util/Map;
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


# instance fields
.field public a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

.field public b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field public c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sunia/HTREnginev2/bri;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/bri;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/stream/ImageInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sunia/HTREnginev2/bri;->f:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->readSegments(Ljavax/imageio/stream/ImageInputStream;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bri;->d:Ljava/util/List;

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0xffdb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bri;->d()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bri;->c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-object p0
.end method

.method public c()[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bri;->d()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bri;->b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    return-object p0
.end method

.method public final d()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bri;->b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bri;->c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    if-nez v0, :cond_c

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sunia/HTREnginev2/bri;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker()I

    move-result v4

    const v5, 0xffc4

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->data()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v8, v7, 0xf

    const/4 v9, 0x4

    shr-int/2addr v7, v9

    const/4 v10, 0x1

    if-gt v7, v10, :cond_a

    if-ge v8, v9, :cond_9

    if-nez v7, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v8, :cond_8

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v8, :cond_8

    :goto_2
    const/16 v9, 0x10

    new-array v10, v9, [S

    move v11, v5

    :goto_3
    if-ge v11, v9, :cond_4

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v12

    int-to-short v12, v12

    aput-short v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr v6, v9

    move v11, v5

    move v12, v11

    :goto_4
    if-ge v11, v9, :cond_5

    aget-short v13, v10, v11

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    new-array v9, v12, [S

    move v11, v5

    :goto_5
    if-ge v11, v12, :cond_6

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v13

    int-to-short v13, v13

    aput-short v13, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    new-instance v11, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-direct {v11, v10, v9}, Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;-><init>([S[S)V

    if-nez v7, :cond_7

    invoke-interface {v0, v8, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_7
    invoke-interface {v1, v8, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_6
    add-int/2addr v6, v12

    goto :goto_1

    :cond_8
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate DHT table index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad DHT table index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad DHT type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/bri;->b:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    iput-object v0, p0, Lcom/sunia/HTREnginev2/bri;->c:[Ljavax/imageio/plugins/jpeg/JPEGHuffmanTable;

    :cond_c
    return-void
.end method

.method public e()[Ljavax/imageio/plugins/jpeg/JPEGQTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bri;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bri;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGQuality;->getQTables(Ljava/util/List;)[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/bri;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/bri;->a:[Ljavax/imageio/plugins/jpeg/JPEGQTable;

    return-object p0
.end method
