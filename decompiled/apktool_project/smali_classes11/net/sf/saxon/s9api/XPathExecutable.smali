.class public Lnet/sf/saxon/s9api/XPathExecutable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/sxpath/XPathExpression;

.field public final b:Lnet/sf/saxon/s9api/Processor;

.field public final c:Lnet/sf/saxon/sxpath/IndependentContext;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/sxpath/XPathExpression;Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/sxpath/IndependentContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XPathExecutable;->a:Lnet/sf/saxon/sxpath/XPathExpression;

    iput-object p2, p0, Lnet/sf/saxon/s9api/XPathExecutable;->b:Lnet/sf/saxon/s9api/Processor;

    iput-object p3, p0, Lnet/sf/saxon/s9api/XPathExecutable;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    return-void
.end method


# virtual methods
.method public asStep()Lnet/sf/saxon/s9api/streams/Step;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/s9api/streams/Step<",
            "Lnet/sf/saxon/s9api/XdmItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/s9api/XPathExecutable$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/XPathExecutable$a;-><init>(Lnet/sf/saxon/s9api/XPathExecutable;)V

    return-object v0
.end method

.method public getRequiredCardinalityForVariable(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/OccurrenceIndicator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathExecutable;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->getExternalVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/XPathVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getOccurrenceIndicator(I)Lnet/sf/saxon/s9api/OccurrenceIndicator;

    move-result-object p0

    return-object p0
.end method

.method public getRequiredItemTypeForVariable(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/ItemType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathExecutable;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->getExternalVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/gae;

    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/XPathVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathExecutable;->b:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public getResultCardinality()Lnet/sf/saxon/s9api/OccurrenceIndicator;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathExecutable;->a:Lnet/sf/saxon/sxpath/XPathExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/XPathExpression;->getInternalExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getOccurrenceIndicator(I)Lnet/sf/saxon/s9api/OccurrenceIndicator;

    move-result-object p0

    return-object p0
.end method

.method public getResultItemType()Lnet/sf/saxon/s9api/ItemType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/s9api/XPathExecutable;->a:Lnet/sf/saxon/sxpath/XPathExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/sxpath/XPathExpression;->getInternalExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/gae;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathExecutable;->b:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sunia/HTREnginev2/gae;-><init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/Configuration;)V

    return-object v1
.end method

.method public getUnderlyingExpression()Lnet/sf/saxon/sxpath/XPathExpression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathExecutable;->a:Lnet/sf/saxon/sxpath/XPathExpression;

    return-object p0
.end method

.method public getUnderlyingStaticContext()Lnet/sf/saxon/expr/StaticContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathExecutable;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    return-object p0
.end method

.method public iterateExternalVariables()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/s9api/QName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathExecutable;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/IndependentContext;->getExternalVariables()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/sxpath/XPathVariable;

    new-instance v2, Lnet/sf/saxon/s9api/QName;

    invoke-virtual {v1}, Lnet/sf/saxon/sxpath/XPathVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-direct {v2, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public load()Lnet/sf/saxon/s9api/XPathSelector;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/s9api/XPathExecutable;->c:Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-virtual {v1}, Lnet/sf/saxon/sxpath/IndependentContext;->getExternalVariables()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/sxpath/XPathVariable;

    invoke-virtual {v2}, Lnet/sf/saxon/sxpath/XPathVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/s9api/XPathSelector;

    iget-object p0, p0, Lnet/sf/saxon/s9api/XPathExecutable;->a:Lnet/sf/saxon/sxpath/XPathExpression;

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/s9api/XPathSelector;-><init>(Lnet/sf/saxon/sxpath/XPathExpression;Ljava/util/Map;)V

    return-object v1
.end method
