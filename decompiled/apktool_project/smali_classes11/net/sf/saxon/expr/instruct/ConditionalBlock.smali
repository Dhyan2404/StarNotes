.class public Lnet/sf/saxon/expr/instruct/ConditionalBlock;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"


# instance fields
.field public final n:[Lnet/sf/saxon/expr/Operand;

.field public o:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/expr/Expression;

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;-><init>([Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public constructor <init>([Lnet/sf/saxon/expr/Expression;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    .line 2
    array-length v0, p1

    new-array v0, v0, [Lnet/sf/saxon/expr/Operand;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->n:[Lnet/sf/saxon/expr/Operand;

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->n:[Lnet/sf/saxon/expr/Operand;

    new-instance v2, Lnet/sf/saxon/expr/Operand;

    aget-object v3, p1, v0

    sget-object v4, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v2, p0, v3, v4}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    aput-object v2, v1, v0

    .line 5
    aget-object v1, p1, v0

    instance-of v1, v1, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->n:[Lnet/sf/saxon/expr/Operand;

    aget-object v1, v1, v0

    invoke-virtual {v4}, Lnet/sf/saxon/expr/OperandRole;->withConstrainedClass()Lnet/sf/saxon/expr/OperandRole;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/Operand;->setOperandRole(Lnet/sf/saxon/expr/OperandRole;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic d(Ljava/util/List;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->e(Ljava/util/List;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    return-void
.end method

.method public static synthetic e(Ljava/util/List;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public computeSpecialProperties()I
    .locals 9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, 0xdff0000

    return p0

    :cond_0
    invoke-super {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->computeSpecialProperties()I

    move-result v0

    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->o:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->operands()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    move v4, v3

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    instance-of v8, v5, Lnet/sf/saxon/expr/AxisExpression;

    if-nez v8, :cond_3

    move v1, v7

    move v3, v1

    move v4, v3

    goto :goto_1

    :cond_3
    check-cast v5, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v5

    if-eq v5, v6, :cond_4

    move v3, v7

    :cond_4
    sget-object v6, Lnet/sf/saxon/om/AxisInfo;->isSubtreeAxis:[Z

    aget-boolean v5, v6, v5

    if-nez v5, :cond_2

    move v4, v7

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_1
    if-eqz v1, :cond_8

    const/high16 v1, 0x1810000

    or-int/2addr v0, v1

    if-eqz v3, :cond_6

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    :cond_6
    if-eqz v4, :cond_7

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v1

    if-ne v1, v3, :cond_8

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result p0

    if-ne p0, v6, :cond_8

    const/high16 p0, 0x20000

    or-int/2addr v0, p0

    :cond_8
    return v0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/expr/instruct/ConditionalBlock;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;-><init>([Lnet/sf/saxon/expr/Expression;)V

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->o:Z

    iput-boolean v0, p1, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->o:Z

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "condSeq"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public final getCardinality()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x2000

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    invoke-static {v0, v2}, Lnet/sf/saxon/value/Cardinality;->sum(II)I

    move-result v0

    const v2, 0xe000

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public getChildExpression(I)Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->n:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "condSeq"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v3, v0, Lnet/sf/saxon/type/AnyItemType;

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ConditionalBlock"

    return-object p0
.end method

.method public final mayCreateNewNodes()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->someOperandCreatesNewNodes()Z

    move-result p0

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->n:[Lnet/sf/saxon/expr/Operand;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    if-eq p2, p0, :cond_0

    return-object p2

    :cond_0
    const/4 p2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, p2

    move v5, v0

    move v2, v1

    move v4, v2

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    instance-of v6, v6, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;

    if-nez v6, :cond_4

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    instance-of v6, v6, Lnet/sf/saxon/expr/instruct/OnNonEmptyExpr;

    if-nez v6, :cond_4

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v3

    sget-object v6, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    sget-object v7, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v6, v7}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnet/sf/saxon/type/UType;->intersection(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v3

    sget-object v6, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    invoke-virtual {v3, v6}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v3

    invoke-static {v3}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v4, v0

    :cond_1
    const/16 v6, 0x2000

    if-eq v3, v6, :cond_2

    move v5, v1

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v4, v1

    move v5, v4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_2
    if-eqz v5, :cond_9

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    const-string p2, "The result of the sequence constructor will always be empty, so xsl:on-empty instructions will always be evaluated, and xsl:on-non-empty instructions will never be evaluated"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result p2

    if-ge v1, p2, :cond_8

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/instruct/OnNonEmptyExpr;

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;

    if-eqz p2, :cond_7

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_9
    if-eqz v4, :cond_d

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    const-string p2, "The result of the sequence constructor will never be empty, so xsl:on-empty instructions will never be evaluated, and xsl:on-non-empty instructions will always be evaluated"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result p2

    if-ge v1, p2, :cond_c

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;

    if-eqz p2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/instruct/OnNonEmptyExpr;

    if-eqz p2, :cond_b

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/instruct/OnNonEmptyExpr;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_d
    if-ne v2, p2, :cond_10

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->size()I

    move-result p2

    if-ge v1, p2, :cond_f

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;

    if-eqz p2, :cond_e

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_10
    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/d8e;

    invoke-direct {v1, v0, p1, p2}, Lcom/sunia/HTREnginev2/d8e;-><init>(Ljava/util/List;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    new-instance v2, Lnet/sf/saxon/event/SignificantItemDetector;

    invoke-direct {v2, p1, v1}, Lnet/sf/saxon/event/SignificantItemDetector;-><init>(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Action;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->operands()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    :try_start_0
    instance-of v4, v3, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    instance-of v4, v3, Lnet/sf/saxon/expr/instruct/OnNonEmptyExpr;

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/event/SignificantItemDetector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lnet/sf/saxon/expr/instruct/OnNonEmptyExpr;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_3
    invoke-virtual {v2}, Lnet/sf/saxon/event/SignificantItemDetector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/instruct/OnEmptyExpr;

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->n:[Lnet/sf/saxon/expr/Operand;

    array-length p0, p0

    return p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->getChildExpression(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ...)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/instruct/Block;->neverReturnsTypedNodes(Lnet/sf/saxon/expr/instruct/Instruction;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/ConditionalBlock;->o:Z

    :cond_0
    return-object p0
.end method
