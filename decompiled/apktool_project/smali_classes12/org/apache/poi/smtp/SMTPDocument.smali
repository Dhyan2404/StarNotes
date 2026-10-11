.class public Lorg/apache/poi/smtp/SMTPDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final LOG:Lorg/apache/logging/log4j/Logger;

.field private message:Lorg/apache/poi/smtp/SMTPMessage;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/poi/smtp/SMTPDocument;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/smtp/SMTPDocument;->LOG:Lorg/apache/logging/log4j/Logger;

    new-instance v0, Lorg/apache/poi/smtp/SMTPMessage;

    invoke-direct {v0}, Lorg/apache/poi/smtp/SMTPMessage;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/smtp/SMTPDocument;->message:Lorg/apache/poi/smtp/SMTPMessage;

    invoke-direct {p0, p1}, Lorg/apache/poi/smtp/SMTPDocument;->load(Ljava/io/InputStream;)V

    return-void
.end method

.method private load(Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "--"

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    iget-object p1, p0, Lorg/apache/poi/smtp/SMTPDocument;->message:Lorg/apache/poi/smtp/SMTPMessage;

    invoke-virtual {p1}, Lorg/apache/poi/smtp/SMTPMessage;->getHeaders()Lorg/apache/poi/smtp/MIMEHeaders;

    move-result-object p1

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1, p1, v2}, Lorg/apache/poi/smtp/SMTPDocument;->readMessageHeaders(Ljava/io/BufferedReader;Lorg/apache/poi/smtp/MIMEHeaders;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/smtp/MIMEHeaders;->getBoundary()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    move v7, v6

    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/smtp/SMTPDocument;->setMessageBodyPartContent(Lorg/apache/poi/smtp/MessageBodyPart;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_3
    invoke-static {v8}, Lorg/apache/poi/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    if-eqz v6, :cond_2

    move v6, v4

    move v7, v10

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/smtp/SMTPDocument;->setMessageBodyPartContent(Lorg/apache/poi/smtp/MessageBodyPart;Ljava/lang/StringBuilder;)V

    new-instance v3, Lorg/apache/poi/smtp/MessageBodyPart;

    invoke-direct {v3}, Lorg/apache/poi/smtp/MessageBodyPart;-><init>()V

    invoke-virtual {v3}, Lorg/apache/poi/smtp/MessageBodyPart;->getHeaders()Lorg/apache/poi/smtp/MIMEHeaders;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/poi/smtp/SMTPDocument;->message:Lorg/apache/poi/smtp/SMTPMessage;

    invoke-virtual {v6, v3}, Lorg/apache/poi/smtp/SMTPMessage;->addPart(Lorg/apache/poi/smtp/MessageBodyPart;)V

    move v7, v4

    move v6, v10

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_8

    invoke-direct {p0, v5}, Lorg/apache/poi/smtp/SMTPDocument;->supportedContentType(Lorg/apache/poi/smtp/MIMEHeaders;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_6

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    move v6, v4

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_9

    invoke-direct {p0, v1, v5, v8}, Lorg/apache/poi/smtp/SMTPDocument;->readMessageHeaders(Ljava/io/BufferedReader;Lorg/apache/poi/smtp/MIMEHeaders;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v9, p0, Lorg/apache/poi/smtp/SMTPDocument;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v9}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v9

    const-string v10, "Skip comment: %s"

    invoke-interface {v9, v10, v8}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_a
    :goto_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-void

    :cond_b
    :try_start_1
    new-instance p0, Lorg/apache/poi/smtp/SMTPException;

    const-string p1, "No boundary"

    invoke-direct {p0, p1}, Lorg/apache/poi/smtp/SMTPException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
.end method

.method private readContentType(Ljava/io/BufferedReader;Lorg/apache/poi/smtp/MIMEHeaders;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ";"

    invoke-virtual {p3, v0, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/smtp/ContentType;->fromName(Ljava/lang/String;)Lorg/apache/poi/smtp/ContentType;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/smtp/MIMEHeaders;->setContentType(Lorg/apache/poi/smtp/ContentType;)V

    goto :goto_2

    :cond_0
    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/poi/smtp/ContentType;->fromName(Ljava/lang/String;)Lorg/apache/poi/smtp/ContentType;

    move-result-object p4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lorg/apache/poi/smtp/MIMEHeaders;->getSubHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/smtp/SMTPDocument;->readSubHeaders(Ljava/util/Map;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x3b

    if-ne p3, v0, :cond_3

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, p3}, Lorg/apache/poi/smtp/SMTPDocument;->readSubHeaders(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    move-object p0, p4

    :goto_2
    invoke-virtual {p2, p0}, Lorg/apache/poi/smtp/MIMEHeaders;->setContentType(Lorg/apache/poi/smtp/ContentType;)V

    return-void
.end method

.method private readMessageHeaders(Ljava/io/BufferedReader;Lorg/apache/poi/smtp/MIMEHeaders;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/smtp/SMTPDocument;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Skip comment: %s"

    invoke-interface {p0, p1, p3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v1, v5

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "Content-Disposition"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "Content-Location"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "Content-Base"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "MIME-Version"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "Content-Description"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v4

    goto :goto_1

    :sswitch_7
    const-string v3, "Content-ID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lorg/apache/poi/smtp/SMTPDocument;->LOG:Lorg/apache/logging/log4j/Logger;

    const-string p1, "Unknown headers {}"

    invoke-interface {p0, p1, p3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_0
    add-int/2addr v0, v4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/smtp/MIMEHeaders;->setContentDisposition(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    add-int/2addr v0, v4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/smtp/MIMEHeaders;->setContentLocation(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/smtp/SMTPDocument;->readContentType(Ljava/io/BufferedReader;Lorg/apache/poi/smtp/MIMEHeaders;Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_3
    add-int/2addr v0, v4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/smtp/MIMEHeaders;->setContentBase(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    add-int/2addr v0, v4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/smtp/ContentTransferEncoding;->fromEncoding(Ljava/lang/String;)Lorg/apache/poi/smtp/ContentTransferEncoding;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/smtp/MIMEHeaders;->setEncoding(Lorg/apache/poi/smtp/ContentTransferEncoding;)V

    goto :goto_2

    :pswitch_5
    add-int/2addr v0, v4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/smtp/MIMEHeaders;->setMimeVersion(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    add-int/2addr v0, v4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/smtp/MIMEHeaders;->setContentDescription(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    add-int/2addr v0, v4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/poi/smtp/MIMEHeaders;->setContentID(Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x796a24f1 -> :sswitch_7
        -0x26fbb398 -> :sswitch_6
        -0xf0ebfe1 -> :sswitch_5
        0x2c8adc81 -> :sswitch_4
        0x38889fe5 -> :sswitch_3
        0x3891284e -> :sswitch_2
        0x59cf8ec9 -> :sswitch_1
        0x62947823 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readSubHeader(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 p2, 0x0

    aget-object p2, v0, p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/poi/smtp/SMTPDocument;->trimSubHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/smtp/SMTPException;

    const-string p1, "Wrong sub headers format: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/smtp/SMTPException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readSubHeaders(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/smtp/SMTPDocument;->readSubHeader(Ljava/util/Map;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setMessageBodyPartContent(Lorg/apache/poi/smtp/MessageBodyPart;Ljava/lang/StringBuilder;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/smtp/MessageBodyPart;->setContent(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/smtp/MessageBodyPart;->setSize(I)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private supportedContentType(Lorg/apache/poi/smtp/MIMEHeaders;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/smtp/MIMEHeaders;->getContentType()Lorg/apache/poi/smtp/ContentType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/smtp/ContentType;->isText()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/smtp/MIMEHeaders;->getContentType()Lorg/apache/poi/smtp/ContentType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/smtp/ContentType;->isImage()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private trimSubHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    const/16 v3, 0x22

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    add-int/lit8 p1, p1, -0x1

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p1, v1, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getMessage()Lorg/apache/poi/smtp/SMTPMessage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/smtp/SMTPDocument;->message:Lorg/apache/poi/smtp/SMTPMessage;

    return-object p0
.end method
