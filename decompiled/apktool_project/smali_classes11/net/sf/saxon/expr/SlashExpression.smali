.class public Lnet/sf/saxon/expr/SlashExpression;
.super Lnet/sf/saxon/expr/BinaryExpression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextSwitchingExpression;


# instance fields
.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lnet/sf/saxon/expr/BinaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public static synthetic i(Lnet/sf/saxon/expr/SlashExpression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/SlashExpression;->m(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/SlashExpression;->l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p0, Lnet/sf/saxon/expr/AxisExpression;

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/AxisExpression;->iterate(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic m(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {v0, p0}, Lnet/sf/saxon/value/Cardinality;->multiply(II)I

    move-result p0

    return p0
.end method

.method public computeHashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    const v1, -0x3722b02b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public computeSpecialProperties()I
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v1

    const/high16 v2, 0x400000

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/high16 p0, 0x8a0000

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v2

    const/high16 v3, 0x10a0000

    if-nez v2, :cond_1

    or-int/2addr v0, v3

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    invoke-static {v2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v2

    if-nez v2, :cond_2

    or-int/2addr v1, v3

    :cond_2
    and-int v2, v0, v1

    const/high16 v3, 0x10000

    and-int v4, v2, v3

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const/high16 v5, 0x1000000

    and-int v6, v0, v5

    if-eqz v6, :cond_4

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    or-int/2addr v4, v5

    :cond_4
    const/high16 v3, 0x80000

    and-int v5, v2, v3

    if-eqz v5, :cond_5

    or-int/2addr v4, v3

    :cond_5
    const/high16 v3, 0x100000

    and-int v5, v2, v3

    if-eqz v5, :cond_6

    or-int/2addr v4, v3

    :cond_6
    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/SlashExpression;->p(II)Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x20000

    or-int/2addr v4, v0

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->o()Z

    move-result p0

    if-eqz p0, :cond_8

    const/high16 p0, 0x40000

    or-int/2addr v4, p0

    :cond_8
    const/high16 p0, 0x800000

    and-int v0, v2, p0

    if-eqz v0, :cond_9

    or-int/2addr v4, p0

    :cond_9
    return v4
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    instance-of v0, p1, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/expr/SlashExpression;

    iget-boolean p0, p0, Lnet/sf/saxon/expr/SlashExpression;->q:Z

    iput-boolean p0, v0, Lnet/sf/saxon/expr/SlashExpression;->q:Z

    :cond_0
    return-object p1
.end method

.method public disableIndexing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/SlashExpression;->q:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/expr/SlashExpression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "slash"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    instance-of v0, p0, Lnet/sf/saxon/expr/SimpleStepExpression;

    const-string v1, "simple"

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->isContextFree()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "2"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getActionExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getCost()D
    .locals 7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v3

    int-to-double v5, v0

    mul-double/2addr v5, v3

    add-double/2addr v1, v5

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "pathExpression"

    return-object p0
.end method

.method public getFirstStep()Lnet/sf/saxon/expr/Expression;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public final getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getLastStep()Lnet/sf/saxon/expr/Expression;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getLastStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getLeadingSteps()Lnet/sf/saxon/expr/Expression;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/SlashExpression;->k(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/SlashExpression;->n(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getOperandRole(I)Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLING_SELECT:Lnet/sf/saxon/expr/OperandRole;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLED_ACTION:Lnet/sf/saxon/expr/OperandRole;

    :goto_0
    return-object p0
.end method

.method public getRemainingSteps()Lnet/sf/saxon/expr/Expression;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/SlashExpression;->k(Ljava/util/List;)V

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/SlashExpression;->n(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getSelectExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getStart()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getStep()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ForEach"

    return-object p0
.end method

.method public isAbsolute()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContextFree()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/SlashExpression;->p:Z

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget-boolean v1, p0, Lnet/sf/saxon/expr/SlashExpression;->p:Z

    if-eqz v1, :cond_0

    instance-of v1, v0, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/itm;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/itm;-><init>(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    new-instance p1, Lnet/sf/saxon/expr/ContextMappingIterator;

    new-instance v1, Lcom/sunia/HTREnginev2/jtm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/jtm;-><init>(Lnet/sf/saxon/expr/SlashExpression;)V

    invoke-direct {p1, v1, v0}, Lnet/sf/saxon/expr/ContextMappingIterator;-><init>(Lnet/sf/saxon/expr/ContextMappingFunction;Lnet/sf/saxon/expr/XPathContext;)V

    return-object p1
.end method

.method public final k(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/SlashExpression;->k(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SlashExpression;->k(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public final n(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Expression;

    new-instance p1, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {p1}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Expression;

    new-instance v3, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v3}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SlashExpression;->n(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public final o()Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->isForwards:[Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result p0

    aget-boolean p0, v0, p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v0, :cond_1

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->isForwards:[Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result p0

    aget-boolean p0, v0, p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setContextSettingExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/RootExpression;

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/SlashExpression;->simplifyDescendantPath(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/SlashExpression;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    iget-boolean v2, p0, Lnet/sf/saxon/expr/SlashExpression;->q:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const-class v3, Lnet/sf/saxon/functions/Doc;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Lnet/sf/saxon/functions/DocumentFn;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getLastStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v3, :cond_4

    check-cast v2, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/FilterExpression;->isPositional(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getLeadingSteps()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v2}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, p0, p1}, Lnet/sf/saxon/expr/parser/Optimizer;->convertPathExpressionToKey(Lnet/sf/saxon/expr/SlashExpression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/SlashExpression;->tryToMakeSorted(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eqz p2, :cond_6

    return-object p2

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p2

    invoke-static {p2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p1, Lnet/sf/saxon/expr/SimpleStepExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/expr/SimpleStepExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_7
    iput-boolean v0, p0, Lnet/sf/saxon/expr/SlashExpression;->p:Z

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/RootExpression;

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const-class v1, Lnet/sf/saxon/functions/KeyFn;

    invoke-virtual {p2, v1}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/FunctionCall;->getArity()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz v2, :cond_9

    new-instance p1, Lnet/sf/saxon/expr/RootExpression;

    invoke-direct {p1}, Lnet/sf/saxon/expr/RootExpression;-><init>()V

    invoke-virtual {p2, v1, p1}, Lnet/sf/saxon/expr/FunctionCall;->setArg(ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetStaticProperties(Lnet/sf/saxon/expr/Expression;)V

    return-object p2

    :cond_9
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isOptimizeForStreaming()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p2, p1, Lnet/sf/saxon/expr/instruct/CopyOf;

    if-eqz p2, :cond_a

    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/expr/instruct/CopyOf;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/CopyOf;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/instruct/CopyOf;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public final p(II)Z
    .locals 3

    const/high16 v0, 0x20000

    and-int v1, p2, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_5

    and-int p0, p1, v0

    if-nez p0, :cond_1

    return v2

    :cond_1
    const/high16 p0, 0x200000

    and-int/2addr p0, p2

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/high16 p0, 0x400000

    and-int/2addr p0, p2

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/high16 p0, 0x80000

    and-int/2addr p0, p1

    if-eqz p0, :cond_4

    const/high16 p0, 0x100000

    and-int/2addr p0, p2

    if-eqz p0, :cond_4

    move v2, v1

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public setContextFree(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/SlashExpression;->p:Z

    return-void
.end method

.method public setStart(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/BinaryExpression;->setLhsExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setStep(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/BinaryExpression;->setRhsExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public simplifyDescendantPath(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/SlashExpression;
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lnet/sf/saxon/expr/FilterExpression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/FilterExpression;->isPositional(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of p1, v0, Lnet/sf/saxon/expr/AxisExpression;

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of v1, p1, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v3, 0x5

    if-eqz v1, :cond_4

    check-cast p1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v1

    if-eq v1, v3, :cond_3

    return-object v2

    :cond_3
    new-instance v1, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v1}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance v4, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v4}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/expr/AxisExpression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {v1, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :cond_4
    instance-of v1, p1, Lnet/sf/saxon/expr/SlashExpression;

    if-nez v1, :cond_5

    return-object v2

    :cond_5
    check-cast p1, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/AxisExpression;

    if-nez v1, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {p1}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v4

    if-eq v4, v3, :cond_7

    return-object v2

    :cond_7
    invoke-virtual {v1}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v1

    if-eqz v1, :cond_8

    instance-of v1, v1, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    check-cast v0, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eq v1, v4, :cond_c

    if-eq v1, v5, :cond_c

    if-ne v1, v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v0, 0x2

    if-ne v1, v0, :cond_b

    new-instance v0, Lnet/sf/saxon/expr/AxisExpression;

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-direct {v0, v3, v1}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/expr/SlashExpression;

    if-nez v0, :cond_a

    return-object v2

    :cond_a
    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    check-cast p1, Lnet/sf/saxon/expr/SlashExpression;

    return-object p1

    :cond_b
    return-object v2

    :cond_c
    :goto_1
    if-ne v1, v3, :cond_d

    goto :goto_2

    :cond_d
    move v3, v5

    :goto_2
    new-instance v1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    :goto_3
    instance-of v4, v0, Lnet/sf/saxon/expr/FilterExpression;

    if-eqz v4, :cond_e

    check-cast v0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/FilterExpression;->getFilter()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/FilterExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_3

    :cond_e
    :goto_4
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Lnet/sf/saxon/expr/FilterExpression;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/Expression;

    invoke-direct {v0, v1, v4}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    move-object v1, v0

    goto :goto_4

    :cond_f
    invoke-virtual {p1}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/expr/SlashExpression;

    if-nez v0, :cond_10

    return-object v2

    :cond_10
    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    check-cast p1, Lnet/sf/saxon/expr/SlashExpression;

    iget-boolean p0, p0, Lnet/sf/saxon/expr/SlashExpression;->q:Z

    iput-boolean p0, p1, Lnet/sf/saxon/expr/SlashExpression;->q:Z

    return-object p1
.end method

.method public toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getLeadingSteps()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getLastStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v2, v0, Lnet/sf/saxon/expr/ItemChecker;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lnet/sf/saxon/expr/ItemChecker;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v2, v1, Lnet/sf/saxon/expr/VennExpression;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/expr/VennExpression;

    iget v3, v2, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance p0, Lnet/sf/saxon/expr/SlashExpression;

    new-instance v1, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v1}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v2}, Lnet/sf/saxon/expr/BinaryExpression;->getLhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance v1, Lnet/sf/saxon/expr/SlashExpression;

    new-instance v3, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v3}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v2}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance v0, Lnet/sf/saxon/expr/VennExpression;

    iget v2, v2, Lnet/sf/saxon/expr/BinaryExpression;->operator:I

    invoke-direct {v0, p0, v2, v1}, Lnet/sf/saxon/expr/VennExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/VennExpression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/pattern/NodeTestPattern;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/type/ErrorType;

    if-eqz p0, :cond_3

    return-object v2

    :cond_2
    instance-of v3, v2, Lnet/sf/saxon/pattern/GeneralNodePattern;

    if-eqz v3, :cond_3

    new-instance p1, Lnet/sf/saxon/pattern/GeneralNodePattern;

    invoke-virtual {v2}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/pattern/GeneralNodePattern;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    :cond_3
    instance-of p0, v0, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz p0, :cond_5

    move-object p0, v0

    check-cast p0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getActionExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lnet/sf/saxon/expr/AxisExpression;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/16 v3, 0x9

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_6

    invoke-static {v1}, Lnet/sf/saxon/pattern/PatternMaker;->getAxisForPathStep(Lnet/sf/saxon/expr/Expression;)I

    move-result v3

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    :cond_6
    new-instance p1, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;

    invoke-direct {p1, v2, p0, v3}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;I)V

    return-object p1
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->parenthesizeShort(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->parenthesizeShort(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->parenthesize(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->parenthesize(Lnet/sf/saxon/expr/Expression;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tryToMakeAbsolute()Lnet/sf/saxon/expr/SlashExpression;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getFirstStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    instance-of v1, v0, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/AxisExpression;->getContextItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v1

    if-ne v1, v2, :cond_2

    new-instance v0, Lnet/sf/saxon/expr/RootExpression;

    invoke-direct {v0}, Lnet/sf/saxon/expr/RootExpression;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    new-instance v1, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v1}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/SlashExpression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->makePathExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/SlashExpression;

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    check-cast v0, Lnet/sf/saxon/expr/SlashExpression;

    return-object v0

    :cond_2
    instance-of v1, v0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    if-eqz v1, :cond_4

    check-cast v0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/SlashExpression;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/SlashExpression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/SlashExpression;->tryToMakeAbsolute()Lnet/sf/saxon/expr/SlashExpression;

    move-result-object v1

    if-eqz v1, :cond_4

    if-ne v1, v0, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getRemainingSteps()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/expr/sort/DocumentSorter;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/sort/DocumentSorter;-><init>(Lnet/sf/saxon/expr/Expression;)V

    new-instance v1, Lnet/sf/saxon/expr/SlashExpression;

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v1

    :cond_4
    return-object v3
.end method

.method public tryToMakeSorted(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v3, v1, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    check-cast v1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v5, v1, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz v5, :cond_3

    check-cast v1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    new-instance v4, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v4}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/AxisExpression;

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/AxisExpression;->setAxis(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    new-instance v6, Lnet/sf/saxon/expr/parser/RebindingMap;

    invoke-direct {v6}, Lnet/sf/saxon/expr/parser/RebindingMap;-><init>()V

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-static {v4, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unfilteredExpression(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/AxisExpression;->setAxis(I)V

    new-instance v2, Lnet/sf/saxon/expr/FilterExpression;

    invoke-direct {v2, v4, v1}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v0, p2, v1}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Lnet/sf/saxon/expr/SlashExpression;

    new-instance v0, Lnet/sf/saxon/expr/AxisExpression;

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-direct {v0, v5, v1}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    invoke-direct {p2, v0, v2}, Lnet/sf/saxon/expr/SlashExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, p2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    const-string p0, "Rewrote descendant::X/child::Y as child::*/descendant::Y[parent::X]"

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    move-object v2, p2

    goto :goto_0

    :cond_2
    invoke-static {p0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    const-string p0, "Rewrote descendant::X/child::Y as descendant::Y[parent::X]"

    invoke-virtual {p1, p0, v2}, Lnet/sf/saxon/expr/parser/Optimizer;->trace(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-object v2

    :cond_3
    :goto_1
    return-object v4
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getLhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v4, "/"

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4, v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v4, "XPTY0019"

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->NODE_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2, v4, v6, v3, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/SlashExpression;->setStart(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->setContextSettingExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhs()Lnet/sf/saxon/expr/Operand;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/BinaryExpression;->getRhsExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;

    invoke-virtual {v1}, Lnet/sf/saxon/ma/arrays/SquareArrayConstructor;->getOperanda()Lnet/sf/saxon/expr/oper/OperandArray;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/oper/OperandArray;->getNumberOfOperands()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    const-string v3, "An array constructor appears immediately after \'/\' or \'//\'. Perhaps \'/*[predicate]\' was intended? If not, consider using \'!\' rather than \'/\' to remove this warning."

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/SlashExpression;->simplifyDescendantPath(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/SlashExpression;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/ContextItemExpression;

    const/high16 p2, 0x20000

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/ContextItemExpression;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/expr/AxisExpression;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_6

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public unordered(ZZ)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStart()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/SlashExpression;->setStart(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SlashExpression;->getStep()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SlashExpression;->setStep(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method
