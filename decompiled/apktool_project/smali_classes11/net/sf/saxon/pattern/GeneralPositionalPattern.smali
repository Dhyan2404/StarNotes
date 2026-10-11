.class public Lnet/sf/saxon/pattern/GeneralPositionalPattern;
.super Lnet/sf/saxon/pattern/Pattern;
.source "SourceFile"


# instance fields
.field public final q:Lnet/sf/saxon/pattern/NodeTest;

.field public r:Lnet/sf/saxon/expr/Expression;

.field public s:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/Expression;)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/pattern/Pattern;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->s:Z

    iput-object p1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    iput-object p2, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-static {p0, p2, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    move-result p0

    return p0
.end method

.method public computeHashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
    .locals 3

    .line 2
    new-instance v0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;

    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->copy()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v2, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/expr/Expression;)V

    .line 3
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getOriginalText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/pattern/GeneralPositionalPattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/GeneralPositionalPattern;

    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    iget-object v2, p1, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    iget-object p1, p1, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "p.genPos"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->s:Z

    if-nez v0, :cond_0

    const-string v0, "flags"

    const-string v1, "P"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getDependencies()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result p0

    and-int/lit16 p0, p0, 0x180

    return p0
.end method

.method public getFingerprint()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    return-object p0
.end method

.method public getNodeTest()Lnet/sf/saxon/pattern/NodeTest;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    return-object p0
.end method

.method public getPositionExpr()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->u(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

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

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->FOCUS_CONTROLLED_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    return-object v0
.end method

.method public bridge synthetic optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v1

    .line 4
    iget-object v3, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v3, p1, v1}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    const/4 v3, 0x1

    .line 5
    invoke-static {v1, v3}, Lnet/sf/saxon/expr/Literal;->isConstantBoolean(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {p1, p0}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p1

    .line 7
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-static {v1, v2}, Lnet/sf/saxon/expr/Literal;->isConstantBoolean(Lnet/sf/saxon/expr/Expression;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    new-instance p0, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p0

    .line 9
    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getDependencies()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    .line 10
    iput-boolean v2, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->s:Z

    .line 11
    :cond_2
    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/sf/saxon/expr/FilterExpression;->isPositionalFilter(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 12
    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getPrimitiveType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getPrimitiveType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    const/16 v2, 0x8

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    .line 14
    :goto_0
    new-instance v1, Lnet/sf/saxon/expr/AxisExpression;

    iget-object v4, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {v1, v2, v4}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    .line 15
    new-instance v2, Lnet/sf/saxon/expr/FilterExpression;

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-direct {v2, v1, p0}, Lnet/sf/saxon/expr/FilterExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 16
    invoke-static {v2, v0, v3}, Lnet/sf/saxon/pattern/PatternMaker;->fromExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/Configuration;Z)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method public reconstruct()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setUsesPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->s:Z

    return-void
.end method

.method public bridge synthetic simplify()Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->simplify()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public simplify()Lnet/sf/saxon/pattern/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public final t(Lnet/sf/saxon/om/NodeInfo;ILnet/sf/saxon/om/FocusIterator;)I
    .locals 1

    instance-of v0, p3, Lnet/sf/saxon/om/FocusTrackingIterator;

    if-eqz v0, :cond_0

    check-cast p3, Lnet/sf/saxon/om/FocusTrackingIterator;

    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p3, p1, p0, p2}, Lnet/sf/saxon/om/FocusTrackingIterator;->getSiblingPosition(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodeTest;I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-static {p1, p0, p2}, Lnet/sf/saxon/tree/util/Navigator;->getSiblingPosition(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodeTest;I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    .line 4
    invoke-static {p1, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->unsortedIfHomogeneous(Lnet/sf/saxon/expr/Expression;Z)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public final u(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->q:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p2, p1}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p2

    new-instance v1, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {v1, p1}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;)V

    invoke-interface {p2, v1}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    :try_start_0
    iget-boolean v1, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->s:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object v1

    const v3, 0x7fffffff

    invoke-virtual {p0, p1, v3, v1}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->t(Lnet/sf/saxon/om/NodeInfo;ILnet/sf/saxon/om/FocusIterator;)I

    move-result v1

    new-instance v3, Lnet/sf/saxon/tree/iter/ManualIterator;

    invoke-direct {v3, p1, v1}, Lnet/sf/saxon/tree/iter/ManualIterator;-><init>(Lnet/sf/saxon/om/Item;I)V

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v4

    invoke-interface {v4, v3}, Lnet/sf/saxon/expr/XPathContext;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    goto :goto_0

    :cond_1
    move-object v4, p2

    move v1, v2

    :goto_0
    iget-object v3, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/value/NumericValue;

    if-eqz v4, :cond_4

    iget-object v3, p0, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->r:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v3, p3}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/NumericValue;->asSubscript()I

    move-result v3

    if-gez v1, :cond_2

    if-eq v3, v2, :cond_2

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object p3

    invoke-virtual {p0, p1, v3, p3}, Lnet/sf/saxon/pattern/GeneralPositionalPattern;->t(Lnet/sf/saxon/om/NodeInfo;ILnet/sf/saxon/om/FocusIterator;)I

    move-result v1

    :cond_2
    if-eq v3, v2, :cond_3

    if-ne v1, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    invoke-static {v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->effectiveBooleanValue(Lnet/sf/saxon/om/Item;)Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException$Circularity; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException$StackOverflow; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->handleDynamicError(Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)V

    return v0

    :catch_1
    move-exception p0

    throw p0
.end method
