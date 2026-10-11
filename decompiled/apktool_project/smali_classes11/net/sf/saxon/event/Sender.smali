.class public abstract Lnet/sf/saxon/event/Sender;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/event/LocationCopier;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/event/Sender;->b(Lnet/sf/saxon/event/LocationCopier;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/event/LocationCopier;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/LocationCopier;->notifyElementNode(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    return-object p0
.end method

.method public static makeValidator(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/event/Receiver;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->getSchemaValidationMode()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Executable;->isSchemaAware()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot use schema-validated input documents when the query/stylesheet is not schema-aware"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    if-nez p2, :cond_0

    new-instance p2, Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-direct {p2, v1}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v1, p2}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    move-object p2, v1

    :goto_0
    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p0, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz v2, :cond_1

    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {v1}, Lnet/sf/saxon/lib/AugmentedSource;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v2

    invoke-virtual {p2, v2}, Lnet/sf/saxon/lib/ParseOptions;->merge(Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/lib/AugmentedSource;->getContainedSource()Ljavax/xml/transform/Source;

    move-result-object v3

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move-object v3, p0

    :goto_1
    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/lib/ParseOptions;->applyDefaults(Lnet/sf/saxon/Configuration;)V

    invoke-interface {p1, v1}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->getFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/event/FilterFactory;

    invoke-interface {v5, p1}, Lnet/sf/saxon/event/FilterFactory;->makeFilter(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    invoke-interface {v3}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lnet/sf/saxon/event/Sender;->makeValidator(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v4, v1, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    if-nez v4, :cond_3

    invoke-interface {v1, p1}, Lnet/sf/saxon/om/SpaceStrippingRule;->makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ProxyReceiver;

    move-result-object p1

    :cond_3
    instance-of v1, v3, Lnet/sf/saxon/lib/ActiveSource;

    if-nez v1, :cond_4

    invoke-virtual {v0, v3, v0}, Lnet/sf/saxon/Configuration;->resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_6

    check-cast v3, Lnet/sf/saxon/lib/ActiveSource;

    invoke-interface {v3, p1, p2}, Lnet/sf/saxon/lib/ActiveSource;->deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lnet/sf/saxon/lib/AugmentedSource;->isPleaseCloseAfterUse()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Lnet/sf/saxon/lib/AugmentedSource;->close()V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A source of type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported in this environment"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static sendDocumentInfo(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/s9api/Location;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v2

    if-eq v2, v1, :cond_0

    new-instance v2, Lnet/sf/saxon/event/NamePoolConverter;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v3

    invoke-direct {v2, p1, v3, v1}, Lnet/sf/saxon/event/NamePoolConverter;-><init>(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/om/NamePool;Lnet/sf/saxon/om/NamePool;)V

    move-object p1, v2

    :cond_0
    new-instance v1, Lnet/sf/saxon/event/LocationCopier;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x9

    if-ne v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-interface {p2}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lnet/sf/saxon/event/LocationCopier;-><init>(ZLjava/lang/String;)V

    const-class v2, Lnet/sf/saxon/event/CopyInformee;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/event/PipelineConfiguration;->setComponent(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/sunia/HTREnginev2/vgm;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/vgm;-><init>(Lnet/sf/saxon/event/LocationCopier;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/event/PipelineConfiguration;->setCopyInformee(Ljava/util/function/Function;)V

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->open()V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v3, :cond_3

    if-ne v0, v5, :cond_2

    invoke-interface {p0, p1, v1, p2}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected document or element node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {p1, v4}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    invoke-interface {p0, p1, v1, p2}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    :goto_1
    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->close()V

    return-void
.end method
