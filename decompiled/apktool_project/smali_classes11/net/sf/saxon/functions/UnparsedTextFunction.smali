.class public abstract Lnet/sf/saxon/functions/UnparsedTextFunction;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URISyntaxException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/net/URISyntaxException;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/URISyntaxException;->getInput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "FOUT1170"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(I)Z
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/net/URI;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/functions/EncodeForUri;->checkPercentEncoding(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "URI for unparsed-text() must not contain a fragment identifier"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FOUT1170"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p2

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/functions/UnparsedTextFunction;->a(Ljava/lang/String;Ljava/lang/String;Ljava/net/URISyntaxException;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getErrorCode(Ljava/io/IOException;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Ljava/nio/charset/MalformedInputException;

    const-string v1, "FOUT1200"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Ljava/nio/charset/UnmappableCharacterException;

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    instance-of p0, p0, Ljava/nio/charset/CharacterCodingException;

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    const-string p0, "FOUT1170"

    return-object p0
.end method

.method public static handleIOError(Ljava/net/URI;Ljava/io/IOException;)Lnet/sf/saxon/trans/XPathException;
    .locals 3

    const-string v0, "Failed to read input file"

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lnet/sf/saxon/functions/UnparsedTextFunction;->getErrorCode(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static readFile(Lnet/sf/saxon/z/IntPredicateProxy;Ljava/io/Reader;)Lnet/sf/saxon/str/UnicodeString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 18
    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    .line 19
    new-instance v1, Lnet/sf/saxon/functions/UnparsedTextFunction$a;

    invoke-direct {v1, v0}, Lnet/sf/saxon/functions/UnparsedTextFunction$a;-><init>(Lnet/sf/saxon/str/UnicodeBuilder;)V

    invoke-static {p0, p1, v1}, Lnet/sf/saxon/functions/UnparsedTextFunction;->readFile(Lnet/sf/saxon/z/IntPredicateProxy;Ljava/io/Reader;Lnet/sf/saxon/str/UniStringConsumer;)V

    .line 20
    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static readFile(Ljava/net/URI;Ljava/lang/String;Lnet/sf/saxon/str/UniStringConsumer;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p3

    invoke-virtual {p3}, Lnet/sf/saxon/Controller;->getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    move-result-object p3

    invoke-interface {p3, p0, p1, v0}, Lnet/sf/saxon/lib/UnparsedTextURIResolver;->resolve(Ljava/net/URI;Ljava/lang/String;Lnet/sf/saxon/Configuration;)Ljava/io/Reader;

    move-result-object p3
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p3, :cond_1

    .line 4
    new-instance p3, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {p3}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    .line 5
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const-string v2, "https://www.iana.org/assignments/media-types/text/plain"

    .line 6
    iput-object v2, p3, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/sf/saxon/lib/ResourceResolver;

    .line 7
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lnet/sf/saxon/lib/DirectResourceResolver;

    invoke-direct {v3, v0}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p3, v2}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object p3

    .line 8
    instance-of v2, p3, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v2, :cond_0

    .line 9
    check-cast p3, Ljavax/xml/transform/stream/StreamSource;

    invoke-static {p3, p1, v0, v4}, Lnet/sf/saxon/lib/StandardUnparsedTextResolver;->getReaderFromStreamSource(Ljavax/xml/transform/stream/StreamSource;Ljava/lang/String;Lnet/sf/saxon/Configuration;Z)Ljava/io/Reader;

    move-result-object p3

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "unparsed-text(): resolver returned non-StreamSource"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v1, p3, p2}, Lnet/sf/saxon/functions/UnparsedTextFunction;->readFile(Lnet/sf/saxon/z/IntPredicateProxy;Ljava/io/Reader;Lnet/sf/saxon/str/UniStringConsumer;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p0, p1}, Lnet/sf/saxon/functions/UnparsedTextFunction;->handleIOError(Ljava/net/URI;Ljava/io/IOException;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 13
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown encoding "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "FOUT1190"

    .line 14
    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 15
    throw p2

    :catch_2
    move-exception p0

    const-string p1, "FOUT1170"

    .line 16
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    .line 17
    throw p0
.end method

.method public static readFile(Lnet/sf/saxon/z/IntPredicateProxy;Ljava/io/Reader;Lnet/sf/saxon/str/UniStringConsumer;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x800

    new-array v3, v2, [C

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v5

    .line 21
    :goto_0
    :try_start_0
    array-length v10, v3

    invoke-virtual {v0, v3, v5, v10}, Ljava/io/Reader;->read([CII)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    invoke-static {v10}, Lnet/sf/saxon/functions/UnparsedTextFunction;->b(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/io/Reader;->close()V

    return-void

    :cond_0
    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_5

    add-int/lit8 v12, v11, 0x1

    .line 24
    aget-char v11, v3, v11

    const/16 v13, 0xa

    if-ne v11, v13, :cond_1

    add-int/lit8 v7, v7, 0x1

    move v8, v5

    :cond_1
    add-int/2addr v8, v4

    or-int/2addr v9, v11

    .line 25
    invoke-static {v11}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->isHighSurrogate(I)Z

    move-result v13

    if-eqz v13, :cond_3

    if-ne v12, v10, :cond_2

    new-array v13, v2, [C

    .line 26
    invoke-virtual {v0, v13, v5, v2}, Ljava/io/Reader;->read([CII)I

    move-result v14

    add-int v15, v10, v14

    .line 27
    new-array v2, v15, [C

    .line 28
    invoke-static {v3, v5, v2, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    invoke-static {v13, v5, v2, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    move v10, v15

    :cond_2
    add-int/lit8 v2, v12, 0x1

    .line 30
    aget-char v12, v3, v12

    int-to-char v11, v11

    .line 31
    invoke-static {v11, v12}, Lnet/sf/saxon/serialize/charcode/UTF16CharacterSet;->combinePair(CC)I

    move-result v11

    or-int/2addr v9, v11

    goto :goto_2

    :cond_3
    move v2, v12

    :goto_2
    move-object/from16 v12, p0

    .line 32
    invoke-interface {v12, v11}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v13

    if-eqz v13, :cond_4

    move v11, v2

    const/16 v2, 0x800

    goto :goto_1

    .line 33
    :cond_4
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The text file contains a character that is illegal in XML (line="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value=hex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v1, "FOUT1190"

    .line 35
    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 36
    throw v0

    :cond_5
    move-object/from16 v12, p0

    if-eqz v6, :cond_7

    .line 37
    aget-char v2, v3, v5

    const v6, 0xfeff

    if-ne v2, v6, :cond_6

    add-int/lit8 v10, v10, -0x1

    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v5

    :goto_3
    move v6, v5

    goto :goto_4

    :cond_7
    move v2, v5

    :goto_4
    const/16 v11, 0xff

    if-gt v9, v11, :cond_8

    .line 38
    new-instance v11, Lnet/sf/saxon/str/Twine8;

    invoke-direct {v11, v3, v2, v10}, Lnet/sf/saxon/str/Twine8;-><init>([CII)V

    invoke-interface {v1, v11}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    goto :goto_5

    :cond_8
    const v11, 0xffff

    if-gt v9, v11, :cond_9

    .line 39
    new-instance v11, Lnet/sf/saxon/str/Twine16;

    invoke-direct {v11, v3, v2, v10}, Lnet/sf/saxon/str/Twine16;-><init>([CII)V

    invoke-interface {v1, v11}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    goto :goto_5

    .line 40
    :cond_9
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3, v2, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v11}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/sf/saxon/str/UniStringConsumer;->accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;

    :goto_5
    const/16 v2, 0x800

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I

    move-result p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/lib/Feature;->STABLE_UNPARSED_TEXT:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const p0, -0x800001

    and-int/2addr p0, p1

    return p0
.end method
