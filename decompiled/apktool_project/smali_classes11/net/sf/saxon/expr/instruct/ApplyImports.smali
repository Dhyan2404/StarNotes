.class public Lnet/sf/saxon/expr/instruct/ApplyImports;
.super Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/ITemplateCall;


# static fields
.field public static final synthetic p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/instruct/ApplyImports;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/ApplyImports;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lnet/sf/saxon/expr/instruct/WithParam;->copy(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/RebindingMap;)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->setActualParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lnet/sf/saxon/expr/instruct/WithParam;->copy(Lnet/sf/saxon/expr/Expression;[Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/expr/parser/RebindingMap;)[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->setTunnelParams([Lnet/sf/saxon/expr/instruct/WithParam;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "applyImports"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)I

    const-string v0, "flags"

    const-string v1, "i"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lnet/sf/saxon/expr/instruct/WithParam;->exportParameters([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/trace/ExpressionPresenter;Z)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/expr/instruct/WithParam;->exportParameters([Lnet/sf/saxon/expr/instruct/WithParam;Lnet/sf/saxon/trace/ExpressionPresenter;Z)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getInstructionNameCode()I
    .locals 0

    const/16 p0, 0x84

    return p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "ApplyImports"

    return-object p0
.end method

.method public processLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->getActualParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    invoke-static {p2, v1}, Lnet/sf/saxon/expr/instruct/Instruction;->assembleParams(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/instruct/WithParam;)Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/ApplyNextMatchingTemplate;->getTunnelParams()[Lnet/sf/saxon/expr/instruct/WithParam;

    move-result-object v1

    invoke-static {p2, v1}, Lnet/sf/saxon/expr/instruct/Instruction;->assembleTunnelParams(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/expr/instruct/WithParam;)Lnet/sf/saxon/expr/instruct/ParameterSet;

    move-result-object v5

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getCurrentTemplateRule()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lnet/sf/saxon/trans/rules/Rule;->getMinImportPrecedence()I

    move-result v2

    invoke-virtual {v1}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getCurrentIterator()Lnet/sf/saxon/om/FocusIterator;

    move-result-object v6

    invoke-interface {v6}, Lnet/sf/saxon/om/FocusIterator;->current()Lnet/sf/saxon/om/Item;

    move-result-object v6

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v7

    invoke-virtual {v7, v6, v2, v1, p2}, Lnet/sf/saxon/trans/Mode;->getRule(Lnet/sf/saxon/om/Item;IILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v7}, Lnet/sf/saxon/trans/Mode;->getBuiltInRuleSet()Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v8

    move-object v3, v6

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v8}, Lnet/sf/saxon/trans/rules/BuiltInRuleSet;->process(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p2

    invoke-virtual {v1}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/TemplateRule;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->initialize()V

    invoke-virtual {p2, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {p2, v4}, Lnet/sf/saxon/expr/XPathContextMajor;->setLocalParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    invoke-virtual {p2, v5}, Lnet/sf/saxon/expr/XPathContextMajor;->setTunnelParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v4

    invoke-virtual {p2, v4}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    invoke-virtual {p2, v1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentTemplateRule(Lnet/sf/saxon/trans/rules/Rule;)V

    invoke-virtual {p2, v3}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {p2, v9}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentMergeGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    invoke-virtual {v7}, Lnet/sf/saxon/trans/Mode;->isModeTracing()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XsltController;->getTemplateRuleTraceListener()Lnet/sf/saxon/trace/TemplateRuleTraceListener;

    move-result-object v0

    const-string v1, "apply-imports"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, v1, p0, v6, v2}, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->enter(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/TemplateRule;)V

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->apply(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->leave()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/expr/instruct/TemplateRule;->apply(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;)V

    :goto_0
    return-object v9

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Current mode is null"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "There is no current template rule"

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p2, "XTDE0560"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method
