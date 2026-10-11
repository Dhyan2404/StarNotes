.class public Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/rules/BuiltInRuleSet;


# static fields
.field public static final e:Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;

    invoke-direct {v0}, Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;-><init>()V

    sput-object v0, Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;->e:Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;->e:Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;

    return-object v0
.end method


# virtual methods
.method public getActionForParentNodes(I)[Lnet/sf/saxon/trans/rules/BuiltInRules;
    .locals 0

    sget-object p0, Lnet/sf/saxon/trans/rules/BuiltInRules;->APPLY_TEMPLATES_TO_CHILDREN:Lnet/sf/saxon/trans/rules/BuiltInRules;

    filled-new-array {p0}, [Lnet/sf/saxon/trans/rules/BuiltInRules;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "text-only"

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

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    const/16 p1, 0x9

    if-eq v2, p1, :cond_1

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p4, p0, p6, v1}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void

    :cond_1
    invoke-interface {p5}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v7

    invoke-virtual {v7, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-interface {v0, v4}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

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
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_4

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-static {p1}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayToSequence;->toSequence(Lnet/sf/saxon/ma/arrays/ArrayItem;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-interface {p5}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v5

    invoke-virtual {v5, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    invoke-virtual {v5, p1}, Lnet/sf/saxon/expr/XPathContextMinor;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/XPathContextMajor;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    invoke-virtual {v5, p0}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {v5}, Lnet/sf/saxon/expr/XPathContextMajor;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/Mode;->applyTemplates(Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_5

    invoke-interface {p0}, Lnet/sf/saxon/expr/instruct/TailCall;->processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    goto :goto_1

    :cond_4
    instance-of p0, p1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz p0, :cond_5

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p4, p0, p6, v1}, Lnet/sf/saxon/event/Outputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_5
    :goto_2
    return-void
.end method
