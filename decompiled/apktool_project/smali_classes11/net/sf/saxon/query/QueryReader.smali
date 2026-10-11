.class public Lnet/sf/saxon/query/QueryReader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(B)C
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    return p0
.end method

.method public static b([BII)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static c([BI)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "UTF-16LE"

    const-string v1, "UTF-16"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-lt p1, v4, :cond_1

    aget-byte v5, p0, v2

    invoke-static {v5}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v5

    const/16 v6, 0xff

    const/16 v7, 0xfe

    if-ne v5, v7, :cond_0

    aget-byte v5, p0, v3

    invoke-static {v5}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v5

    if-ne v5, v6, :cond_0

    return-object v1

    :cond_0
    aget-byte v5, p0, v2

    invoke-static {v5}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v5

    if-ne v5, v6, :cond_1

    aget-byte v5, p0, v3

    invoke-static {v5}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v5

    if-ne v5, v7, :cond_1

    return-object v0

    :cond_1
    const/4 v5, 0x3

    const-string v6, "UTF-8"

    if-lt p1, v5, :cond_2

    aget-byte v7, p0, v2

    invoke-static {v7}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v7

    const/16 v8, 0xef

    if-ne v7, v8, :cond_2

    aget-byte v7, p0, v3

    invoke-static {v7}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v7

    const/16 v8, 0xbb

    if-ne v7, v8, :cond_2

    aget-byte v7, p0, v4

    invoke-static {v7}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v7

    const/16 v8, 0xbf

    if-ne v7, v8, :cond_2

    return-object v6

    :cond_2
    const/16 v7, 0x8

    if-lt p1, v7, :cond_3

    aget-byte v8, p0, v2

    if-nez v8, :cond_3

    aget-byte v8, p0, v4

    if-nez v8, :cond_3

    const/4 v8, 0x4

    aget-byte v8, p0, v8

    if-nez v8, :cond_3

    const/4 v8, 0x6

    aget-byte v8, p0, v8

    if-nez v8, :cond_3

    return-object v1

    :cond_3
    if-lt p1, v7, :cond_4

    aget-byte v1, p0, v3

    if-nez v1, :cond_4

    aget-byte v1, p0, v5

    if-nez v1, :cond_4

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    if-nez v1, :cond_4

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0, v2, p1}, Lnet/sf/saxon/query/QueryReader;->e([BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "xquery"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p0, v0, p1}, Lnet/sf/saxon/query/QueryReader;->e([BII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "encoding"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "version"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0, v0, p1}, Lnet/sf/saxon/query/QueryReader;->e([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0, v0, p1}, Lnet/sf/saxon/query/QueryReader;->e([BII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-static {p0, v0, p1}, Lnet/sf/saxon/query/QueryReader;->e([BII)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v4, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v4, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in query prolog"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-object v6
.end method

.method public static d(Ljava/io/Reader;Lnet/sf/saxon/z/IntPredicateProxy;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p0}, Lnet/sf/saxon/functions/UnparsedTextFunction;->readFile(Lnet/sf/saxon/z/IntPredicateProxy;Ljava/io/Reader;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Failed to read supplied query file"

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    const-string p1, "XPST0003"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0
.end method

.method public static e([BII)Ljava/lang/String;
    .locals 4

    move v0, p1

    :goto_0
    const-string v1, " \n\r\t"

    if-ge v0, p2, :cond_0

    aget-byte v2, p0, v0

    invoke-static {v2}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-byte v2, p0, v0

    invoke-static {v2}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_3

    aget-byte v1, p0, v0

    invoke-static {v1}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v1

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v2}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_3

    aget-byte v1, p0, v0

    invoke-static {v1}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v1

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v0, p2, :cond_3

    aget-byte v2, p0, v0

    invoke-static {v2}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    if-lt v0, p2, :cond_4

    sub-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/query/QueryReader;->b([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_4
    if-gt p1, v0, :cond_5

    aget-byte v1, p0, p1

    invoke-static {v1}, Lnet/sf/saxon/query/QueryReader;->a(B)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readEncoding(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lnet/sf/saxon/query/InputStreamMarker;

    invoke-direct {v0, p0}, Lnet/sf/saxon/query/InputStreamMarker;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lnet/sf/saxon/query/InputStreamMarker;->isMarkSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lnet/sf/saxon/query/InputStreamMarker;->mark(I)V

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/query/InputStreamMarker;->reset()V

    invoke-static {v2, p0}, Lnet/sf/saxon/query/QueryReader;->c([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Query source file is empty"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "InputStream must have markSupported() = true"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Failed to read query source file"

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readInputStream(Ljava/io/InputStream;Ljava/lang/String;Lnet/sf/saxon/z/IntPredicateProxy;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/query/InputStreamMarker;->ensureMarkSupported(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/query/QueryReader;->readEncoding(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p2}, Lnet/sf/saxon/query/QueryReader;->d(Ljava/io/Reader;Lnet/sf/saxon/z/IntPredicateProxy;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "XQST0087"

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p2
.end method

.method public static readSourceQuery(Ljavax/xml/transform/stream/StreamSource;Lnet/sf/saxon/z/IntPredicateProxy;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/query/InputStreamMarker;->ensureMarkSupported(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/query/QueryReader;->readEncoding(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lnet/sf/saxon/query/QueryReader;->readInputStream(Ljava/io/InputStream;Ljava/lang/String;Lnet/sf/saxon/z/IntPredicateProxy;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/sf/saxon/query/QueryReader;->d(Ljava/io/Reader;Lnet/sf/saxon/z/IntPredicateProxy;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/sf/saxon/resource/ResourceLoader;->urlStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/query/InputStreamMarker;->ensureMarkSupported(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/query/QueryReader;->readEncoding(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lnet/sf/saxon/query/QueryReader;->readInputStream(Ljava/io/InputStream;Ljava/lang/String;Lnet/sf/saxon/z/IntPredicateProxy;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I/O Error reading input stream from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Module URI Resolver must supply either an InputStream or a Reader"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
