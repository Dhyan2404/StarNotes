.class public Lnet/sf/saxon/lib/OutputURIResolverWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ResultDocumentResolver;


# instance fields
.field public final a:Lnet/sf/saxon/lib/OutputURIResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/OutputURIResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/lib/OutputURIResolverWrapper;->a:Lnet/sf/saxon/lib/OutputURIResolver;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/lib/OutputURIResolver;Ljavax/xml/transform/Result;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/lib/OutputURIResolverWrapper;->b(Lnet/sf/saxon/lib/OutputURIResolver;Ljavax/xml/transform/Result;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/lib/OutputURIResolver;Ljavax/xml/transform/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/OutputURIResolver;->close(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p1
.end method


# virtual methods
.method public getOutputURIResolver()Lnet/sf/saxon/lib/OutputURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/lib/OutputURIResolverWrapper;->a:Lnet/sf/saxon/lib/OutputURIResolver;

    return-object p0
.end method

.method public resolve(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/lib/OutputURIResolverWrapper;->a:Lnet/sf/saxon/lib/OutputURIResolver;

    invoke-interface {p0}, Lnet/sf/saxon/lib/OutputURIResolver;->newInstance()Lnet/sf/saxon/lib/OutputURIResolver;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p2, p3}, Lnet/sf/saxon/lib/OutputURIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Result;

    move-result-object p2

    new-instance p3, Lcom/sunia/HTREnginev2/njk;

    invoke-direct {p3, p0, p2}, Lcom/sunia/HTREnginev2/njk;-><init>(Lnet/sf/saxon/lib/OutputURIResolver;Ljavax/xml/transform/Result;)V

    instance-of p0, p2, Lnet/sf/saxon/event/Receiver;

    if-eqz p0, :cond_0

    check-cast p2, Lnet/sf/saxon/event/Receiver;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0, p2, p4, v0}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p2

    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lnet/sf/saxon/event/CloseNotifier;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/event/CloseNotifier;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method
