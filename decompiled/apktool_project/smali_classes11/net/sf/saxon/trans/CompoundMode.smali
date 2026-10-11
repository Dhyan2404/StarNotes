.class public Lnet/sf/saxon/trans/CompoundMode;
.super Lnet/sf/saxon/trans/Mode;
.source "SourceFile"


# instance fields
.field public final t:Lnet/sf/saxon/trans/Mode;

.field public final u:Lnet/sf/saxon/trans/SimpleMode;

.field public final v:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/trans/SimpleMode;)V
    .locals 2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/Mode;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    iput-object p2, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    iget-boolean p2, p1, Lnet/sf/saxon/trans/Mode;->mustBeTyped:Z

    iput-boolean p2, p0, Lnet/sf/saxon/trans/Mode;->mustBeTyped:Z

    iget-boolean p2, p1, Lnet/sf/saxon/trans/Mode;->mustBeUntyped:Z

    iput-boolean p2, p0, Lnet/sf/saxon/trans/Mode;->mustBeUntyped:Z

    invoke-virtual {p1}, Lnet/sf/saxon/trans/Mode;->getMaxPrecedence()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/trans/CompoundMode;->v:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Cannot override mode=\'#all\'"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Cannot override an unnamed mode"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Base and overriding modes must have the same name"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public allocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;)V
    .locals 2

    iget-boolean v0, p0, Lnet/sf/saxon/trans/Mode;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Component;->setComponentBindings(Ljava/util/List;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-static {p1, v0, v1}, Lnet/sf/saxon/trans/SimpleMode;->forceAllocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/SimpleMode;Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/trans/Mode;->p:Z

    :cond_0
    return-void
.end method

.method public computeRankings(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getMaxRank()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/SimpleMode;->computeRankings(I)V

    return-void
.end method

.method public explainTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/SimpleMode;->explainTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/Mode;->explainTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    return-void
.end method

.method public exportTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/SimpleMode;->exportTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/Mode;->exportTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    return-void
.end method

.method public getActivePart()Lnet/sf/saxon/trans/SimpleMode;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    return-object p0
.end method

.method public getBuiltInRuleSet()Lnet/sf/saxon/trans/rules/BuiltInRuleSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getBuiltInRuleSet()Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

    move-result-object p0

    return-object p0
.end method

.method public getExplicitNamespaces(Lnet/sf/saxon/om/NamePool;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/NamePool;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/trans/Mode;->getExplicitNamespaces(Lnet/sf/saxon/om/NamePool;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/SimpleMode;->getExplicitNamespaces(Lnet/sf/saxon/om/NamePool;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getMaxPrecedence()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/CompoundMode;->v:I

    return p0
.end method

.method public getMaxRank()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SimpleMode;->getMaxRank()I

    move-result p0

    return p0
.end method

.method public getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/trans/SimpleMode;->getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/Mode;->getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Item;",
            "Lnet/sf/saxon/expr/XPathContext;",
            "Ljava/util/function/Predicate<",
            "Lnet/sf/saxon/trans/rules/Rule;",
            ">;)",
            "Lnet/sf/saxon/trans/rules/Rule;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/trans/SimpleMode;->getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/trans/Mode;->getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStackFrameSlotsNeeded()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->getStackFrameSlotsNeeded()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SimpleMode;->getStackFrameSlotsNeeded()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SimpleMode;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/CompoundMode;->u:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/SimpleMode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/CompoundMode;->t:Lnet/sf/saxon/trans/Mode;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/Mode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V

    return-void
.end method
