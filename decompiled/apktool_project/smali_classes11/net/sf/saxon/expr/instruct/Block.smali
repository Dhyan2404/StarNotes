.class public Lnet/sf/saxon/expr/instruct/Block;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"


# instance fields
.field public final n:[Lnet/sf/saxon/expr/Operand;

.field public o:Z


# direct methods
.method public constructor <init>([Lnet/sf/saxon/expr/Expression;)V
    .locals 6

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lnet/sf/saxon/expr/Operand;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Block;->n:[Lnet/sf/saxon/expr/Operand;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/Block;->n:[Lnet/sf/saxon/expr/Operand;

    new-instance v3, Lnet/sf/saxon/expr/Operand;

    aget-object v4, p1, v1

    sget-object v5, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v3, p0, v4, v5}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static makeBlock(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    .line 16
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Expression;

    return-object p0

    .line 20
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    .line 21
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/Expression;

    .line 22
    new-instance v0, Lnet/sf/saxon/expr/instruct/Block;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public static makeBlock(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    if-eqz p0, :cond_9

    .line 1
    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_8

    .line 2
    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/Block;

    if-nez v0, :cond_3

    instance-of v1, p1, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 4
    new-instance p0, Lnet/sf/saxon/expr/instruct/Block;

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    .line 5
    :cond_3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    .line 7
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_4
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_5
    instance-of p0, p1, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz p0, :cond_6

    .line 10
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/Operand;

    .line 11
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lnet/sf/saxon/expr/Expression;

    .line 14
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/Expression;

    .line 15
    new-instance p1, Lnet/sf/saxon/expr/instruct/Block;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_8
    :goto_3
    return-object p0

    :cond_9
    :goto_4
    return-object p1
.end method

.method public static neverReturnsTypedNodes(Lnet/sf/saxon/expr/instruct/Instruction;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v1, v2, :cond_1

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    if-eq v0, v2, :cond_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public checkForUpdatingSubexpressions()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->isNotAllowedInUpdatingContext(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    const-string v4, "XUST0001"

    const-string v5, "If any subexpression is updating, then all must be updating"

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, v5, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, v5, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_5
    return-void
.end method

.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->operands()Ljava/lang/Iterable;

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

.method public computeCardinality()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x2000

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    invoke-static {v0, v2}, Lnet/sf/saxon/value/Cardinality;->sum(II)I

    move-result v0

    const v2, 0x8000

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public computeSpecialProperties()I
    .locals 9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, 0xdff0000

    return p0

    :cond_0
    invoke-super {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->computeSpecialProperties()I

    move-result v0

    iget-boolean v1, p0, Lnet/sf/saxon/expr/instruct/Block;->o:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->operands()Ljava/lang/Iterable;

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
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    invoke-virtual {p0, v7}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/AxisExpression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/AxisExpression;->getAxis()I

    move-result v1

    if-ne v1, v3, :cond_8

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

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

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/expr/instruct/Block;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/Block;->o:Z

    iput-boolean v0, p1, Lnet/sf/saxon/expr/instruct/Block;->o:Z

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public final d(I)Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Block;->n:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/expr/instruct/Block;->g(Ljava/util/List;Ljava/util/List;)V

    check-cast v3, Lnet/sf/saxon/expr/instruct/Block;

    invoke-virtual {v3, p1}, Lnet/sf/saxon/expr/instruct/Block;->e(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    instance-of v4, v3, Lnet/sf/saxon/expr/Literal;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v5

    instance-of v5, v5, Lnet/sf/saxon/value/IntegerRange;

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    :goto_2
    invoke-interface {v3}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/expr/instruct/Block;->g(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/expr/instruct/Block;->g(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->operands()Ljava/lang/Iterable;

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

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "sequence"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->operands()Ljava/lang/Iterable;

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

.method public final g(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/Expression;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    invoke-direct {v0, p1}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "sequence"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/expr/instruct/MessageInstr;

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1, v3, v0}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    :goto_1
    instance-of v1, v3, Lnet/sf/saxon/type/AnyItemType;

    if-eqz v1, :cond_2

    return-object v3

    :cond_2
    move-object v1, v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public getOperanda()[Lnet/sf/saxon/expr/Operand;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Block;->n:[Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->isInstruction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/type/UType;->ANY:Lnet/sf/saxon/type/UType;

    if-ne v0, v2, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Block"

    return-object p0
.end method

.method public final h(ILnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Block;->n:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public hasVariableBinding(Lnet/sf/saxon/expr/Binding;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/expr/instruct/LocalParam;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Block;->n:[Lnet/sf/saxon/expr/Operand;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public implementsStaticTypeCheck()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCandidateForSharedAppend()Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/VariableReference;

    if-nez v1, :cond_1

    instance-of v0, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVacuousExpression()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->isVacuousExpression()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/instruct/BlockIterator;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Block;->n:[Lnet/sf/saxon/expr/Operand;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/expr/instruct/BlockIterator;-><init>([Lnet/sf/saxon/expr/Operand;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0
.end method

.method public final mayCreateNewNodes()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->someOperandCreatesNewNodes()Z

    move-result p0

    return p0
.end method

.method public mergeAdjacentTextInstructions()Lnet/sf/saxon/expr/Expression;
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/expr/instruct/ValueOf;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/ValueOf;->isDisableOutputEscaping()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    aput-boolean v4, v0, v2

    if-lez v2, :cond_1

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, -0x1

    aget-boolean v4, v0, v4

    if-eqz v4, :cond_1

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v1

    move-object v5, v3

    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    aget-boolean v6, v0, v4

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v5, :cond_3

    const-string v5, ""

    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/instruct/ValueOf;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/StringLiteral;->getString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    new-instance v6, Lnet/sf/saxon/expr/instruct/ValueOf;

    new-instance v7, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v7, v5}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v1, v1}, Lnet/sf/saxon/expr/instruct/ValueOf;-><init>(Lnet/sf/saxon/expr/Expression;ZZ)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v3

    :cond_5
    invoke-virtual {p0, v4}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    new-instance p0, Lnet/sf/saxon/expr/instruct/ValueOf;

    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    invoke-direct {v0, v5}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v1}, Lnet/sf/saxon/expr/instruct/ValueOf;-><init>(Lnet/sf/saxon/expr/Expression;ZZ)V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {v2}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_8
    return-object p0
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

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Block;->n:[Lnet/sf/saxon/expr/Operand;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimizeChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->operands()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    move v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v3, v1, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz v3, :cond_2

    :cond_1
    :goto_1
    move p1, v2

    goto :goto_2

    :cond_2
    instance-of v3, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/value/IntegerRange;

    if-nez v3, :cond_0

    if-nez v0, :cond_1

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move p1, p2

    :goto_2
    if-eqz p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Block;->e(Ljava/util/List;)V

    invoke-static {p1}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object p1

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result p1

    if-ne p1, v2, :cond_7

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    :try_start_0
    instance-of v2, v1, Lnet/sf/saxon/expr/instruct/TailCallReturner;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/expr/instruct/TailCallReturner;

    invoke-interface {v2, p1, p2}, Lnet/sf/saxon/expr/instruct/TailCallReturner;->processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_1
    return-object v1
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v4, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lnet/sf/saxon/expr/instruct/Block;->h(ILnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-static {v5}, Lnet/sf/saxon/expr/Literal;->isAtomic(Lnet/sf/saxon/expr/Expression;)Z

    move-result v5

    if-nez v5, :cond_0

    move v4, v1

    :cond_0
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    instance-of v5, v5, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz v5, :cond_1

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-static {v5}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v2

    if-ne v2, v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->getOperanda()[Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_5
    if-eqz v3, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Block;->e(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lnet/sf/saxon/expr/Expression;

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Expression;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    new-instance v0, Lnet/sf/saxon/expr/instruct/Block;

    invoke-direct {v0, v2}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Block;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/value/AtomicValue;

    :goto_4
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Block;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-instance v1, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {v1, v0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>([Lnet/sf/saxon/om/Item;)V

    invoke-static {v1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object v0

    :cond_9
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Block;->n:[Lnet/sf/saxon/expr/Operand;

    array-length p0, p0

    return p0
.end method

.method public staticTypeCheck(Lnet/sf/saxon/value/SequenceType;ZLnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p4}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p2

    invoke-static {p2}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/expr/FirstItemExpression;->makeFirstItemExpression(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p3, p4}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/Block;->n:[Lnet/sf/saxon/expr/Operand;

    array-length p2, p2

    new-array p2, p2, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v1

    const v2, 0xe000

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-static {v1, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/Block;->n:[Lnet/sf/saxon/expr/Operand;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v0, v3, v1, p3, p4}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    aput-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p4, Lnet/sf/saxon/expr/instruct/Block;

    invoke-direct {p4, p2}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, p4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-boolean p2, p0, Lnet/sf/saxon/expr/instruct/Block;->o:Z

    iput-boolean p2, p4, Lnet/sf/saxon/expr/instruct/Block;->o:Z

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p2

    invoke-virtual {p4}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    invoke-static {p1, v0}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result p1

    if-nez p1, :cond_4

    and-int p1, p2, v0

    if-eqz p1, :cond_3

    invoke-static {p4, p2, p3}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The required cardinality of the "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lnet/sf/saxon/value/Cardinality;->describe(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", but the supplied cardinality is "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->describe(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw p1

    :cond_4
    return-object p4
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Block;->d(I)Lnet/sf/saxon/expr/Expression;

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

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/Block;->o:Z

    :cond_0
    return-object p0
.end method
