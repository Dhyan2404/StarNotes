.class public Lnet/sf/saxon/xpath/XPathFunctionCall;
.super Lnet/sf/saxon/expr/FunctionCall;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# instance fields
.field public o:Lnet/sf/saxon/om/StructuredQName;

.field public final p:Ljavax/xml/xpath/XPathFunction;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;Ljavax/xml/xpath/XPathFunction;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/FunctionCall;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/xpath/XPathFunctionCall;->p:Ljavax/xml/xpath/XPathFunction;

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/Configuration;Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnet/sf/saxon/xpath/XPathFunctionCall;->e(Lnet/sf/saxon/Configuration;Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/Configuration;Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-static {p3, v0}, Lnet/sf/saxon/type/Type;->getItemType(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    const/16 v1, 0x4000

    const-class v2, Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lnet/sf/saxon/expr/PJConverter;->allocate(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/type/ItemType;ILjava/lang/Class;)Lnet/sf/saxon/expr/PJConverter;

    move-result-object p0

    invoke-virtual {p0, p3, v2, p2}, Lnet/sf/saxon/expr/PJConverter;->convert(Lnet/sf/saxon/om/Sequence;Ljava/lang/Class;Lnet/sf/saxon/expr/XPathContext;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/FunctionCall;->addExternalFunctionCallToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p2, v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v5

    new-instance v7, Lcom/sunia/HTREnginev2/gmo;

    invoke-direct {v7, v1, v6, p1}, Lcom/sunia/HTREnginev2/gmo;-><init>(Lnet/sf/saxon/Configuration;Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-static {v5, v7}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFunctionCall;->p:Ljavax/xml/xpath/XPathFunction;

    invoke-interface {p0, v0}, Ljavax/xml/xpath/XPathFunction;->evaluate(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0, v1}, Lnet/sf/saxon/expr/JPConverter;->allocate(Ljava/lang/Class;Ljava/lang/reflect/Type;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/JPConverter;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/expr/JPConverter;->convert(Ljava/lang/Object;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathFunctionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public computeCardinality()I
    .locals 0

    const p0, 0xe000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance p1, Lnet/sf/saxon/xpath/XPathFunctionCall;

    iget-object v0, p0, Lnet/sf/saxon/xpath/XPathFunctionCall;->o:Lnet/sf/saxon/om/StructuredQName;

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFunctionCall;->p:Ljavax/xml/xpath/XPathFunction;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/xpath/XPathFunctionCall;-><init>(Lnet/sf/saxon/om/StructuredQName;Ljavax/xml/xpath/XPathFunction;)V

    return-object p1
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/XPathFunctionCall;->o:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getTargetFunction(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v0

    new-array v1, v0, [Lnet/sf/saxon/om/Sequence;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/xpath/XPathFunctionCall;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public preEvaluate(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p0
.end method
