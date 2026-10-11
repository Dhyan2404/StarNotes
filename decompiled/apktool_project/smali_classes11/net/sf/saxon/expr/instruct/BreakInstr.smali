.class public Lnet/sf/saxon/expr/instruct/BreakInstr;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    new-instance p1, Lnet/sf/saxon/expr/instruct/BreakInstr;

    invoke-direct {p1}, Lnet/sf/saxon/expr/instruct/BreakInstr;-><init>()V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "break"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "xsl:break"

    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x8b

    return p0
.end method

.method public isLiftable(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public markContext(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1

    :goto_0
    instance-of v0, p1, Lnet/sf/saxon/expr/XPathContextMajor;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lnet/sf/saxon/expr/XPathContextMajor;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->requestTailCall(Lnet/sf/saxon/expr/TailCallLoop$TailCallInfo;[Lnet/sf/saxon/om/Sequence;)V

    return-void
.end method

.method public mayCreateNewNodes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/BreakInstr;->markContext(Lnet/sf/saxon/expr/XPathContext;)V

    const/4 p0, 0x0

    return-object p0
.end method
