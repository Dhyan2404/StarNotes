.class public Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;


# instance fields
.field protected fErrorHandler:Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method

.method public static createSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;
    .locals 8

    new-instance v7, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V

    return-object v7
.end method

.method public static createXMLParseException(Lorg/xml/sax/SAXParseException;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;
    .locals 5

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {p0}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v3

    new-instance v4, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper$1;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper$1;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;-><init>(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static createXNIException(Lorg/xml/sax/SAXException;)Lcom/sun/org/apache/xerces/internal/xni/XNIException;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object p0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    move-result-object p0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
