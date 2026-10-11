.class public Lnet/sf/saxon/functions/SnapshotFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/SnapshotFn;->b(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/functions/SnapshotFn;->snapshotSingle(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public static closeAncestors(Ljava/util/List;Lnet/sf/saxon/event/Receiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;",
            "Lnet/sf/saxon/event/Receiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown ancestor node kind "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->endElement()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->close()V

    return-void
.end method

.method public static makeAncestorList(Lnet/sf/saxon/om/NodeInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/NodeInfo;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static openAncestors(Lnet/sf/saxon/om/NodeInfo;Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/event/BuilderMonitor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Lnet/sf/saxon/event/BuilderMonitor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/tree/tiny/TinyBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v1

    iget-object v1, v1, Lnet/sf/saxon/tree/tiny/TreeStatistics;->TEMPORARY_TREE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Builder;->setTiming(Z)V

    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->getBuilderMonitor()Lnet/sf/saxon/event/BuilderMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/event/ProxyReceiver;->open()V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getUnparsedEntityNames()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v10, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v3}, Lnet/sf/saxon/om/TreeInfo;->getUnparsedEntity(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v1

    aget-object v4, v4, v10

    invoke-virtual {v0, v3, v5, v4}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->isSchemaAware()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v10

    :goto_2
    if-ltz p2, :cond_4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    if-eq v2, v10, :cond_3

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    invoke-virtual {v9, v1}, Lnet/sf/saxon/event/ProxyReceiver;->startDocument(I)V

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown ancestor node kind "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {v0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v5

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, p0

    invoke-virtual/range {v2 .. v8}, Lnet/sf/saxon/event/ProxyReceiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    return-object v9
.end method

.method public static snapshotSequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/bvm;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/bvm;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/ItemMappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

    move-result-object p0

    return-object p0
.end method

.method public static snapshotSingle(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->makeVirtualCopy(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;->setCopyAccumulators(Z)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/tree/wrapper/SnapshotNode;->makeSnapshot(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/SnapshotNode;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length p0, p2

    if-nez p0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    aget-object p0, p2, p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/SnapshotFn;->snapshotSequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/om/LazySequence;

    invoke-direct {p1, p0}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p1
.end method

.method public getCardinality([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    return p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "SnapshotFn"

    return-object p0
.end method
