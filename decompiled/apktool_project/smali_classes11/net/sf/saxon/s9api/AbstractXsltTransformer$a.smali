.class public Lnet/sf/saxon/s9api/AbstractXsltTransformer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ResultDocumentResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setResultDocumentHandler(Ljava/util/function/Function;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:Lnet/sf/saxon/s9api/AbstractXsltTransformer;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/AbstractXsltTransformer;Ljava/util/function/Function;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$a;->b:Lnet/sf/saxon/s9api/AbstractXsltTransformer;

    iput-object p2, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$a;->a:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2, p3}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$a;->a:Ljava/util/function/Function;

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/Destination;
    :try_end_1
    .catch Lnet/sf/saxon/s9api/SaxonApiUncheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0
    :try_end_2
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_0
    move-exception p0

    :try_start_3
    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    const-string p1, "SXRD0001"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method
