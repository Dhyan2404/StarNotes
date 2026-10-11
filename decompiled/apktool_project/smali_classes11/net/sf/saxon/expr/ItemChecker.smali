.class public final Lnet/sf/saxon/expr/ItemChecker;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"


# instance fields
.field public final o:Lnet/sf/saxon/type/ItemType;

.field public final p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    iput-object p3, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/ItemChecker;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/ItemChecker;->e(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method private synthetic e(Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/Item;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-interface {v0, p3, p1}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p3, p1}, Lnet/sf/saxon/type/BuiltInAtomicType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v1, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0, v1, p3, p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p3, p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    const-string p1, "XPDY0050"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p3, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    new-instance p0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {p0, p3}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw p0
.end method


# virtual methods
.method public computeHashCode()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/UnaryExpression;->computeHashCode()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/ItemChecker;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    iget-object v2, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v0, p1, v1, v2}, Lnet/sf/saxon/expr/ItemChecker;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    check-cast p1, Lnet/sf/saxon/expr/ItemChecker;

    iget-object p1, p1, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-interface {v3, v1, v0}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    iget-object v3, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-interface {v3}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/type/UType;->STRING:Lnet/sf/saxon/type/UType;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v3, v1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v3, v1, v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return-object v1

    :cond_3
    iget-object v3, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v4, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v3, v4, v1, v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "XPDY0050"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/Expression;->dynamicError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    :goto_0
    return-object v2
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "treat"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "as"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->save()Ljava/lang/String;

    move-result-object v0

    const-string v1, "diag"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "treatAs"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x17

    goto :goto_0

    :cond_0
    const/16 p0, 0x16

    :goto_0
    return p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/expr/ItemChecker$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    instance-of v1, p0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v1, :cond_2

    new-instance v1, Lnet/sf/saxon/pattern/CombinedNodeTest;

    check-cast p0, Lnet/sf/saxon/pattern/NodeTest;

    const/16 v2, 0x17

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {v1, p0, v2, v0}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    return-object v1

    :cond_2
    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getRequiredType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getRoleLocator()Lnet/sf/saxon/expr/parser/RoleDiagnostic;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/type/UType;->fromTypeCode(I)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ItemChecker"

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    new-instance v2, Lcom/sunia/HTREnginev2/dqi;

    invoke-direct {v2, p0, p1, v0}, Lcom/sunia/HTREnginev2/dqi;-><init>(Lnet/sf/saxon/expr/ItemChecker;Lnet/sf/saxon/type/TypeHierarchy;Lnet/sf/saxon/expr/Expression;)V

    new-instance p0, Lnet/sf/saxon/expr/ItemCheckingIterator;

    invoke-direct {p0, v1, v2}, Lnet/sf/saxon/expr/ItemCheckingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq p1, p2, :cond_1

    sget-object p2, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/CardinalityChecker;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/expr/CardinalityChecker;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/CardinalityChecker;->getRequiredCardinality()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0xe000

    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getImplementationMethod()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    instance-of v2, v2, Lnet/sf/saxon/pattern/DocumentNodeTest;

    if-nez v2, :cond_1

    new-instance v2, Lnet/sf/saxon/event/TypeCheckingFilter;

    invoke-direct {v2, p1}, Lnet/sf/saxon/event/TypeCheckingFilter;-><init>(Lnet/sf/saxon/event/Outputter;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    iget-object v3, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v2, p1, v1, v3, p0}, Lnet/sf/saxon/event/TypeCheckingFilter;->setRequiredType(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, v2, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v2}, Lnet/sf/saxon/event/TypeCheckingFilter;->finalCheck()V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    :goto_1
    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    instance-of v1, v1, Lnet/sf/saxon/type/AnyItemType;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") treat as "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/expr/instruct/Block;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Block;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    new-instance v3, Lnet/sf/saxon/expr/ItemChecker;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    iget-object v4, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    iget-object v5, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v3, v2, v4, v5}, Lnet/sf/saxon/expr/ItemChecker;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/instruct/Block;

    const/4 v2, 0x0

    new-array v2, v2, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/sf/saxon/expr/Expression;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/Block;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p2, v3, v2}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v3, v4, :cond_7

    sget-object v4, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v4, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p2, v2, v3}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    :cond_4
    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, v0, Lnet/sf/saxon/expr/Literal;

    if-nez v1, :cond_6

    iget-object v1, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v2, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v1, v2, v0, p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The only value that can pass type-checking is an empty sequence. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v1, p0, Lnet/sf/saxon/expr/ItemChecker;->o:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p1, v1, v0, p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/ItemChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->isTypeError()Z

    move-result p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p2

    :cond_6
    :goto_1
    return-object p0

    :cond_7
    :goto_2
    return-object v0
.end method
