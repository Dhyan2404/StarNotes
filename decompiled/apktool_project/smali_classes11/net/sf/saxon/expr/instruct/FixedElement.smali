.class public Lnet/sf/saxon/expr/instruct/FixedElement;
.super Lnet/sf/saxon/expr/instruct/ElementCreator;
.source "SourceFile"


# instance fields
.field protected namespaceBindings:Lnet/sf/saxon/om/NamespaceMap;

.field public final r:Lnet/sf/saxon/om/NodeName;

.field public s:Lnet/sf/saxon/type/ItemType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamespaceMap;ZZLnet/sf/saxon/type/SchemaType;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/ElementCreator;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->namespaceBindings:Lnet/sf/saxon/om/NamespaceMap;

    iput-boolean p3, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->p:Z

    iput-boolean p4, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->q:Z

    invoke-virtual {p0, p6, p5}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setValidationAction(ILnet/sf/saxon/type/SchemaType;)V

    if-nez p5, :cond_0

    const/4 p1, 0x3

    if-ne p6, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    return-void
.end method


# virtual methods
.method public checkContentSequence(Lnet/sf/saxon/expr/StaticContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/instruct/ElementCreator;->checkContentSequence(Lnet/sf/saxon/expr/StaticContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/expr/instruct/FixedElement;->g(Lnet/sf/saxon/expr/instruct/FixedElement;Lnet/sf/saxon/expr/StaticContext;ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->s:Lnet/sf/saxon/type/ItemType;

    return-void
.end method

.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/type/SimpleType;

    const-string v1, "Element "

    const/4 v2, 0x1

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v0}, Lnet/sf/saxon/type/ComplexType;->isSimpleContent()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/expr/instruct/Block;

    new-array v3, v2, [Lnet/sf/saxon/expr/Expression;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-direct {v0, v3}, Lnet/sf/saxon/expr/instruct/Block;-><init>([Lnet/sf/saxon/expr/Expression;)V

    invoke-interface {p1, v0, v2}, Lnet/sf/saxon/type/SchemaType;->analyzeContentExpression(Lnet/sf/saxon/expr/Expression;I)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    :try_start_0
    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result p2

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/type/ComplexType;

    invoke-interface {v0, p2, v2}, Lnet/sf/saxon/type/ComplexType;->getElementParticleType(IZ)Lnet/sf/saxon/type/SchemaType;

    move-result-object p2
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p2, :cond_2

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not permitted in the content model of the complex type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "XTTE1510"

    goto :goto_0

    :cond_1
    const-string p0, "XQDY0027"

    :goto_0
    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p2

    :cond_2
    instance-of p1, p2, Lnet/sf/saxon/type/AnyType;

    if-eqz p1, :cond_3

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not permitted here: the containing element has a complex type with simple content"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_5
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not permitted here: the containing element is of simple type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p2
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 8

    new-instance v7, Lnet/sf/saxon/expr/instruct/FixedElement;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->namespaceBindings:Lnet/sf/saxon/om/NamespaceMap;

    iget-boolean v3, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->p:Z

    iget-boolean v4, p0, Lnet/sf/saxon/expr/instruct/ElementCreator;->q:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationAction()I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/expr/instruct/FixedElement;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamespaceMap;ZZLnet/sf/saxon/type/SchemaType;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {v7, p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->setContentExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v7}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v7
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "elem"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nsuri"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ElementCreator;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "d"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "l"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "flags"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->namespaceBindings:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->namespaceBindings:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "#"

    goto :goto_1

    :cond_4
    move-object v5, v4

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "namespaces"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/ElementCreator;->d(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public final g(Lnet/sf/saxon/expr/instruct/FixedElement;Lnet/sf/saxon/expr/StaticContext;ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-interface {p5, v0}, Lnet/sf/saxon/om/NodeName;->obtainFingerprint(Lnet/sf/saxon/om/NamePool;)I

    move-result v0

    const-string v1, "XQDY0027"

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p4, :cond_d

    const-string p4, "XTTE1515"

    const-string v5, "There is no global element declaration for "

    if-ne p3, v4, :cond_8

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getElementDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object p3

    const-string v6, "XTTE1512"

    if-nez p3, :cond_1

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p3

    invoke-virtual {p3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", so strict validation will fail"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "XQDY0084"

    :goto_0
    invoke-virtual {p0, v6}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_1
    invoke-interface {p3}, Lnet/sf/saxon/type/SchemaDeclaration;->isAbstract()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The element declaration for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p3

    invoke-virtual {p3}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is abstract, so strict validation will fail"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p2

    if-eqz p2, :cond_2

    move-object v1, v6

    :cond_2
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_3
    invoke-interface {p3}, Lnet/sf/saxon/type/SchemaDeclaration;->getType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p5

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/instruct/FixedElement;->h(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v6, v5

    goto :goto_1

    :cond_4
    move-object v6, p5

    :goto_1
    new-instance v7, Lnet/sf/saxon/pattern/CombinedNodeTest;

    new-instance v8, Lnet/sf/saxon/pattern/NameTest;

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p2

    invoke-direct {v8, v4, v0, p2}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    new-instance p2, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-direct {p2, v4, v6, p0, v3}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    invoke-direct {v7, v8, v2, p2}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    if-nez v5, :cond_5

    invoke-interface {p3}, Lnet/sf/saxon/type/SchemaDeclaration;->hasTypeAlternatives()Z

    move-result p2

    if-nez p2, :cond_e

    :cond_5
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p2

    invoke-virtual {p2, v6}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    :try_start_0
    invoke-interface {v6, p6, v4}, Lnet/sf/saxon/type/SchemaType;->analyzeContentExpression(Lnet/sf/saxon/expr/Expression;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_e

    :try_start_1
    invoke-virtual {p0, v5, p5, v3}, Lnet/sf/saxon/Configuration;->checkTypeDerivationIsOK(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/type/SchemaType;I)V
    :try_end_1
    .catch Lnet/sf/saxon/type/SchemaException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The specified xsi:type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not validly derived from the required type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lnet/sf/saxon/type/SchemaType;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p2, "cvc-elt"

    const-string p3, "4.3"

    invoke-virtual {p0, v4, p2, p3}, Lnet/sf/saxon/type/ValidationFailure;->setConstraintReference(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p2

    if-eqz p2, :cond_6

    move-object v1, p4

    :cond_6
    invoke-virtual {p0, v1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string v1, "XTTE1510"

    :cond_7
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_8
    const/4 v6, 0x2

    if-ne p3, v6, :cond_b

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getElementDeclaration(I)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object p3

    if-nez p3, :cond_9

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    new-instance p1, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p0

    invoke-direct {p1, v4, v0, p0}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    move-object v7, p1

    goto/16 :goto_2

    :cond_9
    invoke-interface {p3}, Lnet/sf/saxon/type/SchemaDeclaration;->getType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getValidationOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p3

    invoke-virtual {p3, p2}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    new-instance p3, Lnet/sf/saxon/pattern/CombinedNodeTest;

    new-instance p5, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v5

    invoke-direct {p5, v4, v0, v5}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    new-instance v0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v5

    invoke-direct {v0, v4, v5, p0, v3}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    invoke-direct {p3, p5, v2, v0}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    :try_start_2
    invoke-interface {p2, p6, v4}, Lnet/sf/saxon/type/SchemaType;->analyzeContentExpression(Lnet/sf/saxon/expr/Expression;I)V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, p3

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p2

    if-eqz p2, :cond_a

    move-object v1, p4

    :cond_a
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_b
    const/4 p1, 0x3

    if-ne p3, p1, :cond_c

    new-instance v7, Lnet/sf/saxon/pattern/CombinedNodeTest;

    new-instance p1, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p2

    invoke-direct {p1, v4, v0, p2}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    new-instance p2, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/AnyType;->getInstance()Lnet/sf/saxon/type/AnyType;

    move-result-object p3

    invoke-direct {p2, v4, p3, p0, v3}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    invoke-direct {v7, p1, v2, p2}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_2

    :cond_c
    new-instance v7, Lnet/sf/saxon/pattern/CombinedNodeTest;

    new-instance p1, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p2

    invoke-direct {p1, v4, v0, p2}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    new-instance p2, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object p3

    invoke-direct {p2, v4, p3, p0, v3}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    invoke-direct {v7, p1, v2, p2}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_2

    :cond_d
    new-instance v7, Lnet/sf/saxon/pattern/CombinedNodeTest;

    new-instance p2, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p3

    invoke-direct {p2, v4, v0, p3}, Lnet/sf/saxon/pattern/NameTest;-><init>(IILnet/sf/saxon/om/NamePool;)V

    new-instance p3, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-direct {p3, v4, p4, p0, v3}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    invoke-direct {v7, p2, v2, p3}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    :try_start_3
    invoke-interface {p4, p6, v4}, Lnet/sf/saxon/type/SchemaType;->analyzeContentExpression(Lnet/sf/saxon/expr/Expression;I)V
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_e
    :goto_2
    return-object v7

    :catch_3
    move-exception p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Instruction;->isXSLT()Z

    move-result p2

    if-eqz p2, :cond_f

    const-string v1, "XTTE1540"

    :cond_f
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0
.end method

.method public gatherProperties(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/FixedElement;->getFixedElementName()Lnet/sf/saxon/om/NodeName;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getActiveNamespaces()Lnet/sf/saxon/om/NamespaceMap;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->namespaceBindings:Lnet/sf/saxon/om/NamespaceMap;

    return-object p0
.end method

.method public getElementName(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "element"

    return-object p0
.end method

.method public getFixedElementName()Lnet/sf/saxon/om/NodeName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->s:Lnet/sf/saxon/type/ItemType;

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/sf/saxon/expr/instruct/ElementCreator;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getNewBaseURI(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/type/SchemaType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/instruct/FixedElement;->j(Lnet/sf/saxon/expr/instruct/FixedAttribute;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/expr/instruct/Block;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    if-eqz v3, :cond_1

    check-cast v2, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    invoke-virtual {p0, v2, p1}, Lnet/sf/saxon/expr/instruct/FixedElement;->j(Lnet/sf/saxon/expr/instruct/FixedAttribute;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public final i(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/om/NamespaceMap;)V
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->namespaceBindings:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v0}, Lnet/sf/saxon/om/NamespaceMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/expr/instruct/Block;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    instance-of v4, v1, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    if-eqz v4, :cond_3

    check-cast v1, Lnet/sf/saxon/expr/instruct/FixedAttribute;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/FixedAttribute;->getAttributeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    const-string v4, ""

    invoke-interface {v1, v4}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    sget-object v4, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p1, v1, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v1

    sget-object v4, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq v1, v4, :cond_2

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v0

    :cond_5
    :goto_2
    if-eqz v2, :cond_8

    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->namespaceBindings:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p1}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/om/NamespaceMap;->remove(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    goto :goto_3

    :cond_7
    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->namespaceBindings:Lnet/sf/saxon/om/NamespaceMap;

    :cond_8
    return-void
.end method

.method public final j(Lnet/sf/saxon/expr/instruct/FixedAttribute;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/type/SchemaType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/FixedAttribute;->getAttributeFingerprint()I

    move-result v0

    const/16 v1, 0x281

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->namespaceBindings:Lnet/sf/saxon/om/NamespaceMap;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, ""

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-direct {v0, v1, p0, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/om/QNameException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v2
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

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->contentOp:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-eq p1, p0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public outputNamespaceNodes(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NodeInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->namespaceBindings:Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {p0}, Lnet/sf/saxon/om/NamespaceMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {p2}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lnet/sf/saxon/event/Outputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->isSchemaAware()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->preservingTypes:Z

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}/>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/FixedElement;->r:Lnet/sf/saxon/om/NodeName;

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ParentNodeConstructor;->getContentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}/>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
