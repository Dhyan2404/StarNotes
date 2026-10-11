.class public abstract Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerProxy;->getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    move-result-object p0

    instance-of v0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p0, v0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;->error(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    :goto_0
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerProxy;->getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    move-result-object p0

    instance-of v0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p0, v0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;->fatalError(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    :goto_0
    return-void
.end method

.method public abstract getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerProxy;->getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    move-result-object p0

    instance-of v0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p0, v0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;->warning(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    :goto_0
    return-void
.end method
