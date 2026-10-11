.class public Lnet/sf/saxon/functions/CopyOfFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/functions/CopyOfFn;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/functions/CopyOfFn;->b(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p1}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->makeVirtualCopy(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/wrapper/VirtualCopy;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->getTreeInfo()Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/wrapper/VirtualTreeInfo;->setCopyAccumulators(Z)V

    :cond_1
    return-object p1
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p2

    if-nez v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-object p1, p2, p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/nce;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/nce;-><init>(Lnet/sf/saxon/functions/CopyOfFn;)V

    invoke-static {p1, p2}, Lnet/sf/saxon/expr/ItemMappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMapper$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

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

.method public varargs makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 7

    array-length p0, p1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {p0}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    goto :goto_0

    :cond_0
    aget-object p0, p1, v0

    :goto_0
    move-object v2, p0

    new-instance p0, Lnet/sf/saxon/expr/instruct/CopyOf;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/expr/instruct/CopyOf;-><init>(Lnet/sf/saxon/expr/Expression;ZILnet/sf/saxon/type/SchemaType;Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/CopyOf;->setCopyAccumulators(Z)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/CopyOf;->setSchemaAware(Z)V

    return-object p0
.end method
