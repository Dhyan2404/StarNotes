.class public Lnet/sf/saxon/trans/SimpleMode;
.super Lnet/sf/saxon/trans/Mode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;,
        Lnet/sf/saxon/trans/SimpleMode$c;,
        Lnet/sf/saxon/trans/SimpleMode$b;
    }
.end annotation


# static fields
.field public static final synthetic J:Z


# instance fields
.field protected atomicValueRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

.field protected commentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

.field protected documentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

.field protected functionItemRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

.field protected final genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

.field protected namedAttributeRuleChains:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lnet/sf/saxon/trans/rules/RuleChain;",
            ">;"
        }
    .end annotation
.end field

.field protected namedElementRuleChains:Lnet/sf/saxon/z/IntHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lnet/sf/saxon/trans/rules/RuleChain;",
            ">;"
        }
    .end annotation
.end field

.field protected namespaceRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

.field protected processingInstructionRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

.field protected qNamedAttributeRuleChains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/trans/rules/RuleChain;",
            ">;"
        }
    .end annotation
.end field

.field protected qNamedElementRuleChains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/trans/rules/RuleChain;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

.field protected textRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

.field public u:Lnet/sf/saxon/trans/rules/Rule;

.field protected unnamedAttributeRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

.field protected unnamedElementRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

.field public v:I

.field public w:I

.field public x:I

.field public final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/Mode;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    new-instance p1, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-direct {p1}, Lnet/sf/saxon/trans/rules/RuleChain;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    new-instance p1, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-direct {p1}, Lnet/sf/saxon/trans/rules/RuleChain;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->atomicValueRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    new-instance p1, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-direct {p1}, Lnet/sf/saxon/trans/rules/RuleChain;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->functionItemRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    new-instance p1, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-direct {p1}, Lnet/sf/saxon/trans/rules/RuleChain;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->documentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    new-instance p1, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-direct {p1}, Lnet/sf/saxon/trans/rules/RuleChain;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->textRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    new-instance p1, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-direct {p1}, Lnet/sf/saxon/trans/rules/RuleChain;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->commentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    new-instance p1, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-direct {p1}, Lnet/sf/saxon/trans/rules/RuleChain;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->processingInstructionRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    new-instance p1, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-direct {p1}, Lnet/sf/saxon/trans/rules/RuleChain;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->namespaceRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    new-instance p1, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-direct {p1}, Lnet/sf/saxon/trans/rules/RuleChain;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->unnamedElementRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    new-instance p1, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-direct {p1}, Lnet/sf/saxon/trans/rules/RuleChain;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->unnamedAttributeRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    new-instance p1, Lnet/sf/saxon/z/IntHashMap;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->namedElementRuleChains:Lnet/sf/saxon/z/IntHashMap;

    new-instance p1, Lnet/sf/saxon/z/IntHashMap;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->namedAttributeRuleChains:Lnet/sf/saxon/z/IntHashMap;

    invoke-static {}, Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->t:Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/saxon/trans/SimpleMode;->w:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->y:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->z:Ljava/util/Map;

    return-void
.end method

