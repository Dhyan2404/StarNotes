.class public Lnet/sf/saxon/jaxp/IdentityTransformerHandler;
.super Lnet/sf/saxon/event/ReceivingContentHandler;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/sax/TransformerHandler;


# instance fields
.field public x:Ljavax/xml/transform/Result;

.field public y:Ljava/lang/String;

.field public final z:Lnet/sf/saxon/jaxp/IdentityTransformer;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/jaxp/IdentityTransformer;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;->z:Lnet/sf/saxon/jaxp/IdentityTransformer;

    invoke-virtual {p1}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ReceivingContentHandler;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    return-void
.end method


# virtual methods
.method public getResult()Ljavax/xml/transform/Result;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;->x:Ljavax/xml/transform/Result;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;->y:Ljava/lang/String;

    return-object p0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;->z:Lnet/sf/saxon/jaxp/IdentityTransformer;

    return-object p0
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;->x:Ljavax/xml/transform/Result;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Result must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;->y:Ljava/lang/String;

    return-void
.end method

.method public startDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;->x:Ljavax/xml/transform/Result;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;->x:Ljavax/xml/transform/Result;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;->z:Lnet/sf/saxon/jaxp/IdentityTransformer;

    invoke-virtual {v0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getOutputProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;->x:Ljavax/xml/transform/Result;

    new-instance v4, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v4, v0}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/event/ReceivingContentHandler;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->isStripsAllWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lnet/sf/saxon/event/Stripper;

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/event/Stripper;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ReceivingContentHandler;->setReceiver(Lnet/sf/saxon/event/Receiver;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;->startDocument()V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method
