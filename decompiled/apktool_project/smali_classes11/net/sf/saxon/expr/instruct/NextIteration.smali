.class public Lnet/sf/saxon/expr/instruct/NextIteration;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;


# instance fields
.field public n:[Lnet/sf/saxon/expr/instruct/WithParam;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/instruct/NextIteration;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/NextIteration;-><init>()V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/instruct/WithParam;->copy(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/RebindingMap;)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-object v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "nextIteration"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->exportParameters([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/trace/ExpressionPresenter;Z)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0xb7

    return p0
.end method

.method public getParameters()[Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "NextIteration"

    return-object p0
.end method

.method public isLiftable(Z)Z
    .locals 0

    const/4 p0, 0x0

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->gatherOperands(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Ljava/util/List;)V

    return-object v0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object p1, p2

    :goto_0
    instance-of v0, p1, Lnet/sf/saxon/expr/XPathContextMajor;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lnet/sf/saxon/expr/XPathContextMajor;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/WithParam;->getSlotNumber()I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    aget-object v1, v1, v3

    invoke-virtual {v1, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->getSelectValue(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/expr/XPathContextMinor;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/XPathContextMajor;->getAllVariableValues()[Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/om/Sequence;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/WithParam;->getSlotNumber()I

    move-result v5

    invoke-virtual {v4, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->getSelectValue(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Sequence;

    move-result-object v4

    aput-object v4, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->resetAllVariableValues([Lnet/sf/saxon/om/Sequence;)V

    :goto_2
    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/expr/XPathContextMajor;->requestTailCall(Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;[Lnet/sf/saxon/om/Sequence;)V

    return-object p2
.end method

.method public setParameters([Lnet/sf/saxon/expr/instruct/WithParam;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0}, Lnet/sf/saxon/expr/instruct/WithParam;->simplify([Lnet/sf/saxon/expr/instruct/WithParam;)V

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/NextIteration;->n:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->typeCheck([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method
