.class public Lnet/sf/saxon/jaxp/StreamingTransformerImpl$StreamingTransformerHandler;
.super Lnet/sf/saxon/event/ReceivingContentHandler;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/sax/TransformerHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/jaxp/StreamingTransformerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StreamingTransformerHandler"
.end annotation


# instance fields
.field public final x:Lnet/sf/saxon/trans/XsltController;

.field public y:Ljava/lang/String;

.field public final synthetic z:Lnet/sf/saxon/jaxp/StreamingTransformerImpl;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/jaxp/StreamingTransformerImpl;Lnet/sf/saxon/trans/XsltController;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/jaxp/StreamingTransformerImpl$StreamingTransformerHandler;->z:Lnet/sf/saxon/jaxp/StreamingTransformerImpl;

    invoke-direct {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/jaxp/StreamingTransformerImpl$StreamingTransformerHandler;->x:Lnet/sf/saxon/trans/XsltController;

    return-void
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/StreamingTransformerImpl$StreamingTransformerHandler;->y:Ljava/lang/String;

    return-object p0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/StreamingTransformerImpl$StreamingTransformerHandler;->z:Lnet/sf/saxon/jaxp/StreamingTransformerImpl;

    return-object p0
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/jaxp/StreamingTransformerImpl$StreamingTransformerHandler;->x:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ReceivingContentHandler;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iget-object v1, p0, Lnet/sf/saxon/jaxp/StreamingTransformerImpl$StreamingTransformerHandler;->x:Lnet/sf/saxon/trans/XsltController;

    new-instance v2, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v2}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Controller;->initializeController(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V

    iget-object v1, p0, Lnet/sf/saxon/jaxp/StreamingTransformerImpl$StreamingTransformerHandler;->x:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v2}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>()V

    invoke-virtual {v1, p1, v2, v0}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/jaxp/StreamingTransformerImpl$StreamingTransformerHandler;->x:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XsltController;->getInitialMode()Lnet/sf/saxon/trans/Mode;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/event/TreeReceiver;

    invoke-direct {v2, p1}, Lnet/sf/saxon/event/TreeReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/trans/XsltController;->getStreamingReceiver(Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ReceivingContentHandler;->setReceiver(Lnet/sf/saxon/event/Receiver;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/jaxp/StreamingTransformerImpl$StreamingTransformerHandler;->y:Ljava/lang/String;

    return-void
.end method
