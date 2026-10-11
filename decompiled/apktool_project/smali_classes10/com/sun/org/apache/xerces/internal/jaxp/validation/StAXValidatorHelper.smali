.class public final Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHelper;


# instance fields
.field private fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private handler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

.field private identityTransformer1:Ljavax/xml/transform/Transformer;

.field private identityTransformer2:Ljavax/xml/transform/sax/TransformerHandler;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->identityTransformer1:Ljavax/xml/transform/Transformer;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->identityTransformer2:Ljavax/xml/transform/sax/TransformerHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->handler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    return-void
.end method


# virtual methods
.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    instance-of v0, p2, Ljavax/xml/transform/stax/StAXResult;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SourceResultMismatch"

    invoke-static {v0, p2, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->identityTransformer1:Ljavax/xml/transform/Transformer;

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->identityTransformer1:Ljavax/xml/transform/Transformer;

    invoke-virtual {v0}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->identityTransformer2:Ljavax/xml/transform/sax/TransformerHandler;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->handler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->identityTransformer2:Ljavax/xml/transform/sax/TransformerHandler;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->identityTransformer2:Ljavax/xml/transform/sax/TransformerHandler;

    invoke-interface {v0, p2}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    :cond_3
    const/4 p2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->identityTransformer1:Ljavax/xml/transform/Transformer;

    new-instance v1, Ljavax/xml/transform/sax/SAXResult;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->handler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    invoke-direct {v1, v2}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0, p1, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->handler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/xml/sax/SAXException;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/xml/sax/SAXException;

    throw p1

    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StAXValidatorHelper;->handler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    throw p1
.end method
