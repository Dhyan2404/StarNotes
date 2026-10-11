.class public Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;
.super Lnet/sf/saxon/event/TreeReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/AbstractXsltTransformer;->c(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;Lnet/sf/saxon/s9api/Destination;Lnet/sf/saxon/event/Builder;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/TreeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public h:Z

.field public final synthetic i:Lnet/sf/saxon/event/Builder;

.field public final synthetic j:Lnet/sf/saxon/trans/XsltController;

.field public final synthetic k:Lnet/sf/saxon/s9api/Destination;

.field public final synthetic l:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

.field public final synthetic m:Lnet/sf/saxon/s9api/AbstractXsltTransformer;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/AbstractXsltTransformer;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Builder;Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/s9api/Destination;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->m:Lnet/sf/saxon/s9api/AbstractXsltTransformer;

    iput-object p3, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->i:Lnet/sf/saxon/event/Builder;

    iput-object p4, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->j:Lnet/sf/saxon/trans/XsltController;

    iput-object p5, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->k:Lnet/sf/saxon/s9api/Destination;

    iput-object p6, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->l:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {p0, p2}, Lnet/sf/saxon/event/TreeReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->h:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->h:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->i:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->j:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/sf/saxon/om/TreeInfo;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    iget-object v1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->m:Lnet/sf/saxon/s9api/AbstractXsltTransformer;

    iget-object v2, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->j:Lnet/sf/saxon/trans/XsltController;

    iget-object v3, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->k:Lnet/sf/saxon/s9api/Destination;

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getDestinationReceiver(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;

    move-result-object v1
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->j:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;)V

    iget-object v2, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->j:Lnet/sf/saxon/trans/XsltController;

    iget-object v3, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->l:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/Controller;->initializeController(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V

    iget-object v2, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->j:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v2, v0, v1}, Lnet/sf/saxon/trans/XsltController;->applyTemplates(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Receiver;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;->h:Z

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method
