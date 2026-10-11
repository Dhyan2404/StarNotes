.class public Lnet/sf/saxon/pattern/PatternThatSetsCurrent;
.super Lnet/sf/saxon/pattern/Pattern;
.source "SourceFile"


# instance fields
.field public final q:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

.field public r:Lnet/sf/saxon/pattern/Pattern;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pattern/Pattern;)V
    .locals 3

    .line 1
    new-instance v0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    sget-object v1, Lnet/sf/saxon/functions/Current;->FN_CURRENT:Lnet/sf/saxon/om/StructuredQName;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/pattern/Pattern;-><init>()V

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    .line 4
    iput-object p2, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->q:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    .line 5
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->setRequiredType(Lnet/sf/saxon/value/SequenceType;)V

    .line 6
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    .line 7
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getDefaultPriority()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->setPriority(D)V

    return-void
.end method


# virtual methods
.method public allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I
    .locals 2

    sget-object v0, Lnet/sf/saxon/functions/Current;->FN_CURRENT:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    iget-object v0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->q:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->setSlotNumber(I)V

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/pattern/Pattern;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    move-result p0

    return p0
.end method

.method public convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/pattern/Pattern;->convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;

    invoke-direct {p0, p1}, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;-><init>(Lnet/sf/saxon/pattern/Pattern;)V

    return-object p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
    .locals 3

    .line 2
    new-instance v0, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    sget-object v1, Lnet/sf/saxon/functions/Current;->FN_CURRENT:Lnet/sf/saxon/om/StructuredQName;

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/value/SequenceType;)V

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->q:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/expr/parser/RebindingMap;->put(Lnet/sf/saxon/expr/Binding;Lnet/sf/saxon/expr/Binding;)V

    .line 4
    new-instance v1, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;

    iget-object v2, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v2, p1}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/flwor/LocalVariableBinding;)V

    .line 5
    invoke-static {p0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getOriginalText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/pattern/Pattern;->setOriginalText(Ljava/lang/String;)V

    return-object v1
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "p.withCurrent"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCurrentBinding()Lnet/sf/saxon/expr/LocalBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->q:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    return-object p0
.end method

.method public getFingerprint()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getFingerprint()I

    move-result p0

    return p0
.end method

.method public getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object p0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getUType()Lnet/sf/saxon/type/UType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getWrappedPattern()Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public hasVariableBinding(Lnet/sf/saxon/expr/Binding;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->q:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMotionless()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->isMotionless()Z

    move-result p0

    return p0
.end method

.method public matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->q:Lnet/sf/saxon/expr/flwor/LocalVariableBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/flwor/LocalVariableBinding;->getLocalSlotNumber()I

    move-result v0

    invoke-interface {p2, v0, p1}, Lnet/sf/saxon/expr/XPathContext;->setLocalVariable(ILnet/sf/saxon/om/Sequence;)V

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/pattern/Pattern;->matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z

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

    iget-object v1, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    sget-object v2, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, v1, v2}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    return-object v0
.end method

.method public reconstruct()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->toString()Ljava/lang/String;

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
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->simplify()Lnet/sf/saxon/pattern/Pattern;

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
    iget-object v0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->simplify()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method

.method public bridge synthetic typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

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
    iget-object v0, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/pattern/PatternThatSetsCurrent;->r:Lnet/sf/saxon/pattern/Pattern;

    return-object p0
.end method
