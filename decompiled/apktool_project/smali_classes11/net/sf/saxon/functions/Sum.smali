.class public Lnet/sf/saxon/functions/Sum;
.super Lnet/sf/saxon/functions/FoldingFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/Sum$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/FoldingFunction;-><init>()V

    return-void
.end method

.method public static total(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/value/AtomicValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lnet/sf/saxon/functions/Sum$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/functions/Sum$a;-><init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/value/AtomicValue;)V

    new-instance p1, Lcom/sunia/HTREnginev2/s5n;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/s5n;-><init>(Lnet/sf/saxon/functions/Sum$a;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    invoke-virtual {v0}, Lnet/sf/saxon/functions/Sum$a;->result()Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0
.end method


# virtual methods
.method public getCardinality([Lnet/sf/saxon/expr/Expression;)I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    aget-object p0, p1, v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x6000

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x4000

    return p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "SumCompiler"

    return-object p0
.end method

.method public varargs getFold(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/Fold;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    new-instance p2, Lnet/sf/saxon/functions/Sum$a;

    invoke-direct {p2, p1, p0}, Lnet/sf/saxon/functions/Sum$a;-><init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/value/AtomicValue;)V

    return-object p2

    :cond_0
    new-instance p0, Lnet/sf/saxon/functions/Sum$a;

    sget-object p2, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/functions/Sum$a;-><init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/value/AtomicValue;)V

    return-object p0
.end method

.method public getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v2, v1, v0}, Lnet/sf/saxon/expr/Atomizer;->getAtomizedItemType(Lnet/sf/saxon/expr/Expression;ZLnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    :cond_0
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v2, p0, v0}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_1
    aget-object p0, p1, v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-static {v2, p0, v0}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {v2}, Lnet/sf/saxon/type/ItemType;->getPrimitiveItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method
