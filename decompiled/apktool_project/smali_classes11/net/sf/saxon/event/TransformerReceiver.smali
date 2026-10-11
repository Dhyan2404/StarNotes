.class public Lnet/sf/saxon/event/TransformerReceiver;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/trans/XsltController;

.field public f:Lnet/sf/saxon/event/Builder;

.field public g:Lnet/sf/saxon/event/Receiver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trans/XsltController;)V
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object p1, p0, Lnet/sf/saxon/event/TransformerReceiver;->e:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/event/Builder;

    iput-object p1, p0, Lnet/sf/saxon/event/TransformerReceiver;->f:Lnet/sf/saxon/event/Builder;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/event/Builder;->setUseEventLocation(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TransformerReceiver;->f:Lnet/sf/saxon/event/Builder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->close()V

    iget-object v0, p0, Lnet/sf/saxon/event/TransformerReceiver;->f:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/event/TransformerReceiver;->f:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v1}, Lnet/sf/saxon/event/Builder;->reset()V

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/event/TransformerReceiver;->f:Lnet/sf/saxon/event/Builder;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/event/TransformerReceiver;->e:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/sf/saxon/om/TreeInfo;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    iget-object v1, p0, Lnet/sf/saxon/event/TransformerReceiver;->g:Lnet/sf/saxon/event/Receiver;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/event/TransformerReceiver;->e:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;)V

    iget-object v1, p0, Lnet/sf/saxon/event/TransformerReceiver;->e:Lnet/sf/saxon/trans/XsltController;

    iget-object p0, p0, Lnet/sf/saxon/event/TransformerReceiver;->g:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {v1, v0, p0}, Lnet/sf/saxon/trans/XsltController;->applyTemplates(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Receiver;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "No output destination has been supplied"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "No source document has been built"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getController()Lnet/sf/saxon/Controller;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/TransformerReceiver;->e:Lnet/sf/saxon/trans/XsltController;

    return-object p0
.end method

.method public getDestination()Lnet/sf/saxon/event/Receiver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/TransformerReceiver;->g:Lnet/sf/saxon/event/Receiver;

    return-object p0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/TransformerReceiver;->f:Lnet/sf/saxon/event/Builder;

    iget-object v1, p0, Lnet/sf/saxon/event/SequenceReceiver;->systemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/event/TransformerReceiver;->e:Lnet/sf/saxon/trans/XsltController;

    iget-object v1, p0, Lnet/sf/saxon/event/TransformerReceiver;->f:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Controller;->makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Stripper;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/event/TransformerReceiver;->e:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->isStylesheetStrippingTypeAnnotations()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/event/TransformerReceiver;->e:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/Configuration;->getAnnotationStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ProxyReceiver;->setUnderlyingReceiver(Lnet/sf/saxon/event/Receiver;)V

    iget-object p0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->open()V

    return-void
.end method

.method public setDestination(Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/TransformerReceiver;->g:Lnet/sf/saxon/event/Receiver;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;->setSystemId(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/event/TransformerReceiver;->e:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->setBaseOutputURI(Ljava/lang/String;)V

    return-void
.end method
