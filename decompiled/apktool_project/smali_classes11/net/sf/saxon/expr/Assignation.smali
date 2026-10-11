.class public abstract Lnet/sf/saxon/expr/Assignation;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/LocalBinding;


# static fields
.field public static final p:Lnet/sf/saxon/expr/OperandRole;


# instance fields
.field protected hasLoopingReference:Z

.field protected indexedVariable:Z

.field public final n:Lnet/sf/saxon/expr/Operand;

.field public final o:Lnet/sf/saxon/expr/Operand;

.field protected references:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/VariableReference;",
            ">;"
        }
    .end annotation
.end field

.field protected requiredType:Lnet/sf/saxon/value/SequenceType;

.field protected slotNumber:I

.field protected variableName:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    const/4 v1, 0x4

    sget-object v2, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;)V

    sput-object v0, Lnet/sf/saxon/expr/Assignation;->p:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    const/16 v0, -0x3e7

    iput v0, p0, Lnet/sf/saxon/expr/Assignation;->slotNumber:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/Assignation;->indexedVariable:Z

    iput-boolean v0, p0, Lnet/sf/saxon/expr/Assignation;->hasLoopingReference:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    new-instance v1, Lnet/sf/saxon/expr/Operand;

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->NAVIGATE:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v1, p0, v0, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v1, p0, Lnet/sf/saxon/expr/Assignation;->n:Lnet/sf/saxon/expr/Operand;

    new-instance v1, Lnet/sf/saxon/expr/Operand;

    instance-of v2, p0, Lnet/sf/saxon/expr/LetExpression;

    if-eqz v2, :cond_0

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    goto :goto_0

    :cond_0
    sget-object v2, Lnet/sf/saxon/expr/Assignation;->p:Lnet/sf/saxon/expr/OperandRole;

    :goto_0
    invoke-direct {v1, p0, v0, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v1, p0, Lnet/sf/saxon/expr/Assignation;->o:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/expr/Assignation;Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;ILnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z
    .locals 0

    invoke-static/range {p0 .. p6}, Lnet/sf/saxon/expr/Assignation;->g(Lnet/sf/saxon/expr/Assignation;Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;ILnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static e(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;Ljava/util/List;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/Binding;",
            "Lnet/sf/saxon/expr/Expression;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/VariableReference;",
            ">;[I)V"
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/expr/LocalVariableReference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/LocalVariableReference;->getBinding()Lnet/sf/saxon/expr/LocalBinding;

    move-result-object v0

    if-ne v0, p0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/expr/VariableReference;->recomputeInLoop()V

    aget p0, p3, v1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/VariableReference;->isInLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    :cond_0
    add-int/2addr p0, v2

    aput p0, p3, v1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    aget v0, p3, v2

    sub-int/2addr v0, v2

    aput v0, p3, v2

    if-gtz v0, :cond_2

    const/16 p0, 0x64

    aput p0, p3, v1

    aput v1, p3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lnet/sf/saxon/expr/Assignation;->e(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;Ljava/util/List;[I)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic g(Lnet/sf/saxon/expr/Assignation;Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;ILnet/sf/saxon/expr/Expression;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p6, p5, Lnet/sf/saxon/expr/VariableReference;

    if-eqz p6, :cond_0

    check-cast p5, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {p5}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object p6

    if-ne p6, p0, :cond_0

    invoke-virtual {p5, p1, p2, p3, p4}, Lnet/sf/saxon/expr/VariableReference;->refineVariableType(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addReference(Lnet/sf/saxon/expr/VariableReference;Z)V
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/expr/Assignation;->hasLoopingReference:Z

    or-int/2addr p2, v0

    iput-boolean p2, p0, Lnet/sf/saxon/expr/Assignation;->hasLoopingReference:Z

    iget-object p2, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    :cond_0
    iget-object p2, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/VariableReference;

    if-ne v0, p1, :cond_1

    return-void

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/expr/parser/PathMap;->registerPathForVariable(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p0

    return-object p0
.end method

.method public checkForUpdatingSubexpressions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->checkForUpdatingSubexpressions()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->checkForUpdatingSubexpressions()V

    return-void

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "An updating expression cannot be used to initialize a variable"

    const-string v2, "XUST0001"

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw v0
.end method

.method public computeDependencies()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->computeDependencies()I

    move-result v0

    invoke-static {p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->containsLocalVariableReference(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-nez p0, :cond_0

    and-int/lit16 v0, v0, -0x81

    :cond_0
    return v0
.end method

.method public evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/expr/Assignation;->slotNumber:I

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/XPathContext;->evaluateLocalVariable(I)Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/om/GroundedValue;

    if-nez v1, :cond_0

    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    iget p0, p0, Lnet/sf/saxon/expr/Assignation;->slotNumber:I

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    :cond_0
    return-object v0
.end method

.method public getAction()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getActionOp()Lnet/sf/saxon/expr/Operand;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->o:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public getCost()D
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getIntegerBoundsForVariable()[Lnet/sf/saxon/value/IntegerValue;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getSequence()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public getLocalSlotNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/Assignation;->slotNumber:I

    return p0
.end method

.method public getNominalReferenceCount()I
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/expr/Assignation;->indexedVariable:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x2710

    return p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lnet/sf/saxon/expr/Assignation;->hasLoopingReference:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0xa

    return p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getRequiredSlots()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->requiredType:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getSequence()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getSequenceOp()Lnet/sf/saxon/expr/Operand;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->n:Lnet/sf/saxon/expr/Operand;

    return-object p0
.end method

.method public getVariableEQName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q{http://ns.saxonica.com/anonymous-var}var"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->computeHashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVariableName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zz:var"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->computeHashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVariableQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public hasVariableBinding(Lnet/sf/saxon/expr/Binding;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAssignable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isGlobal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIndexedVariable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/Assignation;->indexedVariable:Z

    return p0
.end method

.method public isUpdatingExpression()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result p0

    return p0
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

    iget-object v0, p0, Lnet/sf/saxon/expr/Assignation;->n:Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/expr/Assignation;->o:Lnet/sf/saxon/expr/Operand;

    filled-new-array {v0, v1}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public rebuildReferenceList(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f4

    :goto_0
    const/4 v1, 0x1

    aput p1, v0, v1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {p0, v2, p1, v0}, Lnet/sf/saxon/expr/Assignation;->e(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;Ljava/util/List;[I)V

    aget v0, v0, v1

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    return-void
.end method

.method public refineTypeInformation(Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;ILnet/sf/saxon/expr/Assignation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p5}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance v6, Lcom/sunia/HTREnginev2/vf;

    move-object v0, v6

    move-object v1, p5

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/vf;-><init>(Lnet/sf/saxon/expr/Assignation;Lnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/GroundedValue;I)V

    const/4 p1, 0x0

    invoke-static {p0, p1, v6}, Lnet/sf/saxon/expr/parser/ExpressionTool;->processExpressionTree(Lnet/sf/saxon/expr/Expression;Ljava/lang/Object;Lnet/sf/saxon/expr/parser/ExpressionAction;)Z

    return-void
.end method

.method public removeDeadReferences()Z
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v4, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/VariableReference;->isInLoop()Z

    move-result v4

    or-int/2addr v3, v4

    iget-object v4, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_1

    if-ne v4, p0, :cond_0

    move v4, v2

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getParentExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_2
    if-nez v4, :cond_2

    iget-object v4, p0, Lnet/sf/saxon/expr/Assignation;->references:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    return v1
.end method

.method public replaceVariable(Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->inlineVariableReferences(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->isIndexedVariable()Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lnet/sf/saxon/expr/VariableReference;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/expr/VariableReference;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/VariableReference;->getBinding()Lnet/sf/saxon/expr/Binding;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/expr/Assignation;

    if-eqz p1, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/Assignation;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->setIndexedVariable()V

    :cond_0
    return v0
.end method

.method public setAction(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setIndexedVariable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/expr/Assignation;->indexedVariable:Z

    return-void
.end method

.method public setRequiredType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/Assignation;->requiredType:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setSequence(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Assignation;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setSlotNumber(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/Assignation;->slotNumber:I

    return-void
.end method

.method public setVariableQName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/Assignation;->variableName:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public suppressValidation(I)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->suppressValidation(I)V

    return-void
.end method

.method public unordered(ZZ)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Assignation;->getAction()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Assignation;->setAction(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public verifyReferences()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Assignation;->rebuildReferenceList(Z)V

    return-void
.end method
