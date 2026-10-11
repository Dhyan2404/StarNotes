.class public Lnet/sf/saxon/jaxp/TemplatesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/Templates;


# instance fields
.field public final e:Ljavax/xml/transform/TransformerFactory;

.field public final f:Lnet/sf/saxon/s9api/XsltExecutable;

.field public g:Z


# direct methods
.method public constructor <init>(Ljavax/xml/transform/TransformerFactory;Lnet/sf/saxon/s9api/XsltExecutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/jaxp/TemplatesImpl;->e:Ljavax/xml/transform/TransformerFactory;

    iput-object p2, p0, Lnet/sf/saxon/jaxp/TemplatesImpl;->f:Lnet/sf/saxon/s9api/XsltExecutable;

    return-void
.end method


# virtual methods
.method public getImplementation()Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TemplatesImpl;->f:Lnet/sf/saxon/s9api/XsltExecutable;

    return-object p0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TemplatesImpl;->f:Lnet/sf/saxon/s9api/XsltExecutable;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltExecutable;->getUnderlyingCompiledStylesheet()Lnet/sf/saxon/PreparedStylesheet;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method

.method public isForceStreaming()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/jaxp/TemplatesImpl;->g:Z

    return p0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .locals 3

    iget-boolean v0, p0, Lnet/sf/saxon/jaxp/TemplatesImpl;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/jaxp/StreamingTransformerImpl;

    iget-object v1, p0, Lnet/sf/saxon/jaxp/TemplatesImpl;->f:Lnet/sf/saxon/s9api/XsltExecutable;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XsltExecutable;->load30()Lnet/sf/saxon/s9api/Xslt30Transformer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/jaxp/StreamingTransformerImpl;-><init>(Lnet/sf/saxon/s9api/XsltExecutable;Lnet/sf/saxon/s9api/Xslt30Transformer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/jaxp/TransformerImpl;

    iget-object v1, p0, Lnet/sf/saxon/jaxp/TemplatesImpl;->f:Lnet/sf/saxon/s9api/XsltExecutable;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XsltExecutable;->load()Lnet/sf/saxon/s9api/XsltTransformer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/jaxp/TransformerImpl;-><init>(Lnet/sf/saxon/s9api/XsltExecutable;Lnet/sf/saxon/s9api/XsltTransformer;)V

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/jaxp/TemplatesImpl;->e:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TemplatesImpl;->e:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerFactory;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/xml/transform/Transformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    :cond_1
    return-object v0
.end method

.method public setForceStreaming(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/jaxp/TemplatesImpl;->g:Z

    return-void
.end method
