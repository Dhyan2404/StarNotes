.class public final Lnet/sf/saxon/expr/CardinalityChecker;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"


# instance fields
.field public o:I

.field public final p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    iput p2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    iput-object p3, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-void
.end method

.method public static depictSequenceStart(Lnet/sf/saxon/om/SequenceIterator;I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-eqz v2, :cond_2

    add-int/lit8 v3, v1, 0x1

    if-lez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-le v3, p1, :cond_1

    const-string p0, "...) "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v2}, Lnet/sf/saxon/trans/Err;->depict(Lnet/sf/saxon/om/Item;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_2
    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->getCardinality(Lnet/sf/saxon/om/Sequence;)I

    move-result v0

    invoke-static {p1, v0}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/expr/Atomizer;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/Atomizer;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/expr/SingletonAtomizer;

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p1

    invoke-direct {v1, v0, p2, p1}, Lnet/sf/saxon/expr/SingletonAtomizer;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Z)V

    goto :goto_0

    :cond_1
    new-instance v1, Lnet/sf/saxon/expr/CardinalityChecker;

    invoke-direct {v1, p0, p1, p2}, Lnet/sf/saxon/expr/CardinalityChecker;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    :goto_0
    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v1
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    return p0
.end method

.method public computeHashCode()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/UnaryExpression;->computeHashCode()I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/CardinalityChecker;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget v1, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    iget-object v2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-direct {v0, p1, v1, v2}, Lnet/sf/saxon/expr/CardinalityChecker;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    check-cast p1, Lnet/sf/saxon/expr/CardinalityChecker;

    iget p1, p1, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

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

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget v0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An empty sequence is not allowed as the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_0
    return-object v2

    :cond_1
    iget v3, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An empty sequence is required as the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v2

    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A sequence of more than one item is not allowed as the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lnet/sf/saxon/tree/iter/TwoItemIterator;

    invoke-direct {v4, v1, v0}, Lnet/sf/saxon/tree/iter/TwoItemIterator;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/Item;)V

    const/4 v0, 0x2

    invoke-static {v4, v0}, Lnet/sf/saxon/expr/CardinalityChecker;->depictSequenceStart(Lnet/sf/saxon/om/SequenceIterator;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_3
    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/UncheckedXPathException;->getXPathException()Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "check"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget v0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->getOccurrenceIndicator(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1"

    :cond_0
    const-string v1, "card"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

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

    const-string p0, "CheckCardinality"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

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
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getRequiredCardinality()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    return p0
.end method

.method public getRoleLocator()Lnet/sf/saxon/expr/parser/RoleDiagnostic;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "CardinalityChecker"

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result v1

    if-nez v1, :cond_0

    iget v2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    invoke-static {v2}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An empty sequence is not allowed as the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v3, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The only value allowed for the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is an empty sequence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_2

    iget v1, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    invoke-static {v1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A sequence of more than one item is not allowed as the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lnet/sf/saxon/expr/CardinalityChecker;->depictSequenceStart(Lnet/sf/saxon/om/SequenceIterator;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p1}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    new-instance p1, Lnet/sf/saxon/expr/CardinalityCheckingIterator;

    iget v1, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    iget-object v2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lnet/sf/saxon/expr/CardinalityCheckingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;ILnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)V

    return-object p1
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

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget p2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    const v0, 0xe000

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {p2, v0}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p2

    iget v0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    instance-of p2, p1, Lnet/sf/saxon/expr/ItemChecker;

    if-eqz p2, :cond_1

    check-cast p1, Lnet/sf/saxon/expr/ItemChecker;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_1
    return-object p0

    :cond_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not satisfy the cardinality constraints"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->isTypeError()Z

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    instance-of v2, v0, Lnet/sf/saxon/expr/ItemChecker;

    if-eqz v2, :cond_0

    check-cast v0, Lnet/sf/saxon/expr/ItemChecker;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/ItemChecker;->getRequiredType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getImplementationMethod()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    instance-of v2, v1, Lnet/sf/saxon/pattern/DocumentNodeTest;

    if-nez v2, :cond_1

    new-instance v2, Lnet/sf/saxon/event/TypeCheckingFilter;

    invoke-direct {v2, p1}, Lnet/sf/saxon/event/TypeCheckingFilter;-><init>(Lnet/sf/saxon/event/Outputter;)V

    iget p1, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    iget-object v3, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {v2, v1, p1, v3, v4}, Lnet/sf/saxon/event/TypeCheckingFilter;->setRequiredType(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, v2, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    :try_start_0
    invoke-virtual {v2}, Lnet/sf/saxon/event/TypeCheckingFilter;->finalCheck()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_1
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    :goto_0
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    return-void
.end method

.method public setLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-void
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

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iget p0, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    const/16 v1, 0x2000

    const-string v2, ")"

    if-eq p0, v1, :cond_3

    const/16 v1, 0x4000

    if-eq p0, v1, :cond_2

    const/16 v1, 0x6000

    if-eq p0, v1, :cond_1

    const v1, 0xc000

    if-eq p0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "one-or-more("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zero-or-one("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exactly-one("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "must-be-empty("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget p2, p0, Lnet/sf/saxon/expr/CardinalityChecker;->o:I

    const v0, 0xe000

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {p2, v0}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method
