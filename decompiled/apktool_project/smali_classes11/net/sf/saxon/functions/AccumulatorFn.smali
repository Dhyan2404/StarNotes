.class public abstract Lnet/sf/saxon/functions/AccumulatorFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/AccumulatorFn$AccumulatorAfter;,
        Lnet/sf/saxon/functions/AccumulatorFn$AccumulatorBefore;,
        Lnet/sf/saxon/functions/AccumulatorFn$Phase;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lnet/sf/saxon/expr/accum/AccumulatorRegistry;)Lnet/sf/saxon/expr/accum/Accumulator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "XTDE3340"

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getAccumulator(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/accum/Accumulator;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accumulator "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not been declared"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid accumulator name: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/String;Lnet/sf/saxon/functions/AccumulatorFn$Phase;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/functions/AccumulatorFn;->a(Ljava/lang/String;Lnet/sf/saxon/expr/accum/AccumulatorRegistry;)Lnet/sf/saxon/expr/accum/Accumulator;

    move-result-object p0

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v1

    if-eqz v1, :cond_6

    instance-of v2, v1, Lnet/sf/saxon/om/NodeInfo;

    const-string v3, "XTTE3360"

    if-eqz v2, :cond_5

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/16 v4, 0xd

    if-eq v2, v4, :cond_4

    invoke-virtual {v0, v1, p0, p2}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getStreamingAccumulatorValue(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/accum/Accumulator;Lnet/sf/saxon/functions/AccumulatorFn$Phase;)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/accum/Accumulator;->isUniversallyApplicable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XsltController;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorManager;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->isApplicable(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/accum/Accumulator;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Accumulator "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not applicable to the current document"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTDE3362"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {v2}, Lnet/sf/saxon/trans/XsltController;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorManager;

    move-result-object p1

    invoke-virtual {p1, v0, p0, p3}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->getAccumulatorData(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/accum/Accumulator;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/accum/IAccumulatorData;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/functions/AccumulatorFn$Phase;->AFTER:Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0, v1, p1}, Lnet/sf/saxon/expr/accum/IAccumulatorData;->getValue(Lnet/sf/saxon/om/NodeInfo;Z)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Context item for evaluation of accumulator function must not be an attribute or namespace node"

    invoke-direct {p0, p1, v3, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Context item for evaluation of accumulator function must be a node"

    invoke-direct {p0, p1, v3, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No context item for evaluation of accumulator function"

    const-string p2, "XTDE3350"

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/AccumulatorFn;->getPhase()Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lnet/sf/saxon/functions/AccumulatorFn;->b(Ljava/lang/String;Lnet/sf/saxon/functions/AccumulatorFn$Phase;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getCardinality([Lnet/sf/saxon/expr/Expression;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p1, v0

    instance-of v1, v1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v1

    aget-object v0, p1, v0

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/AccumulatorFn;->a(Ljava/lang/String;Lnet/sf/saxon/expr/accum/AccumulatorRegistry;)Lnet/sf/saxon/expr/accum/Accumulator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/Accumulator;->getType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getCardinality([Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    return p0
.end method

.method public abstract getPhase()Lnet/sf/saxon/functions/AccumulatorFn$Phase;
.end method

.method public getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p1, v0

    instance-of v1, v1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v1

    aget-object v0, p1, v0

    check-cast v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/functions/AccumulatorFn;->a(Ljava/lang/String;Lnet/sf/saxon/expr/accum/AccumulatorRegistry;)Lnet/sf/saxon/expr/accum/Accumulator;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/Accumulator;->getType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method
