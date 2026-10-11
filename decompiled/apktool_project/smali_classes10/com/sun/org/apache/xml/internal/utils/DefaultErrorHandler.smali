.class public Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;
.implements Ljavax/xml/transform/ErrorListener;


# instance fields
.field m_pw:Ljava/io/PrintWriter;

.field m_throwExceptionOnError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    .line 6
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    .line 10
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v1, v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    .line 11
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    return-void
.end method

.method public static ensureLocationSet(Ljavax/xml/transform/TransformerException;)V
    .locals 4

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    :cond_0
    instance-of v3, v1, Lorg/xml/sax/SAXParseException;

    if-eqz v3, :cond_1

    new-instance v2, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-object v3, v1

    check-cast v3, Lorg/xml/sax/SAXParseException;

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0

    :cond_1
    instance-of v3, v1, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v2, v3

    :cond_2
    :goto_0
    instance-of v3, v1, Ljavax/xml/transform/TransformerException;

    if-eqz v3, :cond_3

    check-cast v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    :cond_3
    instance-of v3, v1, Lorg/xml/sax/SAXException;

    if-eqz v3, :cond_4

    check-cast v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    return-void
.end method

.method public static printLocation(Ljava/io/PrintStream;Ljavax/xml/transform/TransformerException;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static printLocation(Ljava/io/PrintStream;Lorg/xml/sax/SAXParseException;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x0

    move-object v1, v0

    .line 3
    :cond_0
    instance-of v2, p1, Lorg/xml/sax/SAXParseException;

    if-eqz v2, :cond_1

    .line 4
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    move-object v2, p1

    check-cast v2, Lorg/xml/sax/SAXParseException;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;-><init>(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v2, p1, Ljavax/xml/transform/TransformerException;

    if-eqz v2, :cond_2

    .line 6
    move-object v2, p1

    check-cast v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v1, v2

    .line 7
    :cond_2
    :goto_0
    instance-of v2, p1, Ljavax/xml/transform/TransformerException;

    if-eqz v2, :cond_3

    .line 8
    check-cast p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_3
    instance-of v2, p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    if-eqz v2, :cond_4

    .line 10
    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_4
    instance-of v2, p1, Lorg/xml/sax/SAXException;

    if-eqz v2, :cond_5

    .line 12
    check-cast p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_0

    if-eqz v1, :cond_8

    .line 13
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    const-string p1, "ER_SYSTEMID_UNKNOWN"

    invoke-static {p1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "line"

    invoke-static {v3, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "column"

    invoke-static {v3, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 15
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ER_LOCATION_UNKNOWN"

    invoke-static {v1, v0}, Lcom/sun/org/apache/xml/internal/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public error(Ljavax/xml/transform/TransformerException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw p1
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    throw p1
.end method

.method public fatalError(Ljavax/xml/transform/TransformerException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_throwExceptionOnError:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    throw p1
.end method

.method public warning(Ljavax/xml/transform/TransformerException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->printLocation(Ljava/io/PrintWriter;Ljava/lang/Throwable;)V

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;->m_pw:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parser warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