.method public static copyRules(Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/trans/SimpleMode;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/sunia/HTREnginev2/msm;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/msm;-><init>(Lnet/sf/saxon/trans/SimpleMode;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/SimpleMode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->u:Lnet/sf/saxon/trans/rules/Rule;

    iput-object v0, p1, Lnet/sf/saxon/trans/SimpleMode;->u:Lnet/sf/saxon/trans/rules/Rule;

    iget p0, p0, Lnet/sf/saxon/trans/SimpleMode;->v:I

    iput p0, p1, Lnet/sf/saxon/trans/SimpleMode;->v:I

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic f(Lnet/sf/saxon/expr/instruct/SlotManager;Ljava/util/List;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/trans/SimpleMode;->n(Lnet/sf/saxon/expr/instruct/SlotManager;Ljava/util/List;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method

.method public static forceAllocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/SimpleMode;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/style/StylesheetPackage;",
            "Lnet/sf/saxon/trans/SimpleMode;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/ComponentBinding;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    :try_start_0
    new-instance v6, Lcom/sunia/HTREnginev2/lsm;

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/lsm;-><init>(Ljava/util/IdentityHashMap;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/SimpleMode;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p1, v6}, Lnet/sf/saxon/trans/SimpleMode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic g(Ljava/util/IdentityHashMap;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/SimpleMode;Ljava/util/List;Ljava/util/Set;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lnet/sf/saxon/trans/SimpleMode;->r(Ljava/util/IdentityHashMap;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/SimpleMode;Ljava/util/List;Ljava/util/Set;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method

.method public static synthetic h(Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/SimpleMode;->q(Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method

.method public static synthetic i(Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/SimpleMode;->o(Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method

.method public static synthetic j(Ljava/util/List;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/SimpleMode;->s(Ljava/util/List;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method

.method public static synthetic k(Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/SimpleMode;->p(Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method

.method public static m(Lnet/sf/saxon/om/NamePool;Lnet/sf/saxon/z/IntHashMap;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/NamePool;",
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lnet/sf/saxon/trans/rules/RuleChain;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/trans/rules/RuleChain;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntHashMap;->keyIterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/om/NamePool;->getStructuredQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic n(Lnet/sf/saxon/expr/instruct/SlotManager;Ljava/util/List;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p2}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lnet/sf/saxon/pattern/Pattern;->allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I

    move-result p0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic o(Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/rules/Rule;->copy(Z)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/trans/SimpleMode;->addRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method

.method private synthetic p(Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result p0

    invoke-virtual {p2, p1, p0}, Lnet/sf/saxon/trans/rules/Rule;->export(Lnet/sf/saxon/trace/ExpressionPresenter;Z)V

    return-void
.end method

.method private synthetic q(Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result p0

    invoke-virtual {p2, p1, p0}, Lnet/sf/saxon/trans/rules/Rule;->export(Lnet/sf/saxon/trace/ExpressionPresenter;Z)V

    return-void
.end method

.method public static synthetic r(Ljava/util/IdentityHashMap;Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/SimpleMode;Ljava/util/List;Ljava/util/Set;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p5}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p2, v0, p3}, Lnet/sf/saxon/expr/instruct/Actor;->allocateBindingSlotsRecursive(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p5}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/TemplateRule;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p5

    if-eqz p5, :cond_1

    invoke-interface {p4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/TemplateRule;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object p5

    invoke-static {p1, p2, p5, p3}, Lnet/sf/saxon/expr/instruct/Actor;->allocateBindingSlotsRecursive(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/expr/instruct/Actor;Lnet/sf/saxon/expr/Expression;Ljava/util/List;)V

    invoke-interface {p4, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static synthetic s(Ljava/util/List;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static t(Lnet/sf/saxon/pattern/Pattern;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->collapseWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 2

    .line 18
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    .line 19
    sget-object v1, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getFingerprint()I

    move-result p1

    .line 21
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->unnamedElementRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    iget-object v1, p0, Lnet/sf/saxon/trans/SimpleMode;->namedElementRuleChains:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p0, p2, p1, v0, v1}, Lnet/sf/saxon/trans/SimpleMode;->addRuleToNamedOrUnnamedChain(Lnet/sf/saxon/trans/rules/Rule;ILnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/z/IntHashMap;)V

    goto/16 :goto_0

    .line 22
    :cond_0
    sget-object v1, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getFingerprint()I

    move-result p1

    .line 24
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->unnamedAttributeRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    iget-object v1, p0, Lnet/sf/saxon/trans/SimpleMode;->namedAttributeRuleChains:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p0, p2, p1, v0, v1}, Lnet/sf/saxon/trans/SimpleMode;->addRuleToNamedOrUnnamedChain(Lnet/sf/saxon/trans/rules/Rule;ILnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/z/IntHashMap;)V

    goto :goto_0

    .line 25
    :cond_1
    sget-object p1, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->documentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/trans/SimpleMode;->l(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)V

    goto :goto_0

    .line 27
    :cond_2
    sget-object p1, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 28
    iget-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->textRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/trans/SimpleMode;->l(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)V

    goto :goto_0

    .line 29
    :cond_3
    sget-object p1, Lnet/sf/saxon/type/UType;->COMMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    iget-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->commentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/trans/SimpleMode;->l(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)V

    goto :goto_0

    .line 31
    :cond_4
    sget-object p1, Lnet/sf/saxon/type/UType;->PI:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 32
    iget-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->processingInstructionRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/trans/SimpleMode;->l(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)V

    goto :goto_0

    .line 33
    :cond_5
    sget-object p1, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 34
    iget-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->namespaceRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/trans/SimpleMode;->l(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)V

    goto :goto_0

    .line 35
    :cond_6
    sget-object p1, Lnet/sf/saxon/type/UType;->ANY_ATOMIC:Lnet/sf/saxon/type/UType;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 36
    iget-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->atomicValueRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/trans/SimpleMode;->l(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)V

    goto :goto_0

    .line 37
    :cond_7
    sget-object p1, Lnet/sf/saxon/type/UType;->FUNCTION:Lnet/sf/saxon/type/UType;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 38
    iget-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->functionItemRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/trans/SimpleMode;->l(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)V

    goto :goto_0

    .line 39
    :cond_8
    iget-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/trans/SimpleMode;->l(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)V

    :goto_0
    return-void
.end method

.method public addRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/RuleTarget;Lnet/sf/saxon/style/StylesheetModule;IDII)V
    .locals 13

    move-object v9, p0

    move-object v10, p1

    const/4 v11, 0x1

    .line 1
    iput-boolean v11, v9, Lnet/sf/saxon/trans/Mode;->o:Z

    .line 2
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/type/ErrorType;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 4
    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/style/StylesheetModule;->getMinImportPrecedence()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    .line 5
    invoke-virtual/range {v0 .. v8}, Lnet/sf/saxon/trans/SimpleMode;->makeRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/RuleTarget;IIDII)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    .line 6
    instance-of v1, v10, Lnet/sf/saxon/pattern/NodeTestPattern;

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    .line 8
    instance-of v2, v1, Lnet/sf/saxon/pattern/AnyNodeTest;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0, v11}, Lnet/sf/saxon/trans/rules/Rule;->setAlwaysMatches(Z)V

    goto :goto_0

    .line 10
    :cond_1
    instance-of v2, v1, Lnet/sf/saxon/pattern/NodeKindTest;

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v0, v11}, Lnet/sf/saxon/trans/rules/Rule;->setAlwaysMatches(Z)V

    goto :goto_0

    .line 12
    :cond_2
    instance-of v2, v1, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v2, :cond_4

    .line 13
    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->getPrimitiveType()I

    move-result v1

    if-eq v1, v11, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 14
    :cond_3
    invoke-virtual {v0, v11}, Lnet/sf/saxon/trans/rules/Rule;->setAlwaysMatches(Z)V

    .line 15
    :cond_4
    :goto_0
    iput-object v0, v9, Lnet/sf/saxon/trans/SimpleMode;->u:Lnet/sf/saxon/trans/rules/Rule;

    .line 16
    iput v12, v9, Lnet/sf/saxon/trans/SimpleMode;->v:I

    .line 17
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/SimpleMode;->addRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/Rule;)V

    return-void
.end method

.method public addRuleToNamedOrUnnamedChain(Lnet/sf/saxon/trans/rules/Rule;ILnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/z/IntHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/rules/Rule;",
            "I",
            "Lnet/sf/saxon/trans/rules/RuleChain;",
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lnet/sf/saxon/trans/rules/RuleChain;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/trans/SimpleMode;->l(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4, p2}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/sf/saxon/trans/rules/RuleChain;

    if-nez p3, :cond_1

    new-instance p0, Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/rules/RuleChain;-><init>(Lnet/sf/saxon/trans/rules/Rule;)V

    invoke-virtual {p4, p2, p0}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/trans/SimpleMode;->l(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)V

    :goto_0
    return-void
.end method

.method public allocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/trans/Mode;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getComponentBindings()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lnet/sf/saxon/trans/SimpleMode;->forceAllocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/SimpleMode;Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/trans/Mode;->p:Z

    :cond_0
    return-void
.end method

.method public allocateAllPatternSlots()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lnet/sf/saxon/expr/instruct/SlotManager;

    invoke-direct {v2}, Lnet/sf/saxon/expr/instruct/SlotManager;-><init>()V

    :try_start_0
    new-instance v3, Lcom/sunia/HTREnginev2/gsm;

    invoke-direct {v3, v2, v0}, Lcom/sunia/HTREnginev2/gsm;-><init>(Lnet/sf/saxon/expr/instruct/SlotManager;Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/trans/SimpleMode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/sf/saxon/trans/SimpleMode;->w:I

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public allocatePatternSlots(I)V
    .locals 1

    iget v0, p0, Lnet/sf/saxon/trans/SimpleMode;->w:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/sf/saxon/trans/SimpleMode;->w:I

    return-void
.end method

.method public computeRankings(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/SimpleMode$c;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/SimpleMode$c;-><init>(I)V

    new-instance v1, Lcom/sunia/HTREnginev2/ksm;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ksm;-><init>(Lnet/sf/saxon/trans/SimpleMode$c;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/SimpleMode$c;->c()V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/SimpleMode$c;->d()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lnet/sf/saxon/trans/SimpleMode;->x:I

    return-void
.end method

.method public computeStreamability()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public explainTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/ism;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/ism;-><init>(Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :try_start_0
    new-instance v1, Lnet/sf/saxon/trans/SimpleMode$b;

    invoke-direct {v1, p1}, Lnet/sf/saxon/trans/SimpleMode$b;-><init>(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public exportTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/hsm;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/hsm;-><init>(Lnet/sf/saxon/trans/SimpleMode;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/SimpleMode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V

    return-void
.end method

.method public getActivePart()Lnet/sf/saxon/trans/SimpleMode;
    .locals 0

    return-object p0
.end method

.method public getBuiltInRuleSet()Lnet/sf/saxon/trans/rules/BuiltInRuleSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/SimpleMode;->t:Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

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

    iget-object p0, p0, Lnet/sf/saxon/trans/SimpleMode;->namedElementRuleChains:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap;->keyIterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/om/NamePool;->getURI(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isUnnamedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "the unnamed mode"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/trans/Mode;->modeName:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMaxPrecedence()I
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/sunia/HTREnginev2/jsm;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/jsm;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/SimpleMode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getMaxRank()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/SimpleMode;->x:I

    return p0
.end method

.method public getNamedRuleChain(Lnet/sf/saxon/expr/XPathContext;ILjava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/rules/RuleChain;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->qNamedElementRuleChains:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lnet/sf/saxon/trans/SimpleMode;->namedElementRuleChains:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v1}, Lnet/sf/saxon/z/IntHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->qNamedElementRuleChains:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lnet/sf/saxon/trans/SimpleMode;->namedAttributeRuleChains:Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {v1}, Lnet/sf/saxon/z/IntHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->qNamedAttributeRuleChains:Ljava/util/Map;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->namedElementRuleChains:Lnet/sf/saxon/z/IntHashMap;

    iget-object v1, p0, Lnet/sf/saxon/trans/SimpleMode;->qNamedElementRuleChains:Ljava/util/Map;

    invoke-static {p1, v0, v1}, Lnet/sf/saxon/trans/SimpleMode;->m(Lnet/sf/saxon/om/NamePool;Lnet/sf/saxon/z/IntHashMap;Ljava/util/Map;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->namedAttributeRuleChains:Lnet/sf/saxon/z/IntHashMap;

    iget-object v1, p0, Lnet/sf/saxon/trans/SimpleMode;->qNamedAttributeRuleChains:Ljava/util/Map;

    invoke-static {p1, v0, v1}, Lnet/sf/saxon/trans/SimpleMode;->m(Lnet/sf/saxon/om/NamePool;Lnet/sf/saxon/z/IntHashMap;Ljava/util/Map;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/trans/SimpleMode;->qNamedElementRuleChains:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/trans/SimpleMode;->qNamedAttributeRuleChains:Ljava/util/Map;

    :goto_0
    new-instance p1, Lnet/sf/saxon/om/StructuredQName;

    const-string p2, ""

    invoke-direct {p1, p2, p3, p4}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/rules/RuleChain;

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/SimpleMode;->z:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/sf/saxon/trans/SimpleMode;->w:I

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/Mode;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContext;

    move-result-object p2

    .line 3
    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4
    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    .line 5
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->namespaceRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_2

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unknown node kind"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 8
    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->documentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->commentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_2

    .line 10
    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->processingInstructionRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_2

    .line 11
    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->textRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_2

    .line 12
    :cond_6
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->unnamedAttributeRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    .line 13
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 14
    iget-object v2, p0, Lnet/sf/saxon/trans/SimpleMode;->namedAttributeRuleChains:Lnet/sf/saxon/z/IntHashMap;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_0

    .line 15
    :cond_7
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v2, v3, v4}, Lnet/sf/saxon/trans/SimpleMode;->getNamedRuleChain(Lnet/sf/saxon/expr/XPathContext;ILjava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/rules/RuleChain;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_a

    .line 16
    invoke-virtual {p0, p1, p2, v1, v2}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    goto :goto_2

    .line 17
    :cond_8
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->unnamedElementRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    .line 18
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 19
    iget-object v2, p0, Lnet/sf/saxon/trans/SimpleMode;->namedElementRuleChains:Lnet/sf/saxon/z/IntHashMap;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_1

    .line 20
    :cond_9
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v2, v3, v4}, Lnet/sf/saxon/trans/SimpleMode;->getNamedRuleChain(Lnet/sf/saxon/expr/XPathContext;ILjava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/rules/RuleChain;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_a

    .line 21
    invoke-virtual {p0, p1, p2, v1, v2}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    :cond_a
    :goto_2
    if-eqz v0, :cond_b

    .line 22
    invoke-virtual {p0, p1, p2, v1, v0}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    .line 23
    :cond_b
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, p1, p2, v1, v0}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    goto :goto_3

    .line 24
    :cond_c
    instance-of v0, p1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_e

    .line 25
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->atomicValueRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    if-eqz v0, :cond_d

    .line 26
    invoke-virtual {p0, p1, p2, v1, v0}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    .line 27
    :cond_d
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, p1, p2, v1, v0}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    goto :goto_3

    .line 28
    :cond_e
    instance-of v0, p1, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_10

    .line 29
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->functionItemRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    if-eqz v0, :cond_f

    .line 30
    invoke-virtual {p0, p1, p2, v1, v0}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    .line 31
    :cond_f
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, p1, p2, v1, v0}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    :cond_10
    :goto_3
    return-object v1
.end method

.method public getRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;
    .locals 8
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

    .line 32
    iget v0, p0, Lnet/sf/saxon/trans/SimpleMode;->w:I

    if-lez v0, :cond_0

    .line 33
    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/Mode;->makeNewContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/XPathContext;

    move-result-object p2

    :cond_0
    const/4 v3, 0x0

    .line 34
    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_b

    .line 35
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    .line 36
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v0, 0x3

    if-eq v1, v0, :cond_5

    const/4 v0, 0x7

    if-eq v1, v0, :cond_4

    const/16 v0, 0x8

    if-eq v1, v0, :cond_3

    const/16 v0, 0x9

    if-eq v1, v0, :cond_2

    const/16 v0, 0xd

    if-ne v1, v0, :cond_1

    .line 37
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->namespaceRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unknown node kind"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 39
    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->documentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_0

    .line 40
    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->commentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_0

    .line 41
    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->processingInstructionRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_0

    .line 42
    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->textRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    :goto_0
    move-object v4, v0

    goto/16 :goto_4

    .line 43
    :cond_6
    iget-object v7, p0, Lnet/sf/saxon/trans/SimpleMode;->unnamedAttributeRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    .line 44
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 45
    iget-object v1, p0, Lnet/sf/saxon/trans/SimpleMode;->namedAttributeRuleChains:Lnet/sf/saxon/z/IntHashMap;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_1

    .line 46
    :cond_7
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v2, v1, v0}, Lnet/sf/saxon/trans/SimpleMode;->getNamedRuleChain(Lnet/sf/saxon/expr/XPathContext;ILjava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/rules/RuleChain;

    move-result-object v0

    :goto_1
    move-object v4, v0

    if-eqz v4, :cond_a

    .line 47
    invoke-virtual {p0, v4, p2}, Lnet/sf/saxon/trans/SimpleMode;->makeRuleSearchState(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/RuleSearchState;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 48
    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/rules/RuleSearchState;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    goto :goto_3

    .line 49
    :cond_8
    iget-object v7, p0, Lnet/sf/saxon/trans/SimpleMode;->unnamedElementRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    .line 50
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasFingerprint()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 51
    iget-object v1, p0, Lnet/sf/saxon/trans/SimpleMode;->namedElementRuleChains:Lnet/sf/saxon/z/IntHashMap;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getFingerprint()I

    move-result v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/rules/RuleChain;

    goto :goto_2

    .line 52
    :cond_9
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v2, v1, v0}, Lnet/sf/saxon/trans/SimpleMode;->getNamedRuleChain(Lnet/sf/saxon/expr/XPathContext;ILjava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/trans/rules/RuleChain;

    move-result-object v0

    :goto_2
    move-object v4, v0

    if-eqz v4, :cond_a

    .line 53
    invoke-virtual {p0, v4, p2}, Lnet/sf/saxon/trans/SimpleMode;->makeRuleSearchState(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/RuleSearchState;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 54
    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/rules/RuleSearchState;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    :goto_3
    move-object v3, v0

    :cond_a
    move-object v4, v7

    .line 55
    :goto_4
    invoke-virtual {p0, v4, p2}, Lnet/sf/saxon/trans/SimpleMode;->makeRuleSearchState(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/RuleSearchState;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 56
    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/rules/RuleSearchState;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v3

    .line 57
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/trans/SimpleMode;->makeRuleSearchState(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/RuleSearchState;

    move-result-object v5

    .line 58
    iget-object v4, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/rules/RuleSearchState;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    return-object p0

    .line 59
    :cond_b
    instance-of v0, p1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_d

    .line 60
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->atomicValueRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    if-eqz v0, :cond_c

    .line 61
    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/trans/SimpleMode;->makeRuleSearchState(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/RuleSearchState;

    move-result-object v5

    .line 62
    iget-object v4, p0, Lnet/sf/saxon/trans/SimpleMode;->atomicValueRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/rules/RuleSearchState;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    move-object v3, v0

    .line 63
    :cond_c
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/trans/SimpleMode;->makeRuleSearchState(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/RuleSearchState;

    move-result-object v5

    .line 64
    iget-object v4, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/rules/RuleSearchState;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    return-object p0

    .line 65
    :cond_d
    instance-of v0, p1, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_f

    .line 66
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->functionItemRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    if-eqz v0, :cond_e

    .line 67
    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/trans/SimpleMode;->makeRuleSearchState(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/RuleSearchState;

    move-result-object v5

    .line 68
    iget-object v4, p0, Lnet/sf/saxon/trans/SimpleMode;->functionItemRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/rules/RuleSearchState;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    move-object v3, v0

    .line 69
    :cond_e
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/trans/SimpleMode;->makeRuleSearchState(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/RuleSearchState;

    move-result-object v5

    .line 70
    iget-object v4, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/trans/SimpleMode;->searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/rules/RuleSearchState;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStackFrameSlotsNeeded()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/SimpleMode;->w:I

    return p0
.end method

.method public invertStreamableTemplates()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/Mode;->o:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final l(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)V
    .locals 8

    invoke-virtual {p2}, Lnet/sf/saxon/trans/rules/RuleChain;->head()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/rules/RuleChain;->setHead(Lnet/sf/saxon/trans/rules/Rule;)V

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result p0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getPriority()D

    move-result-wide v0

    invoke-virtual {p2}, Lnet/sf/saxon/trans/rules/RuleChain;->head()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result v5

    if-lt v5, p0, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result v5

    if-ne v5, p0, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getPriority()D

    move-result-wide v5

    cmpg-double v5, v5, v0

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Lnet/sf/saxon/trans/rules/Rule;->setNext(Lnet/sf/saxon/trans/rules/Rule;)V

    if-nez v4, :cond_3

    invoke-virtual {p2, p1}, Lnet/sf/saxon/trans/rules/RuleChain;->setHead(Lnet/sf/saxon/trans/rules/Rule;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4, p1}, Lnet/sf/saxon/trans/rules/Rule;->setNext(Lnet/sf/saxon/trans/rules/Rule;)V

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    invoke-virtual {v4, p1}, Lnet/sf/saxon/trans/rules/Rule;->setNext(Lnet/sf/saxon/trans/rules/Rule;)V

    invoke-virtual {p1, v3}, Lnet/sf/saxon/trans/rules/Rule;->setNext(Lnet/sf/saxon/trans/rules/Rule;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public makeRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/RuleTarget;IIDII)Lnet/sf/saxon/trans/rules/Rule;
    .locals 10

    new-instance v9, Lnet/sf/saxon/trans/rules/Rule;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lnet/sf/saxon/trans/rules/Rule;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/RuleTarget;IIDII)V

    return-object v9
.end method

.method public makeRuleSearchState(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/RuleSearchState;
    .locals 0

    new-instance p0, Lnet/sf/saxon/trans/rules/RuleSearchState;

    invoke-direct {p0}, Lnet/sf/saxon/trans/rules/RuleSearchState;-><init>()V

    return-object p0
.end method

.method public optimizeRules()V
    .locals 0

    return-void
.end method

.method public prepareStreamability()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/RuleChain;->head()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p2, p0}, Lnet/sf/saxon/trans/Mode$RuleAction;->processRule(Lnet/sf/saxon/trans/rules/Rule;)V

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/RuleChain;->head()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p3}, Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;->start()V

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 6
    invoke-interface {p2, p0}, Lnet/sf/saxon/trans/Mode$RuleAction;->processRule(Lnet/sf/saxon/trans/rules/Rule;)V

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 8
    invoke-interface {p3}, Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;->end()V

    :cond_3
    return-void
.end method

.method public processRuleChains(Lnet/sf/saxon/z/IntHashMap;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/z/IntHashMap<",
            "Lnet/sf/saxon/trans/rules/RuleChain;",
            ">;",
            "Lnet/sf/saxon/trans/Mode$RuleAction;",
            "Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntHashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;->start()V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/z/IntHashMap;->keyIterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    if-eqz p3, :cond_2

    invoke-interface {p3, v1}, Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;->start(I)V

    :cond_2
    invoke-virtual {p1, v1}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/rules/RuleChain;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;->end()V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {p3}, Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;->end()V

    :cond_4
    return-void
.end method

.method public processRules(Lnet/sf/saxon/trans/Mode$RuleAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/trans/SimpleMode;->processRules(Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    return-void
.end method

.method public processRules(Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->documentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    const-string v1, "document-node()"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->unnamedElementRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    const-string v1, "element()"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->namedElementRuleChains:Lnet/sf/saxon/z/IntHashMap;

    const-string v1, "namedElements"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChains(Lnet/sf/saxon/z/IntHashMap;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    .line 5
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->unnamedAttributeRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    const-string v1, "attribute()"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    .line 6
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->namedAttributeRuleChains:Lnet/sf/saxon/z/IntHashMap;

    const-string v1, "namedAttributes"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChains(Lnet/sf/saxon/z/IntHashMap;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    .line 7
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->textRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    const-string v1, "text()"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    .line 8
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->commentRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    const-string v1, "comment()"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    .line 9
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->processingInstructionRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    const-string v1, "processing-instruction()"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    .line 10
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->namespaceRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    const-string v1, "namespace()"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    .line 11
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->genericRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    const-string v1, "node()"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    .line 12
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->atomicValueRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    const-string v1, "atomicValue"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    .line 13
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->functionItemRuleChain:Lnet/sf/saxon/trans/rules/RuleChain;

    const-string v1, "function()"

    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/trans/SimpleMode;->setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lnet/sf/saxon/trans/SimpleMode;->processRuleChain(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/Mode$RuleAction;Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;)V

    return-void
.end method

.method public reportAmbiguity(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getRecoveryPolicy()Lnet/sf/saxon/trans/RecoveryPolicy;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_SILENTLY:Lnet/sf/saxon/trans/RecoveryPolicy;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object v0

    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/trans/rules/Rule;->getSequence()I

    move-result v0

    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getSequence()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p1}, Lnet/sf/saxon/tree/util/Navigator;->getPath(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {p2}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object p2

    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object p3

    const-string v2, "Ambiguous rule match for "

    const-string v3, " of "

    const-string v4, "\" on line "

    if-ne p2, p3, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Matches \""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/trans/SimpleMode;->t(Lnet/sf/saxon/pattern/Pattern;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", a rule which appears in the stylesheet more than once, because the containing module was included more than once"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "Matches both \""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/trans/SimpleMode;->t(Lnet/sf/saxon/pattern/Pattern;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nand \""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lnet/sf/saxon/trans/SimpleMode;->t(Lnet/sf/saxon/pattern/Pattern;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    sget-object p2, Lnet/sf/saxon/trans/SimpleMode$a;->a:[I

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getRecoveryPolicy()Lnet/sf/saxon/trans/RecoveryPolicy;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    const-string v0, "XTDE0540"

    if-eq p2, p3, :cond_5

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, p1, v0, p0}, Lnet/sf/saxon/Controller;->warning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :goto_2
    return-void

    :cond_5
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {p2, p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw p2
.end method

.method public resolveProperties(Lnet/sf/saxon/trans/rules/RuleManager;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SimpleMode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v0

    iget-object v0, v0, Lnet/sf/saxon/trans/SimpleMode;->z:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "##conflict##"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, -0x1

    sparse-switch v7, :sswitch_data_0

    :goto_1
    move v6, v12

    goto :goto_2

    :sswitch_0
    const-string v7, "on-no-match"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v8

    goto :goto_2

    :sswitch_1
    const-string v7, "warning-on-multiple-match"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v9

    goto :goto_2

    :sswitch_2
    const-string v7, "use-accumulators"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v10

    goto :goto_2

    :sswitch_3
    const-string v7, "typed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v6, v11

    goto :goto_2

    :sswitch_4
    const-string v7, "streamable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    move v6, v2

    goto :goto_2

    :sswitch_5
    const-string v7, "on-multiple-match"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    move v6, v1

    :goto_2
    const-string v7, "fail"

    const-string v13, "yes"

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :goto_3
    move v8, v12

    goto :goto_4

    :sswitch_6
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_3

    :sswitch_7
    const-string v6, "shallow-skip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    move v8, v9

    goto :goto_4

    :sswitch_8
    const-string v6, "shallow-copy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    move v8, v10

    goto :goto_4

    :sswitch_9
    const-string v6, "deep-skip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_3

    :cond_9
    move v8, v11

    goto :goto_4

    :sswitch_a
    const-string v6, "deep-copy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    move v8, v2

    goto :goto_4

    :sswitch_b
    const-string v6, "text-only-copy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    move v8, v1

    :cond_c
    :goto_4
    packed-switch v8, :pswitch_data_1

    const/4 v5, 0x0

    goto :goto_5

    :pswitch_1
    invoke-static {}, Lnet/sf/saxon/trans/rules/FailRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/FailRuleSet;

    move-result-object v5

    goto :goto_5

    :pswitch_2
    invoke-static {}, Lnet/sf/saxon/trans/rules/ShallowSkipRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/ShallowSkipRuleSet;

    move-result-object v5

    goto :goto_5

    :pswitch_3
    invoke-static {}, Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/ShallowCopyRuleSet;

    move-result-object v5

    goto :goto_5

    :pswitch_4
    invoke-static {}, Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/DeepSkipRuleSet;

    move-result-object v5

    goto :goto_5

    :pswitch_5
    invoke-static {}, Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/DeepCopyRuleSet;

    move-result-object v5

    goto :goto_5

    :pswitch_6
    invoke-static {}, Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;->getInstance()Lnet/sf/saxon/trans/rules/TextOnlyCopyRuleSet;

    move-result-object v5

    :goto_5
    iget-object v6, p0, Lnet/sf/saxon/trans/SimpleMode;->z:Ljava/util/Map;

    const-string v7, "warning-on-no-match"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Lnet/sf/saxon/trans/rules/RuleSetWithWarnings;

    invoke-direct {v6, v5}, Lnet/sf/saxon/trans/rules/RuleSetWithWarnings;-><init>(Lnet/sf/saxon/trans/rules/BuiltInRuleSet;)V

    move-object v5, v6

    :cond_d
    invoke-virtual {p0, v5}, Lnet/sf/saxon/trans/SimpleMode;->setBuiltInRuleSet(Lnet/sf/saxon/trans/rules/BuiltInRuleSet;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/RuleManager;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "[ \t\r\n]+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    move v9, v1

    :goto_6
    if-ge v9, v8, :cond_e

    aget-object v10, v5, v9

    invoke-static {v10}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    invoke-virtual {v6, v10}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getAccumulator(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/accum/Accumulator;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {p0, v7}, Lnet/sf/saxon/trans/Mode;->setAccumulators(Ljava/util/Set;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "strict"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "lax"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_7

    :cond_f
    move v6, v1

    goto :goto_8

    :cond_10
    :goto_7
    move v6, v2

    :goto_8
    iput-boolean v6, p0, Lnet/sf/saxon/trans/Mode;->mustBeTyped:Z

    const-string v6, "no"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lnet/sf/saxon/trans/Mode;->mustBeUntyped:Z

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lnet/sf/saxon/trans/Mode;->setStreamable(Z)V

    if-eqz v5, :cond_0

    sget-object v5, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v5, v2}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v5

    invoke-virtual {v5, v2}, Lnet/sf/saxon/trans/Mode;->setStreamable(Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v2

    goto/16 :goto_0

    :cond_11
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SimpleMode;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", there are conflicting values for xsl:mode/@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at the same import precedence"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XTSE0545"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_12
    if-eqz v3, :cond_13

    sget-object p1, Lnet/sf/saxon/trans/RecoveryPolicy;->DO_NOT_RECOVER:Lnet/sf/saxon/trans/RecoveryPolicy;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/Mode;->setRecoveryPolicy(Lnet/sf/saxon/trans/RecoveryPolicy;)V

    goto :goto_9

    :cond_13
    if-eqz v4, :cond_14

    sget-object p1, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_WITH_WARNINGS:Lnet/sf/saxon/trans/RecoveryPolicy;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/Mode;->setRecoveryPolicy(Lnet/sf/saxon/trans/RecoveryPolicy;)V

    goto :goto_9

    :cond_14
    sget-object p1, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_SILENTLY:Lnet/sf/saxon/trans/RecoveryPolicy;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/Mode;->setRecoveryPolicy(Lnet/sf/saxon/trans/RecoveryPolicy;)V

    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5559f28a -> :sswitch_5
        -0x4730db26 -> :sswitch_4
        0x69b586a -> :sswitch_3
        0x5f23fb33 -> :sswitch_2
        0x70b64d85 -> :sswitch_1
        0x7c4c86e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7b4e0faa -> :sswitch_b
        -0x78d0f84a -> :sswitch_a
        -0x78c9c240 -> :sswitch_9
        -0x610b4472 -> :sswitch_8
        -0x61040e68 -> :sswitch_7
        0x2fd71e -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public ruleMatches(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/trans/rules/RuleSearchState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->isAlwaysMatches()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/trans/rules/Rule;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContextMajor;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;)Lnet/sf/saxon/trans/rules/Rule;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    :goto_0
    instance-of v0, p2, Lnet/sf/saxon/expr/XPathContextMajor;

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p4, p2}, Lnet/sf/saxon/trans/SimpleMode;->makeRuleSearchState(Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/RuleSearchState;

    move-result-object v0

    if-nez p4, :cond_1

    const/4 p4, 0x0

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p4}, Lnet/sf/saxon/trans/rules/RuleChain;->head()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p4

    :goto_1
    if-eqz p4, :cond_b

    if-eqz p3, :cond_7

    .line 5
    invoke-virtual {p4, p3}, Lnet/sf/saxon/trans/rules/Rule;->compareRank(Lnet/sf/saxon/trans/rules/Rule;)I

    move-result v1

    if-gez v1, :cond_2

    goto :goto_3

    :cond_2
    if-nez v1, :cond_6

    .line 6
    move-object v1, p2

    check-cast v1, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0, p4, p1, v1, v0}, Lnet/sf/saxon/trans/SimpleMode;->ruleMatches(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/trans/rules/RuleSearchState;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 7
    invoke-virtual {p4}, Lnet/sf/saxon/trans/rules/Rule;->getSequence()I

    move-result v0

    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getSequence()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 8
    invoke-virtual {p0, p1, p3, p4, p2}, Lnet/sf/saxon/trans/SimpleMode;->reportAmbiguity(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/expr/XPathContext;)V

    .line 9
    :cond_3
    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getSequence()I

    move-result p0

    invoke-virtual {p4}, Lnet/sf/saxon/trans/rules/Rule;->getSequence()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-lez p0, :cond_4

    return-object p3

    :cond_4
    if-gez p0, :cond_5

    return-object p4

    .line 10
    :cond_5
    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getPartNumber()I

    move-result p0

    invoke-virtual {p4}, Lnet/sf/saxon/trans/rules/Rule;->getPartNumber()I

    move-result p1

    if-le p0, p1, :cond_8

    goto :goto_3

    .line 11
    :cond_6
    move-object v1, p2

    check-cast v1, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0, p4, p1, v1, v0}, Lnet/sf/saxon/trans/SimpleMode;->ruleMatches(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/trans/rules/RuleSearchState;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2

    .line 12
    :cond_7
    move-object v1, p2

    check-cast v1, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0, p4, p1, v1, v0}, Lnet/sf/saxon/trans/SimpleMode;->ruleMatches(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/trans/rules/RuleSearchState;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 13
    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getRecoveryPolicy()Lnet/sf/saxon/trans/RecoveryPolicy;

    move-result-object p3

    sget-object v1, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_SILENTLY:Lnet/sf/saxon/trans/RecoveryPolicy;

    if-ne p3, v1, :cond_9

    :cond_8
    move-object p3, p4

    goto :goto_3

    :cond_9
    :goto_2
    move-object p3, p4

    .line 14
    :cond_a
    invoke-virtual {p4}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p4

    goto :goto_1

    :cond_b
    :goto_3
    return-object p3
.end method

.method public searchRuleChain(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/RuleChain;Lnet/sf/saxon/trans/rules/RuleSearchState;Ljava/util/function/Predicate;)Lnet/sf/saxon/trans/rules/Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Item;",
            "Lnet/sf/saxon/expr/XPathContext;",
            "Lnet/sf/saxon/trans/rules/Rule;",
            "Lnet/sf/saxon/trans/rules/RuleChain;",
            "Lnet/sf/saxon/trans/rules/RuleSearchState;",
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

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p4}, Lnet/sf/saxon/trans/rules/RuleChain;->head()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p4

    .line 16
    :goto_0
    instance-of v0, p2, Lnet/sf/saxon/expr/XPathContextMajor;

    if-nez v0, :cond_1

    .line 17
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getCaller()Lnet/sf/saxon/expr/XPathContext;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p4, :cond_9

    if-eqz p6, :cond_2

    .line 18
    invoke-interface {p6, p4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    if-eqz p3, :cond_5

    .line 19
    invoke-virtual {p4, p3}, Lnet/sf/saxon/trans/rules/Rule;->compareRank(Lnet/sf/saxon/trans/rules/Rule;)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_3

    :cond_3
    if-nez v0, :cond_4

    .line 20
    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0, p4, p1, v0, p5}, Lnet/sf/saxon/trans/SimpleMode;->ruleMatches(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/trans/rules/RuleSearchState;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {p0, p1, p3, p4, p2}, Lnet/sf/saxon/trans/SimpleMode;->reportAmbiguity(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/expr/XPathContext;)V

    .line 22
    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getSequence()I

    move-result p0

    invoke-virtual {p4}, Lnet/sf/saxon/trans/rules/Rule;->getSequence()I

    move-result p1

    if-le p0, p1, :cond_6

    goto :goto_3

    .line 23
    :cond_4
    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0, p4, p1, v0, p5}, Lnet/sf/saxon/trans/SimpleMode;->ruleMatches(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/trans/rules/RuleSearchState;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 24
    :cond_5
    move-object v0, p2

    check-cast v0, Lnet/sf/saxon/expr/XPathContextMajor;

    invoke-virtual {p0, p4, p1, v0, p5}, Lnet/sf/saxon/trans/SimpleMode;->ruleMatches(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/trans/rules/RuleSearchState;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->getRecoveryPolicy()Lnet/sf/saxon/trans/RecoveryPolicy;

    move-result-object p3

    sget-object v0, Lnet/sf/saxon/trans/RecoveryPolicy;->RECOVER_SILENTLY:Lnet/sf/saxon/trans/RecoveryPolicy;

    if-ne p3, v0, :cond_7

    :cond_6
    move-object p3, p4

    goto :goto_3

    :cond_7
    :goto_2
    move-object p3, p4

    .line 26
    :cond_8
    invoke-virtual {p4}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p4

    goto :goto_1

    :cond_9
    :goto_3
    return-object p3
.end method

.method public setBuiltInRuleSet(Lnet/sf/saxon/trans/rules/BuiltInRuleSet;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->t:Lnet/sf/saxon/trans/rules/BuiltInRuleSet;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/trans/Mode;->o:Z

    return-void
.end method

.method public setExplicitProperty(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->y:Ljava/util/Map;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    if-ge v0, p3, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->y:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lnet/sf/saxon/trans/SimpleMode;->z:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-ne v0, p3, :cond_3

    iget-object p3, p0, Lnet/sf/saxon/trans/SimpleMode;->z:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v3

    and-int/2addr p2, v0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lnet/sf/saxon/trans/SimpleMode;->z:Ljava/util/Map;

    const-string p3, "##conflict##"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode;->y:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lnet/sf/saxon/trans/SimpleMode;->z:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    iget-object p1, p0, Lnet/sf/saxon/trans/SimpleMode;->z:Ljava/util/Map;

    const-string p2, "typed"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "yes"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "strict"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "lax"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    iput-boolean v2, p0, Lnet/sf/saxon/trans/Mode;->mustBeTyped:Z

    const-string p2, "no"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/trans/Mode;->mustBeUntyped:Z

    return-void
.end method

.method public setGroup(Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;Ljava/lang/String;)Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lnet/sf/saxon/trans/SimpleMode$RuleGroupAction;->setLabel(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public setStackFrameSlotsNeeded(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/trans/SimpleMode;->w:I

    return-void
.end method
