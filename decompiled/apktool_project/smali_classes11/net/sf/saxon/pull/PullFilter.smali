.class public Lnet/sf/saxon/pull/PullFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/pull/PullProvider;


# instance fields
.field public final a:Lnet/sf/saxon/pull/PullProvider;

.field public b:Lnet/sf/saxon/event/PipelineConfiguration;

.field protected currentEvent:Lnet/sf/saxon/pull/PullEvent;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pull/PullProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p1}, Lnet/sf/saxon/pull/PullProvider;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/pull/PullProvider;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pull/PullFilter;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/pull/PullProvider;->current()Lnet/sf/saxon/pull/PullEvent;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pull/PullFilter;->currentEvent:Lnet/sf/saxon/pull/PullEvent;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->close()V

    return-void
.end method

.method public current()Lnet/sf/saxon/pull/PullEvent;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->currentEvent:Lnet/sf/saxon/pull/PullEvent;

    return-object p0
.end method

.method public getAtomicValue()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->getAtomicValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public getAttributes()Lnet/sf/saxon/om/AttributeMap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->getAttributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object p0

    return-object p0
.end method

.method public final getNamePool()Lnet/sf/saxon/om/NamePool;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pull/PullFilter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceDeclarations()[Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->getNamespaceDeclarations()[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object p0

    return-object p0
.end method

.method public getNodeName()Lnet/sf/saxon/om/NodeName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    return-object p0
.end method

.method public getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->b:Lnet/sf/saxon/event/PipelineConfiguration;

    return-object p0
.end method

.method public getSchemaType()Lnet/sf/saxon/type/SchemaType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0
.end method

.method public getSourceLocator()Lnet/sf/saxon/s9api/Location;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->getSourceLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    return-object p0
.end method

.method public getStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->getStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingProvider()Lnet/sf/saxon/pull/PullProvider;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    return-object p0
.end method

.method public getUnparsedEntities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/pull/UnparsedEntity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->getUnparsedEntities()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/pull/PullEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->next()Lnet/sf/saxon/pull/PullEvent;

    move-result-object p0

    return-object p0
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/pull/PullFilter;->b:Lnet/sf/saxon/event/PipelineConfiguration;

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0, p1}, Lnet/sf/saxon/pull/PullProvider;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    return-void
.end method

.method public skipToMatchingEnd()Lnet/sf/saxon/pull/PullEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->a:Lnet/sf/saxon/pull/PullProvider;

    invoke-interface {p0}, Lnet/sf/saxon/pull/PullProvider;->skipToMatchingEnd()Lnet/sf/saxon/pull/PullEvent;

    move-result-object p0

    return-object p0
.end method
