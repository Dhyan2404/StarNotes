.class final Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;
.super Ljavax/xml/validation/Validator;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/xs/PSVIProvider;


# instance fields
.field private fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfigurationChanged:Z

.field private fDOMValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;

.field private fErrorHandlerChanged:Z

.field private fResourceResolverChanged:Z

.field private fSAXValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

.field private fStaxValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;

.field private fStreamValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/validation/Validator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method


# virtual methods
.method public getAttributePSVI(I)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVI(I)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getElementPSVI()Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->getElementPSVI()Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "feature-not-recognized"

    goto :goto_0

    :cond_0
    const-string p0, "feature-not-supported"

    :goto_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "property-not-recognized"

    goto :goto_0

    :cond_0
    const-string p0, "property-not-supported"

    :goto_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 3

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->restoreInitialState()V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "feature-not-recognized"

    goto :goto_0

    :cond_0
    const-string p0, "feature-not-supported"

    :goto_0
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "property-not-recognized"

    goto :goto_0

    :cond_0
    const-string p0, "property-not-supported"

    :goto_0
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljavax/xml/transform/stax/StAXSource;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fStaxValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;

    if-nez v0, :cond_6

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fStaxValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorImpl;->fStaxValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    :goto_0
    return-void

    :cond_7
    if-nez p1, :cond_8

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, "SourceParameterNull"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "SourceNotAccepted"

    invoke-static {p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
