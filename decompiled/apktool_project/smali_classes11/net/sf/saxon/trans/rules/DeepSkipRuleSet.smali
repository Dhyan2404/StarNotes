.class public Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/rules/BuiltInRuleSet;


# static fields
.field public static final e:Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;

    invoke-direct {v0}, Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;->e:Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;->e:Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;

    return-object v0
.end method


# virtual methods
.method public getActionForParentNodes(I)[Lnet/sf/saxon/trans/rules/BuiltInRules;
    .locals 0

    const/16 p0, 0x9

    if-ne p1, p0, :cond_0

    sget-object p0, Lnet/sf/saxon/trans/rules/BuiltInRules;->APPLY_TEMPLATES_TO_CHILDREN:Lnet/sf/saxon/trans/rules/BuiltInRules;

    filled-new-array {p0}, [Lnet/sf/saxon/trans/rules/BuiltInRules;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/trans/rules/BuiltInRules;->DEEP_SKIP:Lnet/sf/saxon/trans/rules/BuiltInRules;

    filled-new-array {p0}, [Lnet/sf/saxon/trans/rules/BuiltInRules;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "deep-skip"

    return-object p0
.end method

.method public process(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-interface {p5}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v7

    invoke-virtual {v7, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    const/4 p0, 0x3

    invoke-interface {p1, p0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    invoke-virtual {v7, p0}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    invoke-virtual {v7}, Lnet/sf/saxon/expr/XPathContextMajor;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    invoke-virtual {v7, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {v7}, Lnet/sf/saxon/expr/XPathContextMajor;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v2

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lnet/sf/saxon/trans/Mode;->applyTemplates(Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method
