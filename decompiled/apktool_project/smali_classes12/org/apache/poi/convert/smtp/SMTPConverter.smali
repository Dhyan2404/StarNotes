.class public Lorg/apache/poi/convert/smtp/SMTPConverter;
.super Lorg/apache/poi/convert/AbstractConverter;
.source "SourceFile"


# instance fields
.field private codecMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/smtp/ContentTransferEncoding;",
            "Lorg/apache/poi/smtp/SMTPCodec;",
            ">;"
        }
    .end annotation
.end field

.field private smtpDocument:Lorg/apache/poi/smtp/SMTPDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/smtp/SMTPDocument;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/convert/AbstractConverter;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/smtp/SMTPConverter;->smtpDocument:Lorg/apache/poi/smtp/SMTPDocument;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/convert/smtp/SMTPConverter;->codecMap:Ljava/util/Map;

    return-void
.end method

.method private getImageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/util/StringUtils;->computeMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private getSMTPCodec(Lorg/apache/poi/smtp/ContentTransferEncoding;)Lorg/apache/poi/smtp/SMTPCodec;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/smtp/SMTPConverter;->codecMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/smtp/SMTPCodec;

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/poi/smtp/SMTPCodec;->create(Lorg/apache/poi/smtp/ContentTransferEncoding;)Lorg/apache/poi/smtp/SMTPCodec;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/poi/convert/smtp/SMTPConverter;->codecMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private parseTextBodyPart(Ljava/util/Map;Lorg/apache/poi/smtp/MessageBodyPart;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/poi/smtp/MessageBodyPart;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/poi/smtp/MessageBodyPart;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/apache/poi/smtp/MessageBodyPart;->getHeaders()Lorg/apache/poi/smtp/MIMEHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/smtp/MIMEHeaders;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/smtp/MessageBodyPart;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lorg/apache/poi/smtp/MIMEHeaders;->getEncoding()Lorg/apache/poi/smtp/ContentTransferEncoding;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/smtp/ContentTransferEncoding;->NONE:Lorg/apache/poi/smtp/ContentTransferEncoding;

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/poi/smtp/MIMEHeaders;->getEncoding()Lorg/apache/poi/smtp/ContentTransferEncoding;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/smtp/SMTPConverter;->getSMTPCodec(Lorg/apache/poi/smtp/ContentTransferEncoding;)Lorg/apache/poi/smtp/SMTPCodec;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/poi/smtp/SMTPCodec;->decode(Ljava/lang/String;)[B

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p2, v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/convert/smtp/SMTPConverter;->replaceImageUrl(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/io/ByteArrayInputStream;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, ""

    invoke-static {p2, v1, p1}, Lorg/jsoup/Jsoup;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lorg/apache/poi/convert/AbstractConverter;->documentList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/apache/poi/convert/AbstractConverter;->documentMap:Ljava/util/LinkedHashMap;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lorg/apache/poi/convert/AbstractConverter;->documentName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atError()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/logging/log4j/LogBuilder;->log()V

    :goto_1
    return-void

    :cond_3
    new-instance p0, Lorg/apache/poi/smtp/SMTPException;

    const-string p1, "Message body content is null"

    invoke-direct {p0, p1}, Lorg/apache/poi/smtp/SMTPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processImageBodyPart(Ljava/util/Map;Lorg/apache/poi/smtp/MessageBodyPart;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/poi/smtp/MessageBodyPart;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/poi/smtp/MessageBodyPart;->getHeaders()Lorg/apache/poi/smtp/MIMEHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/smtp/MIMEHeaders;->getEncoding()Lorg/apache/poi/smtp/ContentTransferEncoding;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/convert/smtp/SMTPConverter;->getSMTPCodec(Lorg/apache/poi/smtp/ContentTransferEncoding;)Lorg/apache/poi/smtp/SMTPCodec;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/smtp/MIMEHeaders;->getContentType()Lorg/apache/poi/smtp/ContentType;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/smtp/MIMEHeaders;->getContentLocation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/smtp/SMTPConverter;->getImageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/convert/smtp/SMTPPicture;

    invoke-virtual {p2}, Lorg/apache/poi/smtp/MessageBodyPart;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/apache/poi/smtp/SMTPCodec;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2}, Lorg/apache/poi/smtp/ContentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p2, v1, v3}, Lorg/apache/poi/convert/smtp/SMTPPicture;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/poi/convert/AbstractConverter;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    invoke-static {p2}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    invoke-virtual {p0, v4}, Lorg/apache/poi/picture/PicturesManager;->processPicture(Lorg/apache/poi/wp/usermodel/IPicture;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/smtp/SMTPException;

    invoke-direct {p1, p0}, Lorg/apache/poi/smtp/SMTPException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private processImageBodyParts(Ljava/util/Map;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/smtp/MessageBodyPart;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/convert/AbstractConverter;->picturesManager:Lorg/apache/poi/picture/PicturesManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/smtp/MessageBodyPart;

    invoke-virtual {v0}, Lorg/apache/poi/smtp/MessageBodyPart;->getHeaders()Lorg/apache/poi/smtp/MIMEHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/smtp/MIMEHeaders;->getContentType()Lorg/apache/poi/smtp/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/smtp/ContentType;->isImage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/convert/smtp/SMTPConverter;->processImageBodyPart(Ljava/util/Map;Lorg/apache/poi/smtp/MessageBodyPart;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processStylePart(Ljava/util/Map;Lorg/apache/poi/smtp/MessageBodyPart;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/poi/smtp/MessageBodyPart;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/poi/smtp/MessageBodyPart;->getHeaders()Lorg/apache/poi/smtp/MIMEHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/smtp/MIMEHeaders;->getContentLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/smtp/MessageBodyPart;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lorg/apache/poi/smtp/MIMEHeaders;->getEncoding()Lorg/apache/poi/smtp/ContentTransferEncoding;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/smtp/ContentTransferEncoding;->NONE:Lorg/apache/poi/smtp/ContentTransferEncoding;

    if-eq v2, v3, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/poi/smtp/MIMEHeaders;->getEncoding()Lorg/apache/poi/smtp/ContentTransferEncoding;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/convert/smtp/SMTPConverter;->getSMTPCodec(Lorg/apache/poi/smtp/ContentTransferEncoding;)Lorg/apache/poi/smtp/SMTPCodec;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/poi/smtp/SMTPCodec;->decode(Ljava/lang/String;)[B

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/smtp/SMTPException;

    invoke-direct {p1, p0}, Lorg/apache/poi/smtp/SMTPException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/convert/AbstractConverter;->addHtmlDocumentStyle(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/poi/convert/AbstractConverter;->styleList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/convert/WPStyle;

    invoke-virtual {p0}, Lorg/apache/poi/convert/WPStyle;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private processStyleParts(Ljava/util/Map;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/smtp/MessageBodyPart;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/smtp/MessageBodyPart;

    invoke-virtual {v0}, Lorg/apache/poi/smtp/MessageBodyPart;->getHeaders()Lorg/apache/poi/smtp/MIMEHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/smtp/MIMEHeaders;->getContentType()Lorg/apache/poi/smtp/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/smtp/ContentType;->isStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/convert/smtp/SMTPConverter;->processStylePart(Ljava/util/Map;Lorg/apache/poi/smtp/MessageBodyPart;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private replaceImageUrl(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p2
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/smtp/SMTPConverter;->smtpDocument:Lorg/apache/poi/smtp/SMTPDocument;

    invoke-static {v0}, Lorg/apache/poi/util/CloseUtils;->close(Ljava/io/Closeable;)V

    iget-object v0, p0, Lorg/apache/poi/convert/smtp/SMTPConverter;->codecMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/convert/smtp/SMTPConverter;->smtpDocument:Lorg/apache/poi/smtp/SMTPDocument;

    return-void
.end method

.method public convert()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/convert/smtp/SMTPConverter;->smtpDocument:Lorg/apache/poi/smtp/SMTPDocument;

    invoke-virtual {v0}, Lorg/apache/poi/smtp/SMTPDocument;->getMessage()Lorg/apache/poi/smtp/SMTPMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/smtp/SMTPMessage;->getHeaders()Lorg/apache/poi/smtp/MIMEHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/smtp/MIMEHeaders;->getSubType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/smtp/ContentType;->fromName(Ljava/lang/String;)Lorg/apache/poi/smtp/ContentType;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/smtp/ContentType;->TEXT_HTML:Lorg/apache/poi/smtp/ContentType;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v3}, Lorg/apache/poi/smtp/SMTPMessage;->getParts(Lorg/apache/poi/smtp/ContentType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/smtp/SMTPMessage;->getBodyParts()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/convert/smtp/SMTPConverter;->processImageBodyParts(Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/apache/poi/smtp/SMTPMessage;->getBodyParts()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/convert/smtp/SMTPConverter;->processStyleParts(Ljava/util/Map;Ljava/util/List;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/smtp/MessageBodyPart;

    invoke-direct {p0, v2, v3, v0}, Lorg/apache/poi/convert/smtp/SMTPConverter;->parseTextBodyPart(Ljava/util/Map;Lorg/apache/poi/smtp/MessageBodyPart;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/poi/smtp/SMTPException;

    const-string v0, "No text message body"

    invoke-direct {p0, v0}, Lorg/apache/poi/smtp/SMTPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/poi/smtp/SMTPException;

    invoke-virtual {v1}, Lorg/apache/poi/smtp/MIMEHeaders;->getContentType()Lorg/apache/poi/smtp/ContentType;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unsupported content type: %s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/smtp/SMTPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
