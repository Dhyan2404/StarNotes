.class public Lnet/sf/saxon/expr/instruct/ApplyTemplates;
.super Lnet/sf/saxon/expr/instruct/Instruction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/ITemplateCall;
.implements Lnet/sf/saxon/expr/ComponentInvocation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;
    }
.end annotation


# instance fields
.field protected _useTailRecursion:Z

.field protected implicitSelect:Z

.field protected inStreamableConstruct:Z

.field protected mode:Lnet/sf/saxon/trans/Mode;

.field public n:Lnet/sf/saxon/expr/Operand;

.field public o:Lnet/sf/saxon/expr/Operand;

.field public p:[Lnet/sf/saxon/expr/instruct/WithParam;

.field public q:[Lnet/sf/saxon/expr/instruct/WithParam;

.field public r:I

.field protected ruleManager:Lnet/sf/saxon/trans/rules/RuleManager;

.field protected useCurrentMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->useCurrentMode:Z

    .line 3
    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->_useTailRecursion:Z

    .line 4
    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->inStreamableConstruct:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->r:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/Expression;ZZZZLnet/sf/saxon/trans/Mode;Lnet/sf/saxon/trans/rules/RuleManager;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/Instruction;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->useCurrentMode:Z

    .line 8
    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->_useTailRecursion:Z

    .line 9
    iput-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->inStreamableConstruct:Z

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->r:I

    .line 11
    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->n:Lnet/sf/saxon/expr/Operand;

    .line 12
    invoke-virtual {p0, p1, p2, p3, p6}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->init(Lnet/sf/saxon/expr/Expression;ZZLnet/sf/saxon/trans/Mode;)V

    .line 13
    iput-boolean p4, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->implicitSelect:Z

    .line 14
    iput-boolean p5, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->inStreamableConstruct:Z

    .line 15
    iput-object p7, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->ruleManager:Lnet/sf/saxon/trans/rules/RuleManager;

    return-void
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 1

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;->setReturnable(Z)V

    new-instance p2, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/parser/PathMap;->makeNewRoot(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;-><init>(Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;)V

    return-object p2
.end method

.method public apply(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Z)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getTargetMode(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/Component$M;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v3

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->o:Lnet/sf/saxon/expr/Operand;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->makeSeparator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-static {p2, v0}, Lnet/sf/saxon/expr/instruct/Instruction;->assembleParams(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/instruct/WithParam;)Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-static {p2, v0}, Lnet/sf/saxon/expr/instruct/Instruction;->assembleTunnelParams(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/instruct/WithParam;)Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object v5

    if-eqz p3, :cond_1

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v7

    invoke-virtual {v7, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    new-instance p3, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->lazyEvaluate(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;Z)Lnet/sf/saxon/om/Sequence;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v8

    move-object v0, p3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lnet/sf/saxon/expr/instruct/ApplyTemplates$ApplyTemplatesPackage;-><init>(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/expr/Component$M;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/s9api/Location;)V

    return-object p3

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p3

    invoke-virtual {p3, p2}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p3

    instance-of v0, p3, Lnet/sf/saxon/tree/iter/EmptyIterator;

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v8

    invoke-virtual {v8, p3}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    invoke-virtual {v8, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentMode(Lnet/sf/saxon/expr/Component$M;)V

    invoke-virtual {v8, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {v8, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    iget-boolean p3, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->inStreamableConstruct:Z

    if-eqz p3, :cond_3

    invoke-virtual {v8, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/event/Outputter;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p3

    invoke-virtual {p3, v8}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v9

    move-object v7, p1

    invoke-virtual/range {v3 .. v9}, Lnet/sf/saxon/trans/Mode;->applyTemplates(Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    invoke-virtual {p3, p2}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    return-object v1

    :catch_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException$StackOverflow;

    const-string p3, "SXLM0001"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const-string v0, "Too many nested apply-templates calls. The stylesheet may be looping."

    invoke-direct {p1, v0, p3, p0}, Lnet/sf/saxon/trans/XPathException$StackOverflow;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 9

    new-instance v8, Lnet/sf/saxon/expr/instruct/ApplyTemplates;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->useCurrentMode:Z

    iget-boolean v3, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->_useTailRecursion:Z

    iget-boolean v4, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->implicitSelect:Z

    iget-boolean v5, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->inStreamableConstruct:Z

    iget-object v6, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->mode:Lnet/sf/saxon/trans/Mode;

    iget-object v7, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->ruleManager:Lnet/sf/saxon/trans/rules/RuleManager;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;-><init>(Lnet/sf/saxon/expr/Expression;ZZZZLnet/sf/saxon/trans/Mode;Lnet/sf/saxon/trans/rules/RuleManager;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-static {v8, v0, p1}, Lnet/sf/saxon/expr/instruct/WithParam;->copy(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/RebindingMap;)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-virtual {v8, v0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-static {v8, v0, p1}, Lnet/sf/saxon/expr/instruct/WithParam;->copy(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/RebindingMap;)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-virtual {v8, v0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setTunnelParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-static {p0, v8}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->ruleManager:Lnet/sf/saxon/trans/rules/RuleManager;

    iput-object v0, v8, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->ruleManager:Lnet/sf/saxon/trans/rules/RuleManager;

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->o:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSeparatorExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {v8, p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setSeparatorExpression(Lnet/sf/saxon/expr/Expression;)V

    :cond_0
    return-object v8
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "applyT"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->mode:Lnet/sf/saxon/trans/Mode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->isUnnamedMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->mode:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Lnet/sf/saxon/om/StructuredQName;)V

    :cond_0
    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->useCurrentMode:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string v0, "c"

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->_useTailRecursion:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-boolean v2, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->implicitSelect:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "i"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "flags"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getBindingSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bSlot"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "select"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->o:Lnet/sf/saxon/expr/Operand;

    if-eqz v0, :cond_5

    const-string v0, "separator"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setChildRole(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSeparatorExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lnet/sf/saxon/expr/instruct/WithParam;->exportParameters([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/trace/ExpressionPresenter;Z)V

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->exportParameters([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/trace/ExpressionPresenter;Z)V

    :cond_7
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-object p0
.end method

.method public getBindingSlot()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->r:I

    return p0
.end method

.method public getFixedTarget()Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->mode:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/expr/instruct/Instruction;->getImplementationMethod()I

    move-result p0

    or-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x85

    return p0
.end method

.method public getIntrinsicDependencies()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->getIntrinsicDependencies()I

    move-result v0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->useCurrentMode:Z

    or-int/2addr p0, v0

    return p0
.end method

.method public getMode()Lnet/sf/saxon/trans/Mode;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->mode:Lnet/sf/saxon/trans/Mode;

    return-object p0
.end method

.method public getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->ruleManager:Lnet/sf/saxon/trans/rules/RuleManager;

    return-object p0
.end method

.method public getSelect()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getSelectExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public getSeparatorExpression()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->o:Lnet/sf/saxon/expr/Operand;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ApplyTemplates"

    return-object p0
.end method

.method public getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->mode:Lnet/sf/saxon/trans/Mode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTargetMode(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/Component$M;
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->useCurrentMode:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->r:I

    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Lnet/sf/saxon/expr/XPathContext;->getTargetComponent(I)Lnet/sf/saxon/expr/Component;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Modes cannot be abstract"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->mode:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-object p0
.end method

.method public init(Lnet/sf/saxon/expr/Expression;ZZLnet/sf/saxon/trans/Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    iput-boolean p2, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->useCurrentMode:Z

    iput-boolean p3, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->_useTailRecursion:Z

    iput-object p4, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->mode:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public isImplicitSelect()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->implicitSelect:Z

    return p0
.end method

.method public makeSeparator(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->o:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/tree/util/Orphan;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    return-object v0
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

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->n:Lnet/sf/saxon/expr/Operand;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->o:Lnet/sf/saxon/expr/Operand;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->gatherOperands(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Ljava/util/List;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

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

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p1, v0, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {p1, v0, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->apply(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Z)Lnet/sf/saxon/expr/instruct/TailCall;

    return-void
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->_useTailRecursion:Z

    invoke-virtual {p0, p1, p2, v0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->apply(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Z)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    return-object p0
.end method

.method public setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-void
.end method

.method public setBindingSlot(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->r:I

    return-void
.end method

.method public setMode(Lnet/sf/saxon/trans/SimpleMode;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->mode:Lnet/sf/saxon/trans/Mode;

    return-void
.end method

.method public setSelect(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    return-void
.end method

.method public setSeparatorExpression(Lnet/sf/saxon/expr/Expression;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Operand;

    sget-object v1, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    invoke-direct {v0, p0, p1, v1}, Lnet/sf/saxon/expr/Operand;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/OperandRole;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->o:Lnet/sf/saxon/expr/Operand;

    return-void
.end method

.method public setTunnelParams([Lnet/sf/saxon/expr/instruct/WithParam;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    return-void
.end method

.method public simplify()Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/instruct/WithParam;->simplify([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/expr/instruct/WithParam;->simplify([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->setSelect(Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->p:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->typeCheck([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->q:[Lnet/sf/saxon/expr/instruct/WithParam;

    invoke-static {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/WithParam;->typeCheck([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->n:Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->getSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_0
    return-object p0

    :catch_0
    move-exception p1

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->implicitSelect:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p0

    const-string p2, "XPTY0020"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const-string v1, "XTTE0510"

    if-nez p2, :cond_1

    const-string p2, "XPTY0019"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "XPDY0002"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot apply-templates to child nodes when the context item is absent"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot apply-templates to child nodes when the context item is an atomic value"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p0

    :cond_2
    throw p1
.end method

.method public useTailRecursion()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->_useTailRecursion:Z

    return p0
.end method

.method public usesCurrentMode()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/ApplyTemplates;->useCurrentMode:Z

    return p0
.end method
