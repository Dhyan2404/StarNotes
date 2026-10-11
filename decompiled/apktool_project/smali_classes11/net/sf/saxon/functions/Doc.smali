.class public Lnet/sf/saxon/functions/Doc;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# instance fields
.field public h:Lnet/sf/saxon/lib/ParseOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static maybePreEvaluate(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/lib/Feature;->PRE_EVALUATE_DOC_FUNCTION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/functions/Doc$a;

    invoke-direct {v0, p0, p1, p0}, Lnet/sf/saxon/functions/Doc$a;-><init>(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/functions/SystemFunction;)V

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    iget p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    or-int/lit16 p0, p0, 0x200

    iput p0, p1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->properties:I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    if-nez p2, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/Doc;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lnet/sf/saxon/functions/DocumentFn;->makeDoc(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;Z)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/functions/Doc;->h:Lnet/sf/saxon/lib/ParseOptions;

    if-eqz p2, :cond_1

    instance-of p2, p1, Lnet/sf/saxon/trans/XsltController;

    if-eqz p2, :cond_1

    check-cast p1, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XsltController;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorManager;

    move-result-object p1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p2

    iget-object p0, p0, Lnet/sf/saxon/functions/Doc;->h:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getApplicableAccumulators()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->setApplicableAccumulators(Lnet/sf/saxon/om/TreeInfo;Ljava/util/Set;)V

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load document "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FODC0002"

    invoke-direct {p0, p2, v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public getCardinality([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    const p1, -0x8001

    and-int/2addr p0, p1

    return p0
.end method

.method public getParseOptions()Lnet/sf/saxon/lib/ParseOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/Doc;->h:Lnet/sf/saxon/lib/ParseOptions;

    return-object p0
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/high16 p0, 0x18a0000

    return p0
.end method

.method public varargs makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/Doc;->maybePreEvaluate(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setParseOptions(Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/Doc;->h:Lnet/sf/saxon/lib/ParseOptions;

    return-void
.end method
