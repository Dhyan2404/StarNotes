.class public Lorg/apache/xerces/xinclude/XIncludeTextReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/Reader;

.field public final b:Lorg/apache/xerces/xinclude/XIncludeHandler;

.field public c:Lorg/apache/xerces/xni/parser/XMLInputSource;

.field public d:Lorg/apache/xerces/impl/XMLErrorReporter;

.field public e:Lorg/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lorg/apache/xerces/xinclude/XIncludeHandler;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iput-object p2, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->b:Lorg/apache/xerces/xinclude/XIncludeHandler;

    iput-object p1, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->c:Lorg/apache/xerces/xni/parser/XMLInputSource;

    new-instance p1, Lorg/apache/xerces/xni/XMLString;

    add-int/lit8 p3, p3, 0x1

    new-array p2, p3, [C

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Lorg/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object p1, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    new-instance v0, Lorg/apache/xerces/impl/io/ASCIIReader;

    iget-object v1, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method public final b(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/io/Latin1Reader;

    iget-object p0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iget-object p0, p0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length p0, p0

    invoke-direct {v0, p1, p0}, Lorg/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public final c(Ljava/io/InputStream;Z)Ljava/io/Reader;
    .locals 7

    new-instance v6, Lorg/apache/xerces/impl/io/UTF16Reader;

    iget-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v0, v0

    shl-int/lit8 v2, v0, 0x1

    iget-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v4

    iget-object p0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;IZLorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v6
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->a:Ljava/io/Reader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->a:Ljava/io/Reader;

    :cond_0
    return-void
.end method

.method public consumeBOM(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x3

    new-array v0, p0, [B

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->mark(I)V

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xff

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v4, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, p0, :cond_0

    aget-byte p0, v0, v4

    and-int/2addr p0, v5

    aget-byte v1, v0, v2

    and-int/2addr v1, v5

    aget-byte v0, v0, v3

    and-int/2addr v0, v5

    const/16 v2, 0xef

    if-ne p0, v2, :cond_0

    const/16 p0, 0xbb

    if-ne v1, p0, :cond_0

    const/16 p0, 0xbf

    if-eq v0, p0, :cond_3

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_1
    const-string p0, "UTF-16"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    if-ne p0, v3, :cond_0

    aget-byte p0, v0, v4

    and-int/2addr p0, v5

    aget-byte v0, v0, v2

    and-int/2addr v0, v5

    const/16 v1, 0xfe

    if-ne p0, v1, :cond_2

    if-ne v0, v5, :cond_2

    const-string p0, "UTF-16BE"

    return-object p0

    :cond_2
    if-ne p0, v5, :cond_0

    if-ne v0, v1, :cond_0

    const-string p0, "UTF-16LE"

    return-object p0

    :cond_3
    :goto_0
    return-object p2
.end method

.method public final d(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    new-instance v0, Lorg/apache/xerces/impl/io/UTF8Reader;

    iget-object v1, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object p0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method public getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEncodingName([B)Ljava/lang/String;
    .locals 6

    .line 2
    const/4 p0, 0x0

    aget-byte p0, p1, p0

    const/16 v0, 0xff

    and-int/2addr p0, v0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/2addr v1, v0

    const-string v2, "UTF-16BE"

    const/16 v3, 0xfe

    if-ne p0, v3, :cond_0

    if-ne v1, v0, :cond_0

    return-object v2

    :cond_0
    const-string v4, "UTF-16LE"

    if-ne p0, v0, :cond_1

    if-ne v1, v3, :cond_1

    return-object v4

    :cond_1
    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/2addr v3, v0

    const/16 v5, 0xef

    if-ne p0, v5, :cond_2

    const/16 v5, 0xbb

    if-ne v1, v5, :cond_2

    const/16 v5, 0xbf

    if-ne v3, v5, :cond_2

    const-string p0, "UTF-8"

    return-object p0

    :cond_2
    const/4 v5, 0x3

    aget-byte p1, p1, v5

    and-int/2addr p1, v0

    const-string v0, "ISO-10646-UCS-4"

    const/16 v5, 0x3c

    if-nez p0, :cond_3

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    if-ne p1, v5, :cond_3

    return-object v0

    :cond_3
    if-ne p0, v5, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    if-nez p0, :cond_5

    if-nez v1, :cond_5

    if-ne v3, v5, :cond_5

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    if-nez p0, :cond_6

    if-ne v1, v5, :cond_6

    if-nez v3, :cond_6

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    const/16 v0, 0x3f

    if-nez p0, :cond_7

    if-ne v1, v5, :cond_7

    if-nez v3, :cond_7

    if-ne p1, v0, :cond_7

    return-object v2

    :cond_7
    if-ne p0, v5, :cond_8

    if-nez v1, :cond_8

    if-ne v3, v0, :cond_8

    if-nez p1, :cond_8

    return-object v4

    :cond_8
    const/16 v0, 0x4c

    if-ne p0, v0, :cond_9

    const/16 p0, 0x6f

    if-ne v1, p0, :cond_9

    const/16 p0, 0xa7

    if-ne v3, p0, :cond_9

    const/16 p0, 0x94

    if-ne p1, p0, :cond_9

    const-string p0, "CP037"

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getReader(Lorg/apache/xerces/xni/parser/XMLInputSource;)Ljava/io/Reader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object p1

    instance-of v2, p1, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_11

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v5, v5

    invoke-direct {v2, p1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v5, v2, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_4

    instance-of v5, p1, Lorg/apache/xerces/util/HTTPInputSource;

    if-eqz v5, :cond_4

    move-object v5, v2

    check-cast v5, Ljava/net/HttpURLConnection;

    check-cast p1, Lorg/apache/xerces/util/HTTPInputSource;

    invoke-virtual {p1}, Lorg/apache/xerces/util/HTTPInputSource;->getHTTPRequestProperties()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p1}, Lorg/apache/xerces/util/HTTPInputSource;->getFollowHTTPRedirects()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v5, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    const/4 v5, -0x1

    if-eqz v2, :cond_5

    const/16 v6, 0x3b

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    goto :goto_2

    :cond_5
    move v6, v5

    :goto_2
    const/4 v7, 0x0

    if-eq v6, v5, :cond_9

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/2addr v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v6, "charset="

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x22

    if-ne v6, v8, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_7

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x27

    if-ne v6, v8, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_b

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    :goto_3
    move-object v2, v7

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_a
    const-string v2, ""

    :goto_4
    move-object v5, v2

    goto :goto_3

    :cond_b
    :goto_5
    const-string v6, "text/xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    const-string v7, "US-ASCII"

    goto :goto_7

    :cond_d
    const-string v6, "application/xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    if-eqz v2, :cond_f

    :goto_6
    move-object v7, v2

    goto :goto_7

    :cond_e
    const-string v2, "+xml"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    invoke-virtual {p0, p1}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    :cond_10
    :goto_7
    if-eqz v7, :cond_11

    move-object v0, v7

    :cond_11
    :goto_8
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->consumeBOM(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, p1}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_12
    const-string v1, "UTF-16BE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, p1, v4}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->c(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_13
    const-string v1, "UTF-16LE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0, p1, v3}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->c(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-static {v0}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    const-string v0, "ASCII"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->a(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_15
    const-string v0, "ISO8859_1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->b(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    :cond_16
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    :cond_17
    iget-object p1, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p1, v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "EncodingDeclInvalid"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p0, v2, v0}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isValid(I)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result p0

    return p0
.end method

.method public parse()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->c:Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->getReader(Lorg/apache/xerces/xni/parser/XMLInputSource;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->a:Ljava/io/Reader;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->c:Lorg/apache/xerces/xni/parser/XMLInputSource;

    iget-object v2, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    iget-object v2, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->b:Lorg/apache/xerces/xinclude/XIncludeHandler;

    iput-boolean v4, v2, Lorg/apache/xerces/xinclude/XIncludeHandler;->q:Z

    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    move v3, v5

    :goto_1
    if-lt v3, v0, :cond_2

    iget-object v2, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->b:Lorg/apache/xerces/xinclude/XIncludeHandler;

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    iget-object v3, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iput v5, v3, Lorg/apache/xerces/xni/XMLString;->offset:I

    iput v0, v3, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v2, v1, v4}, Lorg/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;Z)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/apache/xerces/xinclude/XIncludeHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->a:Ljava/io/Reader;

    iget-object v2, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v3, v2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v5, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lorg/apache/xerces/xni/XMLString;->ch:[C

    aget-char v6, v6, v3

    invoke-virtual {p0, v6}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->isValid(I)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x10

    const-string v10, "InvalidCharInContent"

    const-string v11, "http://www.w3.org/TR/1998/REC-xml-19980210"

    if-eqz v7, :cond_6

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_3

    iget-object v7, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lorg/apache/xerces/xni/XMLString;->ch:[C

    aget-char v7, v7, v3

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->a:Ljava/io/Reader;

    invoke-virtual {v7}, Ljava/io/Reader;->read()I

    move-result v7

    if-eq v7, v2, :cond_4

    iget-object v12, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iget-object v12, v12, Lorg/apache/xerces/xni/XMLString;->ch:[C

    add-int/lit8 v13, v0, 0x1

    int-to-char v14, v7

    aput-char v14, v12, v0

    move v0, v13

    :cond_4
    :goto_2
    invoke-static {v7}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v12

    if-eqz v12, :cond_5

    int-to-char v7, v7

    invoke-static {v6, v7}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->isValid(I)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v6, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v11, v10, v6, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v7, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v11, v10, v7, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v6, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v11, v10, v6, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    :goto_3
    add-int/2addr v3, v4

    goto/16 :goto_1
.end method

.method public setBufferSize(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->e:Lorg/apache/xerces/xni/XMLString;

    iget-object v0, p0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v0, v0

    add-int/lit8 p1, p1, 0x1

    if-eq v0, p1, :cond_0

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    :cond_0
    return-void
.end method

.method public setErrorReporter(Lorg/apache/xerces/impl/XMLErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->d:Lorg/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->c:Lorg/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method
