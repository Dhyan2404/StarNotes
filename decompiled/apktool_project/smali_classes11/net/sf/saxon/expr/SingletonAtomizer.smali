.class public final Lnet/sf/saxon/expr/SingletonAtomizer;
.super Lnet/sf/saxon/expr/UnaryExpression;
.source "SourceFile"


# instance fields
.field public final o:Z

.field public final p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;-><init>(Lnet/sf/saxon/expr/Expression;)V

    iput-boolean p3, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->o:Z

    iput-object p2, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p2, v0, p0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v1, :cond_0

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p2, v0, p0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    if-eq p0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->setAtomized()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->o:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x6000

    return p0

    :cond_0
    const/16 p0, 0x4000

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/UnaryExpression;->computeSpecialProperties()I

    move-result p0

    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/SingletonAtomizer;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-boolean v2, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->o:Z

    invoke-direct {v0, p1, v1, v2}, Lnet/sf/saxon/expr/SingletonAtomizer;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Z)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/SingletonAtomizer;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4
    :try_start_0
    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v4
    :try_end_0
    .catch Lnet/sf/saxon/expr/instruct/TerminationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/functions/Error$UserDefinedXPathException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-interface {v4}, Lnet/sf/saxon/om/AtomicSequence;->getLength()I

    move-result v5

    add-int/2addr v1, v5

    const/4 v5, 0x1

    if-le v1, v5, :cond_1

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A sequence of more than one item is not allowed as the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    .line 7
    invoke-virtual {v7}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-virtual {v7, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lnet/sf/saxon/expr/CardinalityChecker;->depictSequenceStart(Lnet/sf/saxon/om/SequenceIterator;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    .line 8
    invoke-virtual {v7}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {p0, v6, v7, p1}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_1
    if-ne v1, v5, :cond_0

    .line 10
    invoke-interface {v4}, Lnet/sf/saxon/om/AtomicSequence;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    if-nez v1, :cond_2

    .line 12
    throw v0

    .line 13
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Failed while atomizing the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    .line 15
    invoke-virtual {v2, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    .line 16
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 17
    throw v2

    :catch_1
    move-exception p0

    .line 18
    throw p0

    :cond_3
    if-nez v1, :cond_4

    .line 19
    iget-boolean p1, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->o:Z

    if-nez p1, :cond_4

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An empty sequence is not allowed as the "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    .line 21
    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {p0, p1, v0, v2}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_4
    return-object v3
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "atomSing"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-boolean v0, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "card"

    const-string v1, "?"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/SingletonAtomizer;->getRole()Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    move-result-object v0

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

    const-string p0, "atomizeSingleton"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    instance-of v1, p0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v1, :cond_5

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v1

    if-nez v0, :cond_3

    sget-object v0, Lnet/sf/saxon/expr/Atomizer;->STRING_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_2
    sget-object v0, Lnet/sf/saxon/expr/Atomizer;->UNTYPED_IF_UNTYPED_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_3
    sget-object v0, Lnet/sf/saxon/expr/Atomizer;->UNTYPED_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0

    :cond_4
    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getAtomizedItemType()Lnet/sf/saxon/type/PlainType;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getRole()Lnet/sf/saxon/expr/parser/RoleDiagnostic;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "SingletonAtomizer"

    return-object p0
.end method

.method public isAllowEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->o:Z

    return p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/UnaryExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-ne p1, p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    return-object p1
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

    instance-of v1, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/value/AtomicValue;

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

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resetStaticProperties(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->o:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An empty sequence is not allowed as the "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/expr/SingletonAtomizer;->p:Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/expr/Expression;->typeError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p2

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/sf/saxon/type/ItemType;->isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result p1

    if-nez p1, :cond_5

    instance-of p1, v0, Lnet/sf/saxon/ma/map/MapType;

    const-string p2, "FOTY0013"

    if-nez p1, :cond_4

    instance-of p1, v0, Lnet/sf/saxon/type/FunctionItemType;

    if-eqz p1, :cond_3

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Cannot atomize a function item"

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Cannot atomize an element that is defined in the schema to have element-only content"

    const-string v0, "FOTY0012"

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot atomize a map ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/SingletonAtomizer;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw p1

    :cond_5
    return-object p0
.end method
