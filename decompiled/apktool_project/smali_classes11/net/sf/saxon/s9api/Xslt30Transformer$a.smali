.class public Lnet/sf/saxon/s9api/Xslt30Transformer$a;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/Xslt30Transformer;->asDocumentDestination(Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/s9api/Destination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public f:Lnet/sf/saxon/event/Receiver;

.field public final synthetic g:Lnet/sf/saxon/s9api/Destination;

.field public final synthetic h:Lnet/sf/saxon/s9api/Xslt30Transformer;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Xslt30Transformer;Lnet/sf/saxon/s9api/Destination;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/Xslt30Transformer$a;->h:Lnet/sf/saxon/s9api/Xslt30Transformer;

    iput-object p2, p0, Lnet/sf/saxon/s9api/Xslt30Transformer$a;->g:Lnet/sf/saxon/s9api/Destination;

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer$a;->f:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->close()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/s9api/Xslt30Transformer$a;->h:Lnet/sf/saxon/s9api/Xslt30Transformer;

    iget-object v0, p2, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-static {p2}, Lnet/sf/saxon/s9api/Xslt30Transformer;->d(Lnet/sf/saxon/s9api/Xslt30Transformer;)Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/s9api/Xslt30Transformer$a;->g:Lnet/sf/saxon/s9api/Destination;

    invoke-virtual {p2, v0, v1, v2}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getReceivingTransformer(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/event/SequenceNormalizerWithSpaceSeparator;

    invoke-direct {v0, p2}, Lnet/sf/saxon/event/SequenceNormalizerWithSpaceSeparator;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-interface {v0, p1}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object v0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer$a;->f:Lnet/sf/saxon/event/Receiver;

    return-object v0
.end method
