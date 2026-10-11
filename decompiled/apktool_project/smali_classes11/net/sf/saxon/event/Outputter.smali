.class public abstract Lnet/sf/saxon/event/Outputter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/Receiver;


# instance fields
.field protected pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

.field protected systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/Outputter;->systemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/high16 v1, 0x80000

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public abstract attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public abstract comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract endDocument()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract endElement()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public final getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/Outputter;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/Outputter;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    return-object p0
.end method

.method public getStringReceiver(ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/str/UniStringConsumer;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/event/Outputter$a;

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/event/Outputter$a;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/s9api/Location;)V

    return-object p1

    :cond_0
    new-instance p1, Lnet/sf/saxon/event/Outputter$b;

    invoke-direct {p1, p0}, Lnet/sf/saxon/event/Outputter$b;-><init>(Lnet/sf/saxon/event/Outputter;)V

    return-object p1
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/Outputter;->systemId:Ljava/lang/String;

    return-object p0
.end method

.method public abstract namespace(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public namespaces(Lnet/sf/saxon/om/NamespaceBindingSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public abstract processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/Outputter;->pipelineConfiguration:Lnet/sf/saxon/event/PipelineConfiguration;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/Outputter;->systemId:Ljava/lang/String;

    return-void
.end method

.method public setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public startContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public abstract startDocument(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p5, p6}, Lnet/sf/saxon/event/Outputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    .line 2
    invoke-virtual {p4}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/NamespaceBinding;

    .line 3
    invoke-virtual {p2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p4, p2, p6}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/AttributeInfo;

    .line 5
    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v2

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->startContent()V

    return-void
.end method

.method public abstract startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
