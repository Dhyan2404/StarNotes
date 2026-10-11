.class public Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;
.implements Ljavax/xml/transform/ErrorListener;


# instance fields
.field protected m_pw:Ljava/io/PrintWriter;

.field protected throwOnError:Z

.field protected throwOnFatalError:Z

.field protected throwOnWarning:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnWarning:Z

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnError:Z

    .line 12
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnFatalError:Z

    .line 13
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v1, v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnWarning:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnError:Z

    .line 5
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnFatalError:Z

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ER_ERRORHANDLER_CREATED_WITH_NULL_PRINTWRITER"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSourceLine(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eq v2, v3, :cond_1

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/net/URL;

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x1

    :goto_2
    if-gt v2, p1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_1
    move-exception p1

    move-object v1, p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object v1, v0

    :goto_3
    move-object p0, p1

    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0
.end method

.method public static logExceptionLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    .locals 7

    if-nez p0, :cond_0

    new-instance p0, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    :cond_0
    const/4 v0, 0x0

    move-object v1, p1

    move-object v2, v0

    :cond_1
    instance-of v3, v1, Lorg/xml/sax/SAXParseException;

    if-eqz v3, :cond_2

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-object v3, v1

    check-cast v3, Lorg/xml/sax/SAXParseException;

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0

    :cond_2
    instance-of v3, v1, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v2, v3

    :cond_3
    :goto_0
    instance-of v3, v1, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_4

    check-cast v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    :cond_4
    instance-of v3, v1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    if-eqz v3, :cond_5

    check-cast v1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v1

    goto :goto_1

    :cond_5
    instance-of v3, v1, Lorg/xml/sax/SAXException;

    if-eqz v3, :cond_6

    check-cast v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    goto :goto_1

    :cond_6
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_1

    const-string v0, "null"

    const-string v3, "root-cause:"

    const-string v4, "exception:"

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_7

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    const-string v5, "SystemId-Unknown"

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":Line="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";Column="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->logSourceLine(Ljava/io/PrintWriter;Ljavax/xml/transform/SourceLocator;)V

    goto :goto_3

    :cond_a
    const-string v2, "SystemId-Unknown:locator-unavailable: "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public static logSourceLine(Ljava/io/PrintWriter;Ljavax/xml/transform/SourceLocator;)V
    .locals 5

    const-string v0, "line: "

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-nez p0, :cond_1

    new-instance p0, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    :cond_1
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p1, "line: (No systemId; cannot read file)"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_2
    :try_start_0
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v3

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->getSourceLine(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    if-ge v1, p1, :cond_3

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 p1, 0x5e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "line: logSourceLine unavailable due to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :goto_1
    return-void
.end method


# virtual methods
.method public error(Ljavax/xml/transform/TransformerException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->logExceptionLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 9
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->getThrowOnError()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 10
    :cond_0
    throw p1
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->logExceptionLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->getThrowOnError()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 5
    :cond_0
    throw p1
.end method

.method public fatalError(Ljavax/xml/transform/TransformerException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->logExceptionLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 9
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->getThrowOnError()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 10
    :cond_0
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->logExceptionLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fatalError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->getThrowOnFatalError()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 5
    :cond_0
    throw p1
.end method

.method public getThrowOnError()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnError:Z

    return p0
.end method

.method public getThrowOnFatalError()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnFatalError:Z

    return p0
.end method

.method public getThrowOnWarning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnWarning:Z

    return p0
.end method

.method public setThrowOnError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnError:Z

    return-void
.end method

.method public setThrowOnFatalError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnFatalError:Z

    return-void
.end method

.method public setThrowOnWarning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->throwOnWarning:Z

    return-void
.end method

.method public warning(Ljavax/xml/transform/TransformerException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->logExceptionLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 9
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->getThrowOnWarning()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 10
    :cond_0
    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->logExceptionLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/utils/ListingErrorHandler;->getThrowOnWarning()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 5
    :cond_0
    throw p1
.end method
