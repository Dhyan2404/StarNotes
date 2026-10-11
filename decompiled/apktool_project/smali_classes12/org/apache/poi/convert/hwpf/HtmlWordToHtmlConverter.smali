.class public Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;
.super Lorg/apache/poi/convert/AbstractConverter;
.source "SourceFile"


# instance fields
.field private data:[B

.field private document:Lorg/jsoup/nodes/Document;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/convert/AbstractConverter;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/convert/AbstractConverter;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->data:[B

    return-void
.end method

.method private convertByData()V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->detectCharset(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    :try_start_0
    const-string v2, ""

    invoke-static {v0, v1, v2}, Lorg/jsoup/Jsoup;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->document:Lorg/jsoup/nodes/Document;

    iget-object v1, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/convert/AbstractConverter;->documentName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->document:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    :goto_0
    return-void
.end method

.method private convertByPath()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/jsoup/Jsoup;->parse(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->document:Lorg/jsoup/nodes/Document;

    iget-object v1, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->documentMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/poi/convert/AbstractConverter;->documentName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->document:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    :goto_0
    return-void
.end method

.method private detectCharset(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lorg/mozilla/universalchardet/UniversalDetector;->detectCharset(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->data:[B

    return-void
.end method

.method public convert()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->data:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->convertByData()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->convertByPath()V

    :goto_0
    return-void
.end method

.method public getDocument()Lorg/jsoup/nodes/Document;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/hwpf/HtmlWordToHtmlConverter;->document:Lorg/jsoup/nodes/Document;

    return-object p0
.end method
