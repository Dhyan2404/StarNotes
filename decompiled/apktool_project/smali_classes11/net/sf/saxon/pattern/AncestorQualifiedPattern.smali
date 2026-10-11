.class public final Lnet/sf/saxon/pattern/AncestorQualifiedPattern;
.super Lnet/sf/saxon/pattern/Pattern;
.source "SourceFile"


# instance fields
.field public q:Lnet/sf/saxon/pattern/Pattern;

.field public r:Lnet/sf/saxon/pattern/Pattern;

.field public s:I

.field public t:Lnet/sf/saxon/type/ItemType;

.field public u:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;I)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/pattern/Pattern;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->u:Z

    iput-object p1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    iput-object p2, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    iput p3, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    move-result p2

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    move-result p0

    return p0
.end method

.method public bindCurrent(Lnet/sf/saxon/expr/LocalBinding;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->bindCurrent(Lnet/sf/saxon/expr/LocalBinding;)V

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->bindCurrent(Lnet/sf/saxon/expr/LocalBinding;)V

    return-void
.end method

.method public computeHashCode()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    const v1, 0x158cb

    xor-int/2addr v0, v1

    iget-object v1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    shl-int/lit8 p0, p0, 0x16

    xor-int/2addr p0, v0

    return p0
.end method

.method public convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;

    iget-object v1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    iget p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    invoke-direct {v0, p1, v1, p0}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;I)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    new-instance v0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;

    iget-object v1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    iget p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    invoke-direct {v0, v1, p1, p0}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;I)V

    return-object v0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
    .locals 3

    .line 2
    new-instance v0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;

    iget-object v1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    .line 3
    invoke-virtual {v2, p1}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iget v2, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    invoke-direct {v0, v1, p1, v2}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;I)V

    .line 4
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getOriginalText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    iget-object v2, p1, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    iget-object v2, p1, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    iget p1, p1, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    if-ne p0, p1, :cond_0

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

    const-string v0, "p.withUpper"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    sget-object v0, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->getUpwardsAxis()I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "axis"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upFirst"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getBasePattern()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public getDependencies()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getDependencies()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getDependencies()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public getFingerprint()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->t:Lnet/sf/saxon/type/ItemType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getUpperPattern()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public getUpwardsAxis()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    return p0
.end method

.method public isMotionless()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->isMotionless()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->isMotionless()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    invoke-virtual {p0, p1, v0, p2}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->u:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->u(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/pattern/Pattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->u(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public matchesCurrentGroup()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->matchesCurrentGroup()Z

    move-result p0

    return p0
.end method

.method public operands()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/Operand;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    iget-object v1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    new-instance v1, Lnet/sf/saxon/expr/Operand;

    iget-object v3, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-direct {v1, p0, v3, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    filled-new-array {v0, v1}, [Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->operandList([Lnet/sf/saxon/expr/Operand;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public reconstruct()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const-string v1, "/"

    goto :goto_0

    :cond_0
    const-string v1, "//"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic simplify()Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->simplify()Lnet/sf/saxon/pattern/Pattern;

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
    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->simplify()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->simplify()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public final t(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v1, p2, p1, p3}, Lnet/sf/saxon/pattern/Pattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {p2, p1}, Lnet/sf/saxon/om/NodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    goto :goto_0

    :cond_2
    return v0
.end method

.method public bridge synthetic typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    .line 4
    iget p2, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 5
    iget-object p2, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p2}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    .line 6
    instance-of v0, p2, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p2}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 8
    new-instance v0, Lnet/sf/saxon/expr/AxisExpression;

    check-cast p2, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {v0, v2, p2}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/AxisExpression;

    const/4 v2, 0x3

    check-cast p2, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {v0, v2, p2}, Lnet/sf/saxon/expr/AxisExpression;-><init>(ILnet/sf/saxon/pattern/NodeTest;)V

    .line 10
    :goto_0
    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 11
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    iget-object v2, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v2}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lnet/sf/saxon/Configuration;->makeContextItemStaticInfo(Lnet/sf/saxon/type/ItemType;Z)Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/AxisExpression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->t:Lnet/sf/saxon/type/ItemType;

    .line 13
    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide p1

    iget-object v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->q:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getCost()D

    move-result-wide v2

    cmpg-double p1, p1, v2

    if-gez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->u:Z

    return-object p0
.end method

.method public final u(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/Pattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported axis "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lnet/sf/saxon/om/AxisInfo;->axisName:[Ljava/lang/String;

    iget p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->s:I

    aget-object p0, p3, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in pattern"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/Pattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    invoke-virtual {p0, p2, p1, p3}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->t(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0

    :cond_4
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0, p2, p1, p3}, Lnet/sf/saxon/pattern/AncestorQualifiedPattern;->t(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method
