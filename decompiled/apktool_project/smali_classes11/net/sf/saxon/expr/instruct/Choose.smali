.class public Lnet/sf/saxon/expr/instruct/Choose;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/ConditionalInstruction;


# static fields
.field public static final CHOICE_ACTION:Lnet/sf/saxon/expr/OperandRole;


# instance fields
.field public final n:[Lnet/sf/saxon/expr/Operand;

.field public final o:[Lnet/sf/saxon/expr/Operand;

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/expr/OperandRole;

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    const/16 v3, 0x8

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/expr/OperandRole;-><init>(ILnet/sf/saxon/expr/OperandUsage;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/expr/instruct/Choose;->CHOICE_ACTION:Lnet/sf/saxon/expr/OperandRole;

    return-void
.end method

.method public constructor <init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V
    .locals 6

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lnet/sf/saxon/expr/Operand;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Choose;->n:[Lnet/sf/saxon/expr/Operand;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/Choose;->n:[Lnet/sf/saxon/expr/Operand;

    new-instance v3, Lnet/sf/saxon/expr/Operand;

    aget-object v4, p1, v1

    sget-object v5, Lnet/sf/saxon/expr/OperandRole;->INSPECT:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v3, p0, v4, v5}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p2

    new-array p1, p1, [Lnet/sf/saxon/expr/Operand;

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Choose;->o:[Lnet/sf/saxon/expr/Operand;

    :goto_1
    array-length p1, p2

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/Choose;->o:[Lnet/sf/saxon/expr/Operand;

    new-instance v1, Lnet/sf/saxon/expr/Operand;

    aget-object v2, p2, v0

    sget-object v3, Lnet/sf/saxon/expr/instruct/Choose;->CHOICE_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v1, p0, v2, v3}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static isSingleBranchChoice(Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/Choose;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-array p0, v0, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, p0, v2

    .line 5
    new-instance p1, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {p1, v1, p0}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public static makeConditional(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 5

    .line 1
    invoke-static {p2}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array p2, v1, [Lnet/sf/saxon/expr/Expression;

    aput-object p0, p2, v2

    new-array p0, v1, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, p0, v2

    .line 2
    new-instance p1, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v3, v0, [Lnet/sf/saxon/expr/Expression;

    aput-object p0, v3, v2

    .line 3
    sget-object v4, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {v4, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    aput-object p0, v3, v1

    new-array p0, v0, [Lnet/sf/saxon/expr/Expression;

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    .line 4
    new-instance p1, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {p1, v3, p0}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method


# virtual methods
.method public actions()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Choose;->o:[Lnet/sf/saxon/expr/Operand;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->conditions()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->actions()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->addNodeSet(Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public allowExtractingCommonSubexpressions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public atomizeActions()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->setAction(ILnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkForUpdatingSubexpressions()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->conditions()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "XUST0001"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->checkForUpdatingSubexpressions()V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "Updating expression appears in a context where it is not permitted"

    invoke-direct {p0, v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->actions()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->checkForUpdatingSubexpressions()V

    invoke-static {v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->isNotAllowedInUpdatingContext(Lnet/sf/saxon/expr/Expression;)Z

    move-result v4

    const-string v5, "If any branch of a conditional is an updating expression, then all must be updating expressions (or vacuous)"

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    move v1, v6

    goto :goto_2

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, v5, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, v5, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p0

    :cond_6
    return-void
.end method

.method public checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->actions()Ljava/lang/Iterable;

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

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->checkPermittedContents(Lnet/sf/saxon/type/SchemaType;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public computeCardinality()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v3

    invoke-static {v2, v3}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result v2

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/16 p0, 0x2000

    invoke-static {v2, p0}, Lnet/sf/saxon/value/Cardinality;->union(II)I

    move-result v2

    :cond_2
    return v2
.end method

.method public computeSpecialProperties()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public conditions()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Choose;->n:[Lnet/sf/saxon/expr/Operand;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v0

    new-array v1, v0, [Lnet/sf/saxon/expr/Expression;

    new-array v2, v0, [Lnet/sf/saxon/expr/Expression;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v4, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {p1, v1, v2}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->isInstruction()Z

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/instruct/Choose;->setInstruction(Z)V

    return-object p1
.end method

.method public final d(Lnet/sf/saxon/expr/XPathContext;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    :try_start_0
    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final e(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Choose;->g(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    if-eq p1, p0, :cond_0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-object p1
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Choose;->d(Lnet/sf/saxon/expr/XPathContext;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Choose;->d(Lnet/sf/saxon/expr/XPathContext;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V

    :cond_0
    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "choose"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public final g(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/expr/Literal;

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v2

    if-eqz v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v0

    :goto_2
    if-ge v5, v2, :cond_4

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-static {v6, v0}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v6, v3}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/Expression;

    invoke-static {v5, v3}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Expression;

    return-object p0

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v2, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/Expression;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/Expression;

    new-instance v1, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {v1, p1, v0}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object v1

    :cond_7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v1

    if-ne v1, v3, :cond_8

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, v3}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result p1

    if-ne p1, v3, :cond_9

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_9
    sub-int/2addr v2, v3

    new-array p1, v2, [Lnet/sf/saxon/expr/Expression;

    new-array v1, v2, [Lnet/sf/saxon/expr/Expression;

    :goto_4
    if-ge v0, v2, :cond_a

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    new-instance p0, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_b
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-static {v4, v3}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/expr/instruct/Choose;

    if-eqz v4, :cond_e

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    new-array v5, v4, [Lnet/sf/saxon/expr/Expression;

    new-array v4, v4, [Lnet/sf/saxon/expr/Expression;

    move v6, v0

    :goto_5
    if-ge v6, v1, :cond_c

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v6}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v7

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result p0

    if-ge v0, p0, :cond_d

    add-int p0, v0, v2

    sub-int/2addr p0, v3

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    aput-object v1, v5, p0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    aput-object v1, v4, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    new-instance p0, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {p0, v5, v4}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_e
    const/4 v1, 0x2

    if-ne v2, v1, :cond_10

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, v3}, Lnet/sf/saxon/expr/Literal;->isConstantBoolean(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/sf/saxon/expr/Literal;->isConstantBoolean(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-static {v1, v3}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object p1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p1

    const/16 v1, 0x4000

    if-ne p1, v1, :cond_f

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    new-array v1, v3, [Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "boolean"

    invoke-static {p0, p1, v1}, Lnet/sf/saxon/functions/SystemFunction;->makeCall(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_10
    return-object p0
.end method

.method public getAction(I)Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Choose;->o:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getActionOperand(I)Lnet/sf/saxon/expr/Operand;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Choose;->o:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getCondition(I)Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Choose;->n:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "choose"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/16 p0, 0xe

    :goto_0
    return p0
.end method

.method public getInstructionNameCode()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0xa2

    goto :goto_0

    :cond_0
    const/16 p0, 0x8f

    :goto_0
    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lnet/sf/saxon/type/Type;->getCommonSuperType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getNumberOfConditions()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result p0

    return p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->isInstruction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Choose"

    return-object p0
.end method

.method public implementsStaticTypeCheck()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isInstruction()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/Choose;->p:Z

    return p0
.end method

.method public isUpdatingExpression()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->actions()Ljava/lang/Iterable;

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

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isVacuousExpression()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->actions()Ljava/lang/Iterable;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Choose;->d(Lnet/sf/saxon/expr/XPathContext;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public markTailFunctionCalls(Lnet/sf/saxon/om/StructuredQName;I)I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->actions()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->markTailFunctionCalls(Lnet/sf/saxon/om/StructuredQName;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final mayCreateNewNodes()Z
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->actions()Ljava/lang/Iterable;

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

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/Choose;->n:[Lnet/sf/saxon/expr/Operand;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/Choose;->o:[Lnet/sf/saxon/expr/Operand;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/Choose;->n:[Lnet/sf/saxon/expr/Operand;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lnet/sf/saxon/functions/BooleanFn;->rewriteEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/instruct/Choose;->setCondition(ILnet/sf/saxon/expr/Expression;)V

    :cond_0
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/expr/Literal;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/value/BooleanValue;

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/GroundedValue;->effectiveBooleanValue()Z

    move-result v3
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object v3

    invoke-static {v3, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/instruct/Choose;->setCondition(ILnet/sf/saxon/expr/Expression;)V

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_8

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, v1}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_5

    :cond_3
    :try_start_1
    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/Choose;->o:[Lnet/sf/saxon/expr/Operand;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lnet/sf/saxon/trans/XPathException;->isTypeError()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->isInliningFunctions()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    throw v3

    :cond_5
    :goto_3
    new-instance v4, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v5, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v5, v3}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v4, v5}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/Choose;->o:[Lnet/sf/saxon/expr/Operand;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/expr/instruct/Choose;->setAction(ILnet/sf/saxon/expr/Expression;)V

    :goto_4
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/expr/ErrorExpression;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/ErrorExpression;->isTypeError()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, v1}, Lnet/sf/saxon/expr/Literal;->isConstantBoolean(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, v4}, Lnet/sf/saxon/expr/Literal;->isConstantBoolean(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Branch "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of conditional will fail with a type error if executed. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/ErrorExpression;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_6
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, v4}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_6
    if-nez v0, :cond_9

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p2

    const v0, 0x8000

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Choose;->e(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of p2, p0, Lnet/sf/saxon/expr/instruct/Choose;

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object p2

    check-cast p0, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/expr/parser/Optimizer;->trySwitch(Lnet/sf/saxon/expr/instruct/Choose;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/Choose;->d(Lnet/sf/saxon/expr/XPathContext;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/expr/instruct/TailCallReturner;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/instruct/TailCallReturner;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/TailCallReturner;->processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_1
    return-object v1
.end method

.method public setAction(ILnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Choose;->o:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setCondition(ILnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Choose;->n:[Lnet/sf/saxon/expr/Operand;

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setInstruction(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/Choose;->p:Z

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->setCondition(ILnet/sf/saxon/expr/Expression;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->setAction(ILnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/XPathException;->isTypeError()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v3, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v3, v1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v2, v3}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    invoke-virtual {p0, v0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->setAction(ILnet/sf/saxon/expr/Expression;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Choose;->n:[Lnet/sf/saxon/expr/Operand;

    array-length p0, p0

    return p0
.end method

.method public staticTypeCheck(Lnet/sf/saxon/value/SequenceType;ZLnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_0
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p2, v3, p1, p3, p4}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sf/saxon/expr/instruct/Choose;->setAction(ILnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lnet/sf/saxon/trans/XPathException;->isStaticError()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v5, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v5, v3}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v4, v5}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/expr/instruct/Choose;->setAction(ILnet/sf/saxon/expr/Expression;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    throw v3

    :cond_1
    add-int/lit8 p2, v0, -0x1

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p2

    const/4 p4, 0x1

    invoke-static {p2, p4}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p1

    if-nez p1, :cond_4

    add-int/lit8 p1, v0, 0x1

    new-array p2, p1, [Lnet/sf/saxon/expr/Expression;

    new-array p1, p1, [Lnet/sf/saxon/expr/Expression;

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    sget-object v1, Lnet/sf/saxon/value/BooleanValue;->TRUE:Lnet/sf/saxon/value/BooleanValue;

    invoke-static {v1, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v1

    aput-object v1, p2, v0

    if-ne v0, p4, :cond_3

    const-string v1, "The condition is not"

    goto :goto_3

    :cond_3
    const-string v1, "None of the conditions is"

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conditional expression: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " satisfied, so an empty sequence is returned, but this is not allowed as the "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/expr/ErrorExpression;

    invoke-virtual {p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v2, v1, p3, p4}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    aput-object v2, p1, v0

    new-instance p0, Lnet/sf/saxon/expr/instruct/Choose;

    invoke-direct {p0, p2, p1}, Lnet/sf/saxon/expr/instruct/Choose;-><init>([Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/Expression;)V

    :cond_4
    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "if("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") then ... else ..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "if ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") then ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, ") else if ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
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

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/Choose;->n:[Lnet/sf/saxon/expr/Operand;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, v0}, Lnet/sf/saxon/expr/parser/TypeChecker;->ebvError(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/trans/XPathException;

    move-result-object v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw v3

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-static {v2, v1}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    :try_start_0
    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/Choose;->o:[Lnet/sf/saxon/expr/Operand;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trans/XPathException;->maybeSetFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XPathException;->isStaticError()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XPathException;->isTypeError()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-static {v3, v1}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    throw v2

    :cond_4
    :goto_2
    new-instance v3, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v4, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v4, v2}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v3, v4}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/expr/instruct/Choose;->setAction(ILnet/sf/saxon/expr/Expression;)V

    goto :goto_3

    :cond_5
    new-instance v3, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v4, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v4, v2}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v3, v4}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    invoke-virtual {p0, v0, v3}, Lnet/sf/saxon/expr/instruct/Choose;->setAction(ILnet/sf/saxon/expr/Expression;)V

    :goto_3
    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getCondition(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lnet/sf/saxon/expr/Literal;->hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    throw v2

    :cond_8
    :goto_5
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Choose;->e(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-eq v0, p0, :cond_9

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v0

    :cond_a
    return-object p0
.end method

.method public unordered(ZZ)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Choose;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/Choose;->getAction(I)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lnet/sf/saxon/expr/Expression;->unordered(ZZ)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/expr/instruct/Choose;->setAction(ILnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
