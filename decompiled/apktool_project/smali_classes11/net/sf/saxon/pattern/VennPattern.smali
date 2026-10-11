.class public abstract Lnet/sf/saxon/pattern/VennPattern;
.super Lnet/sf/saxon/pattern/Pattern;
.source "SourceFile"


# instance fields
.field protected p1:Lnet/sf/saxon/pattern/Pattern;

.field protected p2:Lnet/sf/saxon/pattern/Pattern;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/pattern/Pattern;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/pattern/Pattern;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    iput-object p2, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    move-result p2

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    move-result p0

    return p0
.end method

.method public bindCurrent(Lnet/sf/saxon/expr/LocalBinding;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->bindCurrent(Lnet/sf/saxon/expr/LocalBinding;)V

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->bindCurrent(Lnet/sf/saxon/expr/LocalBinding;)V

    return-void
.end method

.method public computeHashCode()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result v0

    const v1, 0x6bd723a6

    xor-int/2addr v0, v1

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/pattern/VennPattern;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pattern/VennPattern;->gatherComponentPatterns(Ljava/util/Set;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(I)V

    check-cast p1, Lnet/sf/saxon/pattern/VennPattern;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/pattern/VennPattern;->gatherComponentPatterns(Ljava/util/Set;)V

    invoke-interface {v0, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "p.venn"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    const-string v0, "op"

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/VennPattern;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public gatherComponentPatterns(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/pattern/Pattern;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    instance-of v1, v0, Lnet/sf/saxon/pattern/VennPattern;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/pattern/VennPattern;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/VennPattern;->gatherComponentPatterns(Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    instance-of v0, p0, Lnet/sf/saxon/pattern/VennPattern;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/pattern/VennPattern;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/VennPattern;->gatherComponentPatterns(Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public getDependencies()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getDependencies()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getDependencies()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public getLHS()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public abstract getOperatorName()Ljava/lang/String;
.end method

.method public getRHS()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public isMotionless()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->isMotionless()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

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

.method public matchesCurrentGroup()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->matchesCurrentGroup()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->matchesCurrentGroup()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
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

    iget-object v1, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->SAME_FOCUS_ACTION:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    new-instance v1, Lnet/sf/saxon/expr/Operand;

    iget-object v3, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

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

    iget-object v1, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/VennPattern;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

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
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/VennPattern;->simplify()Lnet/sf/saxon/pattern/Pattern;

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
    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->simplify()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->simplify()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public final t(Lnet/sf/saxon/pattern/Pattern;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p0, p1, Lnet/sf/saxon/pattern/NodeTestPattern;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The operands of a union, intersect, or except pattern must be patterns that match nodes"

    const-string v0, "XPTY0004"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/VennPattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pattern/VennPattern;->t(Lnet/sf/saxon/pattern/Pattern;)V

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p1:Lnet/sf/saxon/pattern/Pattern;

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pattern/VennPattern;->t(Lnet/sf/saxon/pattern/Pattern;)V

    .line 5
    iget-object v0, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/VennPattern;->p2:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method
