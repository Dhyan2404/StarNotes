.class public Lnet/sf/saxon/resource/BinaryResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/Resource;


# static fields
.field public static final FACTORY:Lnet/sf/saxon/lib/ResourceFactory;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:[B

.field public d:Ljava/net/URLConnection;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/uq;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/uq;-><init>()V

    sput-object v0, Lnet/sf/saxon/resource/BinaryResource;->FACTORY:Lnet/sf/saxon/lib/ResourceFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lnet/sf/saxon/resource/BinaryResource;->d:Ljava/net/URLConnection;

    .line 8
    iput-object p2, p0, Lnet/sf/saxon/resource/BinaryResource;->b:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lnet/sf/saxon/resource/BinaryResource;->a:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lnet/sf/saxon/resource/BinaryResource;->c:[B

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/resource/BinaryResource;->d:Ljava/net/URLConnection;

    .line 3
    iget-object v0, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/resource/BinaryResource;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/resource/BinaryResource;->a:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    iput-object p1, p0, Lnet/sf/saxon/resource/BinaryResource;->c:[B

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/resource/BinaryResource;->b(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/resource/BinaryResource;

    invoke-direct {p0, p1}, Lnet/sf/saxon/resource/BinaryResource;-><init>(Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)V

    return-object p0
.end method

.method public static decode([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p3, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 4
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 5
    new-array p1, p2, [C

    .line 6
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p2

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p3, p0, p2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Malformed input found when decoding binary resource"

    .line 10
    invoke-static {p3}, Lnet/sf/saxon/resource/BinaryResource;->error(Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Unmappable input found when decoding binary resource"

    .line 12
    invoke-static {p0}, Lnet/sf/saxon/resource/BinaryResource;->error(Ljava/lang/String;)V

    :cond_1
    const-string p0, "Other error when decoding binary resource"

    .line 13
    invoke-static {p0}, Lnet/sf/saxon/resource/BinaryResource;->error(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p0

    new-array p0, p0, [C

    .line 15
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 17
    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported encoding "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decode([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lnet/sf/saxon/resource/BinaryResource;->decode([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p0

    :try_start_1
    invoke-virtual {p1, p0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_1
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/charset/UnmappableCharacterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Character code problem in encoding:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/resource/BinaryResource;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unmappable input in encoding:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/resource/BinaryResource;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Malformed input in encoding:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/resource/BinaryResource;->error(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :catch_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readBinaryFromStream(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final c(Ljava/net/URLConnection;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/resource/BinaryResource;->d:Ljava/net/URLConnection;

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/resource/BinaryResource;->d:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/resource/BinaryResource;->d:Ljava/net/URLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lnet/sf/saxon/resource/BinaryResource;->readBinaryFromStream(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object p0

    :cond_0
    long-to-int p0, v0

    new-array p1, p0, [B

    const/4 v3, 0x0

    :goto_0
    int-to-long v4, v3

    cmp-long v4, v4, v0

    if-gez v4, :cond_2

    sub-int v5, p0, v3

    invoke-virtual {v2, p1, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v3, v5

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-nez v4, :cond_3

    return-object p1

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only read "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes; Expected "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot handle binary resources longer than 2G octets"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/BinaryResource;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/BinaryResource;->c:[B

    return-object p0
.end method

.method public bridge synthetic getItem()Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/resource/BinaryResource;->getItem()Lnet/sf/saxon/value/Base64BinaryValue;

    move-result-object p0

    return-object p0
.end method

.method public getItem()Lnet/sf/saxon/value/Base64BinaryValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/resource/BinaryResource;->c:[B

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lnet/sf/saxon/value/Base64BinaryValue;

    iget-object p0, p0, Lnet/sf/saxon/resource/BinaryResource;->c:[B

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/Base64BinaryValue;-><init>([B)V

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/resource/BinaryResource;->d:Ljava/net/URLConnection;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lnet/sf/saxon/resource/BinaryResource;->c(Ljava/net/URLConnection;)[B

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/BinaryResource;->c:[B

    .line 6
    new-instance v0, Lnet/sf/saxon/value/Base64BinaryValue;

    iget-object p0, p0, Lnet/sf/saxon/resource/BinaryResource;->c:[B

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/Base64BinaryValue;-><init>([B)V

    return-object v0

    .line 7
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lnet/sf/saxon/resource/BinaryResource;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/resource/ResourceLoader;->urlConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/BinaryResource;->d:Ljava/net/URLConnection;

    .line 8
    invoke-virtual {p0, v0}, Lnet/sf/saxon/resource/BinaryResource;->c(Ljava/net/URLConnection;)[B

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/resource/BinaryResource;->c:[B

    .line 9
    new-instance v0, Lnet/sf/saxon/value/Base64BinaryValue;

    iget-object p0, p0, Lnet/sf/saxon/resource/BinaryResource;->c:[B

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/Base64BinaryValue;-><init>([B)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getResourceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/BinaryResource;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/resource/BinaryResource;->c:[B

    return-void
.end method
