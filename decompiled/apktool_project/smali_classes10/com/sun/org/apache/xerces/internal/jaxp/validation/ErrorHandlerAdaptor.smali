.class public abstract Lcom/sun/org/apache/xerces/internal/jaxp/validation/ErrorHandlerAdaptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;


# instance fields
.field private hadError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ErrorHandlerAdaptor;->hadError:Z

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .locals 0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ErrorHandlerAdaptor;->hadError:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ErrorHandlerAdaptor;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p0

    invoke-static {p3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;-><init>(Lorg/xml/sax/SAXException;)V

    throw p1
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .locals 0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ErrorHandlerAdaptor;->hadError:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ErrorHandlerAdaptor;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p0

    invoke-static {p3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;-><init>(Lorg/xml/sax/SAXException;)V

    throw p1
.end method

.method public abstract getErrorHandler()Lorg/xml/sax/ErrorHandler;
.end method

.method public hadError()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ErrorHandlerAdaptor;->hadError:Z

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ErrorHandlerAdaptor;->hadError:Z

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ErrorHandlerAdaptor;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p0

    invoke-static {p3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;-><init>(Lorg/xml/sax/SAXException;)V

    throw p1
.end method
