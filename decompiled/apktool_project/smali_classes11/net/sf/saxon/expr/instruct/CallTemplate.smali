.class public Lnet/sf/saxon/expr/instruct/CallTemplate;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/ITemplateCall;
.implements Lnet/sf/saxon/expr/ComponentInvocation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;
    }
.end annotation


# instance fields
.field public n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

.field public final o:Lnet/sf/saxon/om/StructuredQName;

.field public p:[Lnet/sf/saxon/expr/instruct/WithParam;

.field public q:[Lnet/sf/saxon/expr/instruct/WithParam;

.field public r:Z

.field public s:I

.field public final t:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/instruct/NamedTemplate;Lnet/sf/saxon/om/StructuredQName;ZZ)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    sget-object v0, Lnet/sf/saxon/expr/instruct/WithParam;->EMPTY_ARRAY:[Lnet/sf/saxon/expr/instruct/WithParam;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->s:I

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->o:Lnet/sf/saxon/om/StructuredQName;

    iput-boolean p3, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->r:Z

    iput-boolean p4, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->t:Z

    return-void
.end method


# virtual methods
.method public computeCardinality()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-nez p0, :cond_0

    const p0, 0xe000

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 5

    new-instance v0, Lnet/sf/saxon/expr/instruct/CallTemplate;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->o:Lnet/sf/saxon/om/StructuredQName;

    iget-boolean v3, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->r:Z

    iget-boolean v4, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->t:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/sf/saxon/expr/instruct/CallTemplate;-><init>(Lnet/sf/saxon/expr/instruct/NamedTemplate;Lnet/sf/saxon/om/StructuredQName;ZZ)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0, v1, p1}, Lnet/sf/saxon/expr/instruct/WithParam;->copy(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/RebindingMap;)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/expr/instruct/WithParam;->copy(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/RebindingMap;)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-object v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "callT"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CallTemplate;->getBindingSlot()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bSlot"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->t:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->r:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "flags"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    array-length v1, v0

    if-lez v1, :cond_4

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lnet/sf/saxon/expr/instruct/WithParam;->exportParameters([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/trace/ExpressionPresenter;Z)V

    :cond_4
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    array-length v0, p0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->exportParameters([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/trace/ExpressionPresenter;Z)V

    :cond_5
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-object p0
.end method

.method public getBindingSlot()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->s:I

    return p0
.end method

.method public getCalledTemplateName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->o:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getFixedTarget()Lnet/sf/saxon/expr/Component;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CallTemplate;->getTarget()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x8c

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 0

    const/16 p0, 0x27f

    return p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "CallTemplate"

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->o:Lnet/sf/saxon/om/StructuredQName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0xd2

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getTarget()Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p0

    return-object p0
.end method

.method public getTargetTemplate()Lnet/sf/saxon/expr/instruct/NamedTemplate;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    return-object p0
.end method

.method public getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-object p0
.end method

.method public final mayCreateNewNodes()Z
    .locals 0

    const/4 p0, 0x1

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

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->gatherOperands(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Ljava/util/List;)V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->gatherOperands(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Ljava/util/List;)V

    return-object v0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p1, v0, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p1, v0, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CallTemplate;->getFixedTarget()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    iget v1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->s:I

    if-ltz v1, :cond_1

    invoke-interface {p2, v1}, Lnet/sf/saxon/expr/XPathContext;->getTargetComponent(I)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->isHiddenAbstractComponent()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call an abstract template ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->o:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") with no implementation"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XTDE3052"

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {v2, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p2, v0}, Lnet/sf/saxon/expr/instruct/Instruction;->assembleParams(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/instruct/WithParam;)Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setLocalParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p2, v0}, Lnet/sf/saxon/expr/instruct/Instruction;->assembleTunnelParams(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/instruct/WithParam;)Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/XPathContextMajor;->setTunnelParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->t:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    :cond_2
    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentMergeGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    :try_start_0
    invoke-virtual {v1, p1, v2}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->expand(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    return-void

    :catch_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException$StackOverflow;

    const-string v0, "SXLM0001"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const-string v1, "Too many nested template or function calls. The stylesheet may be looping."

    invoke-direct {p1, v1, v0, p0}, Lnet/sf/saxon/trans/XPathException$StackOverflow;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->s:I

    if-ltz v0, :cond_0

    invoke-interface {p2, v0}, Lnet/sf/saxon/expr/XPathContext;->getTargetComponent(I)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CallTemplate;->getFixedTarget()Lnet/sf/saxon/expr/Component;

    move-result-object v0

    :goto_0
    move-object v3, v0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Component;->isHiddenAbstractComponent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p2, v0}, Lnet/sf/saxon/expr/instruct/Instruction;->assembleParams(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/instruct/WithParam;)Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p2, v2}, Lnet/sf/saxon/expr/instruct/Instruction;->assembleTunnelParams(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/instruct/WithParam;)Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object v5

    if-nez v0, :cond_1

    sget-object v0, Lnet/sf/saxon/expr/instruct/ParameterSet;->EMPTY_PARAMETER_SET:Lnet/sf/saxon/expr/instruct/ParameterSet;

    :cond_1
    move-object v4, v0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getStackFrame()Lnet/sf/saxon/expr/StackFrame;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/StackFrame;->getStackFrameValues()[Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;

    move-object v2, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lnet/sf/saxon/expr/instruct/CallTemplate$CallTemplatePackage;-><init>(Lnet/sf/saxon/expr/Component;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/CallTemplate;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v0

    :cond_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call an abstract template ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->o:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") with no implementation"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XTDE3052"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "SXPK0001"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const-string v0, "Internal Saxon error: No binding available for call-template instruction"

    invoke-direct {p1, v0, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/CallTemplate;->process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V

    return-object v1
.end method

.method public setActualParameters([Lnet/sf/saxon/expr/instruct/WithParam;[Lnet/sf/saxon/expr/instruct/WithParam;)V
    .locals 4

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/WithParam;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_1

    aget-object v0, p2, v1

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/WithParam;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setBindingSlot(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->s:I

    return-void
.end method

.method public setTailRecursive(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->r:Z

    return-void
.end method

.method public setTargetTemplate(Lnet/sf/saxon/expr/instruct/NamedTemplate;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0}, Lnet/sf/saxon/expr/instruct/WithParam;->simplify([Lnet/sf/saxon/expr/instruct/WithParam;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0}, Lnet/sf/saxon/expr/instruct/WithParam;->simplify([Lnet/sf/saxon/expr/instruct/WithParam;)V

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallTemplate#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CallTemplate#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/CallTemplate;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p0, v4

    if-eqz v3, :cond_1

    const-string v3, "("

    goto :goto_1

    :cond_1
    const-string v3, ", "

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/WithParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/WithParam;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->typeCheck([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->typeCheck([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->isInBackwardsCompatibleMode()Z

    move-result p2

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->n:Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/WithParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getLocalParamInfo(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->requiredType:Lnet/sf/saxon/value/SequenceType;

    new-instance v3, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/WithParam;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-direct {v3, v5, v4, v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    const-string v4, "XTTE0590"

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/WithParam;->getSelectExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {p2, v4, v2, v3, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lnet/sf/saxon/expr/instruct/WithParam;->setSelectExpression(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/instruct/WithParam;->setTypeChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public usesTailRecursion()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/CallTemplate;->r:Z

    return p0
.end method
