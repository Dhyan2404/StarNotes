.class public Lnet/sf/saxon/expr/instruct/NumberInstruction;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# static fields
.field public static final ANY:I = 0x2

.field public static final LEVEL_NAMES:[Ljava/lang/String;

.field public static final MULTI:I = 0x1

.field public static final SIMPLE:I = 0x3

.field public static final SINGLE:I

.field public static final synthetic s:Z


# instance fields
.field public final n:Lnet/sf/saxon/expr/Operand;

.field public final o:I

.field public p:Lnet/sf/saxon/expr/Operand;

.field public q:Lnet/sf/saxon/expr/Operand;

.field public r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "any"

    const-string v1, "simple"

    const-string v2, "single"

    const-string v3, "multi"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->LEVEL_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V
    .locals 5

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->r:Z

    new-instance v1, Lnet/sf/saxon/expr/Operand;

    new-instance v2, Lnet/sf/saxon/expr/OperandRole;

    sget-object v3, Lnet/sf/saxon/expr/OperandUsage;->NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_NODE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v2, v0, v3, v4}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    invoke-direct {v1, p0, p1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v1, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->n:Lnet/sf/saxon/expr/Operand;

    iput p2, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->o:I

    if-eqz p3, :cond_0

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p2, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p3, p2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->p:Lnet/sf/saxon/expr/Operand;

    :cond_0
    if-eqz p4, :cond_1

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p2, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p4, p2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->q:Lnet/sf/saxon/expr/Operand;

    :cond_1
    invoke-static {p3}, Lnet/sf/saxon/pattern/Pattern;->patternContainsVariable(Lnet/sf/saxon/pattern/Pattern;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p4}, Lnet/sf/saxon/pattern/Pattern;->patternContainsVariable(Lnet/sf/saxon/pattern/Pattern;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->r:Z

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 1

    iget p0, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->o:I

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const p0, 0xe000

    return p0

    :cond_0
    const/16 p0, 0x6000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 5

    new-instance v0, Lnet/sf/saxon/expr/instruct/NumberInstruction;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, v1, p1}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->d(Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget v2, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->o:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->getCount()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->e(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->getFrom()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->e(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/sf/saxon/expr/instruct/NumberInstruction;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public final d(Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final e(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "nodeNum"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    sget-object v0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->LEVEL_NAMES:[Ljava/lang/String;

    iget v1, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->o:I

    aget-object v0, v0, v1

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "select"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->p:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_0

    const-string v0, "count"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->getCount()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->q:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->getFrom()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCount()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->p:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/pattern/Pattern;

    :goto_0
    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "xsl:number"

    return-object p0
.end method

.method public getFrom()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->q:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/pattern/Pattern;

    :goto_0
    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->o:I

    return p0
.end method

.method public getSelect()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    iget v2, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->o:I

    const-wide/16 v9, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 p0, 0x3

    if-eq v2, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4, p1}, Lnet/sf/saxon/tree/util/Navigator;->getNumberSimple(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)I

    move-result p0

    int-to-long p0, p0

    cmp-long v1, p0, v9

    if-eqz v1, :cond_4

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->getCount()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->getFrom()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v6

    iget-boolean v8, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->r:Z

    move-object v3, p0

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Lnet/sf/saxon/tree/util/Navigator;->getNumberAny(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;Z)I

    move-result p0

    int-to-long p0, p0

    cmp-long v1, p0, v9

    if-eqz v1, :cond_4

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->getCount()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->getFrom()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-static {v4, v1, p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->getNumberMulti(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->getCount()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NumberInstruction;->getFrom()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-static {v4, v1, p0, p1}, Lnet/sf/saxon/tree/util/Navigator;->getNumberSingle(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)I

    move-result p0

    int-to-long p0, p0

    cmp-long v1, p0, v9

    if-eqz v1, :cond_4

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    new-instance p0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    invoke-direct {p0, v0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->n:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->p:Lnet/sf/saxon/expr/Operand;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/NumberInstruction;->q:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1, v2}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandSparseList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getTargetEdition()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/expr/parser/Optimizer;->optimizeNumberInstruction(Lnet/sf/saxon/expr/instruct/NumberInstruction;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object p0
.end method
