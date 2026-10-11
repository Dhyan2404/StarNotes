.class public final Lnet/sf/saxon/expr/instruct/EvaluateInstr;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# instance fields
.field public n:Lnet/sf/saxon/expr/Operand;

.field public final o:Lnet/sf/saxon/value/SequenceType;

.field public p:Lnet/sf/saxon/expr/Operand;

.field public q:Lnet/sf/saxon/expr/Operand;

.field public r:Lnet/sf/saxon/expr/Operand;

.field public s:Lnet/sf/saxon/expr/Operand;

.field public t:Lnet/sf/saxon/expr/Operand;

.field public u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:[Lnet/sf/saxon/expr/instruct/WithParam;

.field public w:Lnet/sf/saxon/expr/Operand;

.field public x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->u:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->x:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->n:Lnet/sf/saxon/expr/Operand;

    :cond_0
    if-eqz p3, :cond_1

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object v0, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p3, v0}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->p:Lnet/sf/saxon/expr/Operand;

    :cond_1
    if-eqz p4, :cond_2

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p3, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p4, p3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->q:Lnet/sf/saxon/expr/Operand;

    :cond_2
    if-eqz p5, :cond_3

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p3, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p5, p3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->r:Lnet/sf/saxon/expr/Operand;

    :cond_3
    if-eqz p6, :cond_4

    new-instance p1, Lnet/sf/saxon/expr/Operand;

    sget-object p3, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {p1, p0, p6, p3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->s:Lnet/sf/saxon/expr/Operand;

    :cond_4
    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->o:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/Expression;)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->j(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->h(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public static synthetic g(Lnet/sf/saxon/sxpath/IndependentContext;Ljava/util/Map;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->i(Lnet/sf/saxon/sxpath/IndependentContext;Ljava/util/Map;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In dynamic expression {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p3}, Lnet/sf/saxon/Controller;->warning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public static synthetic i(Lnet/sf/saxon/sxpath/IndependentContext;Ljava/util/Map;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/value/QNameValue;

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/sxpath/IndependentContext;->declareVariable(Lnet/sf/saxon/value/QNameValue;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object p0

    invoke-virtual {p2}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/XPathVariable;->getLocalSlotNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parameter names supplied to xsl:evaluate must have type xs:QName, not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "XTTE3165"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p1
.end method

.method public static synthetic j(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/expr/LocalVariableReference;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/VariableReference;->getVariableName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/LocalVariableReference;->getBinding()Lnet/sf/saxon/expr/LocalBinding;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/sxpath/XPathVariable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot do document projection when xsl:evaluate is used"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public computeCardinality()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->o:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 9

    new-instance v7, Lnet/sf/saxon/expr/instruct/EvaluateInstr;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getXpath()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->o:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getContextItemExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getBaseUriExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getBaseUriExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    move-object v5, v0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getNamespaceContextExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getNamespaceContextExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    move-object v6, v0

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getSchemaAwareExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v8, v4

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getSchemaAwareExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    move-object v8, v0

    :goto_2
    move-object v0, v7

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, v7}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v7, v0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->u:Ljava/util/Set;

    iput-object v0, v7, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->u:Ljava/util/Set;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-static {v7, v0, p1}, Lnet/sf/saxon/expr/instruct/WithParam;->copy(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/RebindingMap;)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-virtual {v7, v0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->t:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v7, v0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->setOptionsExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->w:Lnet/sf/saxon/expr/Operand;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v7, p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->setDynamicParams(Lnet/sf/saxon/expr/Expression;)V

    :cond_4
    return-object v7
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "evaluate"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->o:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/SequenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->o:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->toAlphaCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "as"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->u:Ljava/util/Set;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->u:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "##"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "schNS"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->x:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "dxns"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "xpath"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getXpath()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getContextItemExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "cxt"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getContextItemExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getBaseUriExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "baseUri"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getBaseUriExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getNamespaceContextExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "nsCxt"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getNamespaceContextExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getSchemaAwareExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "sa"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getSchemaAwareExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_8
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->t:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_9

    const-string v0, "options"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->t:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_9
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->v:[Lnet/sf/saxon/expr/instruct/WithParam;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lnet/sf/saxon/expr/instruct/WithParam;->exportParameters([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/trace/ExpressionPresenter;Z)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->w:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_a

    const-string v0, "wp"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getDynamicParams()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_a
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->v:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-object p0
.end method

.method public getBaseUriExpr()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->q:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getContextItemExpr()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->p:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDynamicParams()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->w:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/16 p0, 0x27f

    return p0
.end method

.method public final getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->o:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceContextExpr()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->r:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSchemaAwareExpr()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->s:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getXpath()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public importSchemaNamespace(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->u:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->u:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->u:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isActualParam(Lnet/sf/saxon/om/StructuredQName;)Z
    .locals 4

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->v:[Lnet/sf/saxon/expr/instruct/WithParam;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/WithParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/lib/Feature;->DISABLE_XSL_EVALUATE:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getXpath()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getBaseUriExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getStaticBaseURIString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getBaseUriExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getContextItemExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {v5, v0}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getNamespaceContextExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getNamespaceContextExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v6, v0}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/NodeInfo;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getSchemaAwareExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v8

    invoke-virtual {v8, v0}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "yes"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v9, :cond_5

    const-string v9, "true"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    const-string v9, "no"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "false"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    const-string v3, "The schema-aware attribute of xsl:evaluate must be yes|no|true|false|0|1"

    invoke-direct {v2, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v3, "XTDE0030"

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v2, v0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v2

    :cond_4
    :goto_2
    move v9, v11

    goto :goto_4

    :cond_5
    :goto_3
    move v9, v10

    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v4, :cond_6

    const/4 v14, 0x4

    goto :goto_5

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    :goto_5
    add-int/2addr v13, v14

    const/16 v14, 0x28

    add-int/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "##"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "##"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_7

    const-string v8, "##"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6, v12}, Lnet/sf/saxon/om/NodeInfo;->generateId(Ljava/lang/StringBuilder;)V

    :cond_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v13

    const-string v15, "xsl:evaluate"

    invoke-virtual {v12, v13, v15}, Lnet/sf/saxon/Controller;->getUserData(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sf/saxon/expr/sort/LFUCache;

    if-nez v13, :cond_8

    new-instance v13, Lnet/sf/saxon/expr/sort/LFUCache;

    const/16 v15, 0x64

    invoke-direct {v13, v15}, Lnet/sf/saxon/expr/sort/LFUCache;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v15

    const-string v7, "xsl:evaluate"

    invoke-virtual {v12, v15, v7, v13}, Lnet/sf/saxon/Controller;->setUserData(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v13, v8}, Lnet/sf/saxon/expr/sort/LFUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    if-eqz v7, :cond_9

    aget-object v15, v7, v11

    check-cast v15, Lnet/sf/saxon/expr/Expression;

    aget-object v16, v7, v10

    check-cast v16, Lnet/sf/saxon/expr/instruct/SlotManager;

    const/16 v17, 0x2

    aget-object v7, v7, v17

    check-cast v7, Ljava/util/Collection;

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_7
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v12, v1, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->w:Lnet/sf/saxon/expr/Operand;

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v12

    invoke-virtual {v12, v0}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v12

    check-cast v12, Lnet/sf/saxon/ma/map/MapItem;

    goto :goto_8

    :cond_a
    const/4 v12, 0x0

    :goto_8
    if-nez v15, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v15

    invoke-virtual {v15}, Lnet/sf/saxon/expr/PackageData;->getHostLanguageVersion()I

    move-result v15

    iget-object v10, v1, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->t:Lnet/sf/saxon/expr/Operand;

    if-nez v10, :cond_b

    new-instance v10, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v10}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    goto :goto_9

    :cond_b
    invoke-virtual {v10}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v10

    invoke-virtual {v10, v0}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v10

    check-cast v10, Lnet/sf/saxon/ma/map/MapItem;

    :goto_9
    new-instance v11, Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-direct {v11, v2}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    new-instance v14, Lcom/sunia/HTREnginev2/uwf;

    invoke-direct {v14, v3, v0}, Lcom/sunia/HTREnginev2/uwf;-><init>(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v11, v14}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setWarningHandler(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v11, v4}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBaseURI(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v4

    invoke-virtual {v11, v4}, Lnet/sf/saxon/sxpath/IndependentContext;->setExecutable(Lnet/sf/saxon/expr/instruct/Executable;)V

    const/16 v4, 0x28

    if-ne v15, v4, :cond_c

    const/16 v4, 0x28

    goto :goto_a

    :cond_c
    sget-object v4, Lnet/sf/saxon/lib/Feature;->XPATH_VERSION_FOR_XSLT:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v2, v4}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_a
    invoke-virtual {v11, v4}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setXPathLanguageLevel(I)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultCollationName(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getNamespaceContextExpr()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v11, v6}, Lnet/sf/saxon/sxpath/IndependentContext;->setNamespaces(Lnet/sf/saxon/om/NodeInfo;)V

    goto :goto_b

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v11, v4}, Lnet/sf/saxon/sxpath/IndependentContext;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lnet/sf/saxon/sxpath/IndependentContext;->setDefaultElementNamespace(Ljava/lang/String;)V

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v4}, Lnet/sf/saxon/style/StylesheetPackage;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v4

    new-instance v6, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v6}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    invoke-virtual {v4}, Lnet/sf/saxon/functions/FunctionLibraryList;->getLibraryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/sf/saxon/functions/FunctionLibrary;

    move-object/from16 v16, v4

    instance-of v4, v14, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    if-eqz v4, :cond_f

    move-object v4, v14

    check-cast v4, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    invoke-virtual {v4}, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;->getNamespace()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v7

    const-string v7, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v4, 0x28

    if-ne v15, v4, :cond_e

    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath40FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath40FunctionSet;

    move-result-object v7

    goto :goto_d

    :cond_e
    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath31FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath31FunctionSet;

    move-result-object v7

    :goto_d
    invoke-virtual {v6, v7}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    goto :goto_f

    :cond_f
    move-object/from16 v18, v7

    :cond_10
    const/16 v4, 0x28

    instance-of v7, v14, Lnet/sf/saxon/style/StylesheetFunctionLibrary;

    if-nez v7, :cond_12

    instance-of v7, v14, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    if-eqz v7, :cond_11

    goto :goto_e

    :cond_11
    invoke-virtual {v6, v14}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    goto :goto_f

    :cond_12
    :goto_e
    new-instance v7, Lnet/sf/saxon/style/PublicStylesheetFunctionLibrary;

    invoke-direct {v7, v14}, Lnet/sf/saxon/style/PublicStylesheetFunctionLibrary;-><init>(Lnet/sf/saxon/functions/FunctionLibrary;)V

    invoke-virtual {v6, v7}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    :goto_f
    move-object/from16 v4, v16

    move-object/from16 v7, v18

    goto :goto_c

    :cond_13
    move-object/from16 v18, v7

    invoke-virtual {v11, v6}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v4

    invoke-virtual {v11, v4}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDecimalFormatManager(Lnet/sf/saxon/trans/DecimalFormatManager;)V

    if-eqz v9, :cond_15

    const-string v4, "allow-any-namespace"

    invoke-static {v4}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v4

    invoke-virtual {v10, v4}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-interface {v4}, Lnet/sf/saxon/om/GroundedValue;->effectiveBooleanValue()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getImportedNamespaces()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v11, v4}, Lnet/sf/saxon/sxpath/IndependentContext;->setImportedSchemaNamespaces(Ljava/util/Set;)V

    goto :goto_10

    :cond_14
    iget-object v4, v1, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->u:Ljava/util/Set;

    invoke-virtual {v11, v4}, Lnet/sf/saxon/sxpath/IndependentContext;->setImportedSchemaNamespaces(Ljava/util/Set;)V

    :cond_15
    :goto_10
    const-string v4, "default-collation"

    invoke-static {v4}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v4

    invoke-virtual {v10, v4}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-interface {v4}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultCollationName(Ljava/lang/String;)V

    :cond_16
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v12, :cond_17

    invoke-virtual {v12}, Lnet/sf/saxon/ma/map/MapItem;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v6

    new-instance v7, Lcom/sunia/HTREnginev2/vwf;

    invoke-direct {v7, v11, v4}, Lcom/sunia/HTREnginev2/vwf;-><init>(Lnet/sf/saxon/sxpath/IndependentContext;Ljava/util/Map;)V

    invoke-static {v6, v7}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v6

    array-length v7, v6

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v7, :cond_19

    aget-object v10, v6, v9

    invoke-virtual {v10}, Lnet/sf/saxon/expr/instruct/WithParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    invoke-virtual {v11, v10}, Lnet/sf/saxon/sxpath/IndependentContext;->declareVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object v14

    invoke-virtual {v14}, Lnet/sf/saxon/sxpath/XPathVariable;->getLocalSlotNumber()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_19
    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-static {v3, v11, v6, v6, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;IILnet/sf/saxon/expr/parser/CodeInjector;)Lnet/sf/saxon/expr/Expression;

    move-result-object v7
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v11}, Lnet/sf/saxon/sxpath/IndependentContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v7, v4}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    new-instance v4, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/16 v9, 0xc

    invoke-direct {v4, v9, v3, v6}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-static {v11}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v9

    invoke-virtual {v2, v6}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v10

    iget-object v6, v1, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->o:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v10, v7, v6, v4, v9}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    sget-object v6, Lnet/sf/saxon/type/Type;->ITEM_TYPE:Lnet/sf/saxon/type/ItemType;

    invoke-static {v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->resolveCallsToCurrentFunction(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v7

    if-nez v7, :cond_1a

    const/4 v10, 0x1

    goto :goto_12

    :cond_1a
    const/4 v10, 0x0

    :goto_12
    invoke-virtual {v2, v6, v10}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v2

    invoke-virtual {v4, v9, v2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, v9, v2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v15

    invoke-virtual {v11}, Lnet/sf/saxon/sxpath/IndependentContext;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/SlotManager;->getNumberOfVariables()I

    move-result v4

    invoke-static {v15, v4, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    if-eqz v8, :cond_1b

    invoke-virtual {v11}, Lnet/sf/saxon/sxpath/IndependentContext;->getDeclaredVariables()Ljava/util/Collection;

    move-result-object v7

    filled-new-array {v15, v2, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v8, v4}, Lnet/sf/saxon/expr/sort/LFUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_1b
    move-object/from16 v7, v18

    goto :goto_13

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Static error in XPath expression supplied to xsl:evaluate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Expression: {"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v2, "XTDE3160"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v0

    :cond_1c
    move-object/from16 v18, v7

    move-object/from16 v2, v16

    :goto_13
    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v4

    if-nez v5, :cond_1d

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    goto :goto_14

    :cond_1d
    new-instance v6, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {v6, v5}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {v4, v6}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    :goto_14
    invoke-virtual {v4, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v5

    if-eqz v5, :cond_1e

    const/4 v6, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v5

    array-length v5, v5

    if-ge v6, v5, :cond_1e

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/SlotManager;->getVariableMap()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lnet/sf/saxon/expr/instruct/WithParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v8, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->getSelectValue(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lnet/sf/saxon/expr/XPathContextMinor;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_1e
    if-eqz v12, :cond_20

    invoke-virtual {v12}, Lnet/sf/saxon/ma/map/MapItem;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v0

    :cond_1f
    :goto_16
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/value/QNameValue;

    if-eqz v5, :cond_20

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/SlotManager;->getVariableMap()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1f

    invoke-virtual {v12, v5}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lnet/sf/saxon/expr/XPathContextMinor;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    goto :goto_16

    :cond_20
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/sxpath/XPathVariable;

    invoke-virtual {v2}, Lnet/sf/saxon/sxpath/XPathVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    new-instance v5, Lcom/sunia/HTREnginev2/wwf;

    invoke-direct {v5, v2}, Lcom/sunia/HTREnginev2/wwf;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    if-eqz v12, :cond_22

    new-instance v6, Lnet/sf/saxon/value/QNameValue;

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v6, v2, v7}, Lnet/sf/saxon/value/QNameValue;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/AtomicType;)V

    invoke-virtual {v12, v6}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v6

    if-nez v6, :cond_22

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->isActualParam(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result v6

    if-nez v6, :cond_22

    const/4 v6, 0x0

    invoke-static {v15, v6, v5}, Lnet/sf/saxon/expr/parser/ExpressionTool;->contains(Lnet/sf/saxon/expr/Expression;ZLjava/util/function/Predicate;)Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_17

    :cond_21
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value has been supplied for variable "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XPST0008"

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_22
    const/4 v6, 0x0

    goto :goto_17

    :cond_23
    :try_start_2
    invoke-virtual {v15, v4}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    move-object v2, v0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dynamic error in expression {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "} called using xsl:evaluate"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_24
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "xsl:evaluate has been disabled"

    const-string v2, "XTDE3175"

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->n:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->p:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->q:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->r:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->s:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->w:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->t:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->gatherOperands(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Ljava/util/List;)V

    return-object v0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimizeChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method

.method public setActualParameters([Lnet/sf/saxon/expr/instruct/WithParam;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    return-void
.end method

.method public setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->v:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-void
.end method

.method public setBaseUriExpr(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->q:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->q:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void
.end method

.method public setContextItemExpr(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->p:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->p:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void
.end method

.method public setDefaultXPathNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->x:Ljava/lang/String;

    return-void
.end method

.method public setDynamicParams(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->w:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->w:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void
.end method

.method public setNamespaceContextExpr(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->r:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->r:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void
.end method

.method public setOptionsExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->ABSORB:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->t:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public setSchemaAwareExpr(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->s:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->s:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void
.end method

.method public setXpath(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->n:Lnet/sf/saxon/expr/Operand;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->n:Lnet/sf/saxon/expr/Operand;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    :goto_0
    return-void
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/expr/StaticContext;->getImportedSchemaNamespaces()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->u:Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/EvaluateInstr;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->typeCheck([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method
