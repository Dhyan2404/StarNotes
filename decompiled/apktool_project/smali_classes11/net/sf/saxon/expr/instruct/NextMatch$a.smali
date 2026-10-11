.class public Lnet/sf/saxon/expr/instruct/NextMatch$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/instruct/TailCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/instruct/NextMatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lnet/sf/saxon/expr/instruct/NextMatch;

.field public final b:Lnet/sf/saxon/trans/rules/Rule;

.field public final c:Lnet/sf/saxon/expr/instruct/ParameterSet;

.field public final d:Lnet/sf/saxon/expr/instruct/ParameterSet;

.field public final e:Lnet/sf/saxon/event/Outputter;

.field public final f:Lnet/sf/saxon/expr/XPathContext;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/instruct/NextMatch;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/expr/instruct/ParameterSet;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->a:Lnet/sf/saxon/expr/instruct/NextMatch;

    iput-object p2, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->b:Lnet/sf/saxon/trans/rules/Rule;

    iput-object p3, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->c:Lnet/sf/saxon/expr/instruct/ParameterSet;

    iput-object p4, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->d:Lnet/sf/saxon/expr/instruct/ParameterSet;

    iput-object p5, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->e:Lnet/sf/saxon/event/Outputter;

    iput-object p6, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->f:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method


# virtual methods
.method public processLeavingTail()Lnet/sf/saxon/expr/instruct/TailCall;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->b:Lnet/sf/saxon/trans/rules/Rule;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/TemplateRule;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->initialize()V

    iget-object v1, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->a:Lnet/sf/saxon/expr/instruct/NextMatch;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setOrigin(Lnet/sf/saxon/expr/ContextOriginator;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->c:Lnet/sf/saxon/expr/instruct/ParameterSet;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setLocalParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->d:Lnet/sf/saxon/expr/instruct/ParameterSet;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setTunnelParameters(Lnet/sf/saxon/expr/instruct/ParameterSet;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->openStackFrame(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->b:Lnet/sf/saxon/trans/rules/Rule;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentTemplateRule(Lnet/sf/saxon/trans/rules/Rule;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/XPathContext;->getCurrentComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentMergeGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/XPathContext;->getCurrentMode()Lnet/sf/saxon/expr/Component$M;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/Mode;->isModeTracing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/XsltController;->getTemplateRuleTraceListener()Lnet/sf/saxon/trace/TemplateRuleTraceListener;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->a:Lnet/sf/saxon/expr/instruct/NextMatch;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->f:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v4}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v4

    const-string v5, "next-match"

    invoke-virtual {v2, v5, v3, v4, v0}, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->enter(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/instruct/TemplateRule;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/expr/instruct/TemplateRule;->applyLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    invoke-virtual {v2}, Lnet/sf/saxon/trace/TemplateRuleTraceListener;->leave()V

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/NextMatch$a;->e:Lnet/sf/saxon/event/Outputter;

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/expr/instruct/TemplateRule;->applyLeavingTail(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/instruct/TailCall;

    move-result-object p0

    return-object p0
.end method
