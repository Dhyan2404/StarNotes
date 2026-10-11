.class public Lnet/sf/saxon/sxpath/XPathDynamicContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/type/ItemType;

.field public final b:Lnet/sf/saxon/expr/XPathContextMajor;

.field public final c:Lnet/sf/saxon/expr/instruct/SlotManager;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/instruct/SlotManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->a:Lnet/sf/saxon/type/ItemType;

    iput-object p2, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    iput-object p3, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->c:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-void
.end method


# virtual methods
.method public checkExternalVariables(Lnet/sf/saxon/expr/instruct/SlotManager;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getStackFrame()Lnet/sf/saxon/expr/StackFrame;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/StackFrame;->getStackFrameValues()[Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getVariableMap()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/StructuredQName;

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No value has been supplied for variable $"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public getCollectionFinder()Lnet/sf/saxon/lib/CollectionFinder;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getCollectionFinder()Lnet/sf/saxon/lib/CollectionFinder;

    move-result-object p0

    return-object p0
.end method

.method public getContextItem()Lnet/sf/saxon/om/Item;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMajor;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    return-object p0
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMajor;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    move-result-object p0

    return-object p0
.end method

.method public getXPathContextObject()Lnet/sf/saxon/expr/XPathContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    return-object p0
.end method

.method public setCollectionFinder(Lnet/sf/saxon/lib/CollectionFinder;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->setCollectionFinder(Lnet/sf/saxon/lib/CollectionFinder;)V

    return-void
.end method

.method public setContextItem(Lnet/sf/saxon/om/Item;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/XPathContextMinor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Supplied node must be built using the same or a compatible Configuration"

    const-string v0, "SXXP0004"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/XPathContextMinor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->a:Lnet/sf/saxon/type/ItemType;

    invoke-interface {v2, p1, v1}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {v1, p1}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    iget-object v2, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/om/DocumentKey;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/DocumentPool;->find(Lnet/sf/saxon/om/DocumentKey;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/om/DocumentPool;->add(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/DocumentKey;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplied context item does not match required context item type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->a:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    return-void
.end method

.method public setUnparsedTextURIResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/XPathContextMinor;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->setUnparsedTextURIResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V

    return-void
.end method

.method public setVariable(Lnet/sf/saxon/sxpath/XPathVariable;Lnet/sf/saxon/om/Sequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/XPathVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-static {p2, v0, v1}, Lnet/sf/saxon/expr/parser/TypeChecker;->testConformance(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v2, :cond_2

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/XPathContextMinor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Supplied node must be built using the same or a compatible Configuration"

    const-string p2, "SXXP0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/XPathVariable;->getLocalSlotNumber()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->c:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v1

    if-lt v0, v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->c:Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/SlotManager;->getVariableMap()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/StructuredQName;

    :goto_2
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/XPathVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lnet/sf/saxon/sxpath/XPathDynamicContext;->b:Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/expr/XPathContextMinor;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    return-void

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Supplied XPathVariable is bound to the wrong slot: perhaps it was created using a different static context"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
