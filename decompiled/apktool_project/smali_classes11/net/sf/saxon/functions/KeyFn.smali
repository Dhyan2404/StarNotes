.class public Lnet/sf/saxon/functions/KeyFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/StatefulSystemFunction;


# static fields
.field public static final synthetic i:Z


# instance fields
.field public h:Lnet/sf/saxon/trans/KeyDefinitionSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/functions/KeyFn;->h:Lnet/sf/saxon/trans/KeyDefinitionSet;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Item;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/KeyFn;->h(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Item;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/KeyFn;->i(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Item;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/KeyFn;->g(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method

.method public static d(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    const-string v1, "XTDE1270"

    if-eqz v0, :cond_1

    instance-of v2, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v2, :cond_0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v2, "Cannot call the key() function when the context item is not a node"

    invoke-direct {v0, v2, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw v0

    :cond_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v2, "Cannot call the key() function when there is no context item"

    invoke-direct {v0, v2, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw v0
.end method

.method public static f(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Item;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XPDY0002"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "XTDE1270"

    if-eqz v2, :cond_1

    instance-of p1, p1, Lnet/sf/saxon/expr/RootExpression;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Cannot call the key() function when there is no context node"

    invoke-direct {p1, v0, v3, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p1

    :cond_1
    :goto_0
    const-string p1, "XPDY0050"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "XPTY0020"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "XPTY0019"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    throw v0

    :cond_3
    :goto_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Cannot call the key() function when the context item is an atomic value"

    invoke-direct {p1, v0, v3, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p1

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "In the key() function, the node supplied in the third argument (or the context node if absent) must be in a tree whose root is a document node"

    invoke-direct {p1, v0, v3, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public static synthetic g(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Item;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Item;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/Item;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    return p0
.end method

.method public static internalKeyCall(Lnet/sf/saxon/trans/KeyManager;Lnet/sf/saxon/trans/KeyDefinitionSet;Ljava/lang/String;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RetainedStaticContext;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    const-string p0, "key"

    const/4 v0, 0x3

    invoke-static {p0, p5, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/KeyFn;

    iput-object p1, p0, Lnet/sf/saxon/functions/KeyFn;->h:Lnet/sf/saxon/trans/KeyDefinitionSet;

    const/4 p1, 0x2

    const/4 p5, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Lnet/sf/saxon/expr/Expression;

    new-instance v3, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v3, p2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    aput-object p3, v2, p5

    aput-object p4, v2, p1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/functions/KeyFn;->fixArguments([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    new-instance v2, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v2, p2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    aput-object p3, v0, p5

    aput-object p4, v0, p1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static search(Lnet/sf/saxon/trans/KeyManager;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/trans/KeyDefinitionSet;)Lnet/sf/saxon/om/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-virtual {p4}, Lnet/sf/saxon/trans/KeyDefinitionSet;->isComposite()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    invoke-virtual {p0, p4, v1, p2, p1}, Lnet/sf/saxon/trans/KeyManager;->selectByCompositeKey(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p3, v0}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lnet/sf/saxon/om/LazySequence;

    invoke-direct {p1, p0}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p1

    :cond_0
    new-instance p1, Lnet/sf/saxon/om/LazySequence;

    new-instance p2, Lcom/sunia/HTREnginev2/zri;

    invoke-direct {p2, p3}, Lcom/sunia/HTREnginev2/zri;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-static {p0, p2}, Lnet/sf/saxon/expr/ItemMappingIterator;->filter(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemFilter$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p1

    :cond_1
    instance-of v1, p2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, p4, v1, v2, p1}, Lnet/sf/saxon/trans/KeyManager;->selectByKey(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/tree/iter/EmptyIterator;

    if-eqz v2, :cond_2

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v2, v1, Lnet/sf/saxon/tree/iter/SingletonIterator;

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0, p3}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p3, p0}, Lnet/sf/saxon/tree/util/Navigator;->isAncestorOrSelf(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0

    :cond_5
    invoke-interface {v0, p3}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance p0, Lnet/sf/saxon/om/LazySequence;

    invoke-direct {p0, v1}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p0

    :cond_6
    new-instance v2, Lnet/sf/saxon/om/LazySequence;

    new-instance v3, Lcom/sunia/HTREnginev2/asi;

    invoke-direct {v3, p3}, Lcom/sunia/HTREnginev2/asi;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-static {v1, v3}, Lnet/sf/saxon/expr/ItemMappingIterator;->filter(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemFilter$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

    move-result-object v1

    invoke-direct {v2, v1}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    :cond_7
    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v2, :cond_8

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v3

    invoke-virtual {p0, p4, v3, v2, p1}, Lnet/sf/saxon/trans/KeyManager;->selectByKey(Lnet/sf/saxon/trans/KeyDefinitionSet;Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_a

    const/4 p0, 0x0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/SequenceIterator;

    goto :goto_2

    :cond_a
    new-instance p0, Lnet/sf/saxon/expr/UnionIterator;

    invoke-static {}, Lnet/sf/saxon/expr/sort/LocalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/LocalOrderComparer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lnet/sf/saxon/expr/UnionIterator;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    invoke-interface {p3, v0}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lnet/sf/saxon/om/LazySequence;

    invoke-direct {p1, p0}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p1

    :cond_b
    new-instance p1, Lnet/sf/saxon/om/LazySequence;

    new-instance p2, Lcom/sunia/HTREnginev2/bsi;

    invoke-direct {p2, p3}, Lcom/sunia/HTREnginev2/bsi;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-static {p0, p2}, Lnet/sf/saxon/expr/ItemMappingIterator;->filter(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemFilter$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/om/LazySequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    return-object p1
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/functions/KeyFn;->h:Lnet/sf/saxon/trans/KeyDefinitionSet;

    if-eqz v0, :cond_2

    new-instance v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/functions/KeyFn;->h:Lnet/sf/saxon/trans/KeyDefinitionSet;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyDefinitions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/KeyDefinition;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/KeyDefinition;->getMatch()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/pattern/NodeSetPattern;

    if-eqz v3, :cond_0

    check-cast v2, Lnet/sf/saxon/pattern/NodeSetPattern;

    invoke-virtual {v2}, Lnet/sf/saxon/pattern/NodeSetPattern;->getSelectionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/trans/KeyDefinition;->getUse()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->addNodeSet(Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t add key() call to pathmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t add dynamic key() call to pathmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-static {p1, v0}, Lnet/sf/saxon/functions/KeyFn;->f(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/functions/KeyFn;->d(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/functions/KeyFn;->h:Lnet/sf/saxon/trans/KeyDefinitionSet;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/KeyFn;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object v2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/functions/KeyFn;->e(Lnet/sf/saxon/trans/KeyManager;Ljava/lang/String;)Lnet/sf/saxon/trans/KeyDefinitionSet;

    move-result-object v1

    :cond_1
    const/4 p0, 0x1

    aget-object p0, p2, p0

    invoke-static {v2, p1, p0, v0, v1}, Lnet/sf/saxon/functions/KeyFn;->search(Lnet/sf/saxon/trans/KeyManager;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/trans/KeyDefinitionSet;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "In the key() function, the node supplied in the third argument (or the context node if absent) must be in a tree whose root is a document node"

    const-string v0, "XTDE1270"

    invoke-direct {p0, p2, v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public copy()Lnet/sf/saxon/functions/SystemFunction;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/KeyFn;

    iget-object p0, p0, Lnet/sf/saxon/functions/KeyFn;->h:Lnet/sf/saxon/trans/KeyDefinitionSet;

    iput-object p0, v0, Lnet/sf/saxon/functions/KeyFn;->h:Lnet/sf/saxon/trans/KeyDefinitionSet;

    return-object v0
.end method

.method public final e(Lnet/sf/saxon/trans/KeyManager;Ljava/lang/String;)Lnet/sf/saxon/trans/KeyDefinitionSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "XTDE1260"

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/KeyFn;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p2, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/KeyManager;->getKeyDefinitionSet(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/KeyDefinitionSet;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has not been defined"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key name: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public varargs fixArguments([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v1, v1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/functions/KeyFn;->h:Lnet/sf/saxon/trans/KeyDefinitionSet;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/KeyFn;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object v1

    aget-object p1, p1, v0

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/functions/KeyFn;->e(Lnet/sf/saxon/trans/KeyManager;Ljava/lang/String;)Lnet/sf/saxon/trans/KeyDefinitionSet;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/KeyFn;->h:Lnet/sf/saxon/trans/KeyDefinitionSet;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyManager()Lnet/sf/saxon/trans/KeyManager;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    return-object p0
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    aget-object p0, p1, v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    const/high16 p1, 0x10000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x1820000

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, 0x1830000

    :goto_1
    return p0
.end method
