.class public abstract Lnet/sf/saxon/pattern/Pattern;
.super Lnet/sf/saxon/expr/PseudoExpression;
.source "SourceFile"


# instance fields
.field public n:D

.field public o:Z

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/expr/PseudoExpression;-><init>()V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lnet/sf/saxon/pattern/Pattern;->n:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/pattern/Pattern;->o:Z

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/pattern/Pattern;->m(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->p(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lnet/sf/saxon/type/UType;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->r(Lnet/sf/saxon/type/UType;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->s(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->q(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->n(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/pattern/Pattern;->o(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public static make(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;Lnet/sf/saxon/expr/PackageData;)Lnet/sf/saxon/pattern/Pattern;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result p2

    const/16 v0, 0x1e

    if-ne p2, v0, :cond_0

    const/16 p2, 0x131

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/style/ExpressionContext;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/style/ExpressionContext;

    invoke-virtual {v0}, Lnet/sf/saxon/style/ExpressionContext;->getStyleElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const-string v1, "PATTERN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/PatternParser;

    sget-object v1, Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;->XSLT_PATTERN:Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;

    invoke-virtual {v0, v1, p2}, Lnet/sf/saxon/expr/parser/XPathParser;->setLanguage(Lnet/sf/saxon/expr/parser/XPathParser$ParsedLanguage;I)V

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/pattern/PatternParser;->parsePattern(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->simplify()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private synthetic n(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic p(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public static patternContainsVariable(Lnet/sf/saxon/pattern/Pattern;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getDependencies()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic q(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lnet/sf/saxon/type/UType;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p1}, Lnet/sf/saxon/tree/iter/SingleNodeIterator;->makeIterator(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/iter/AxisIterator;)V

    move-object v0, v1

    :cond_0
    sget-object v1, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;-><init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/iter/AxisIterator;)V

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public static replaceCurrent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/LocalBinding;)V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->operands()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Operand;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Operand;->getChildExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    const-class v2, Lnet/sf/saxon/functions/Current;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {v1, p1}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Operand;->setChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Lnet/sf/saxon/pattern/Pattern;->replaceCurrent(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/LocalBinding;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic s(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/Item;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public allocateSlots(Lnet/sf/saxon/expr/instruct/SlotManager;I)I
    .locals 0

    return p2
.end method

.method public bindCurrent(Lnet/sf/saxon/expr/LocalBinding;)V
    .locals 0

    return-void
.end method

.method public convertToTypedPattern(Ljava/lang/String;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/pattern/Pattern;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public abstract copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/pattern/Pattern;
.end method

.method public final effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public abstract export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public getDefaultPriority()D
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/pattern/Pattern;->n:D

    return-wide v0
.end method

.method public getDependencies()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFingerprint()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;
    .locals 0

    sget-object p0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    return-object p0
.end method

.method public abstract getItemType()Lnet/sf/saxon/type/ItemType;
.end method

.method public getOriginalText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pattern/Pattern;->p:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getUType()Lnet/sf/saxon/type/UType;
.end method

.method public handleDynamicError(Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XTDE0640"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->isRecoverable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An error occurred matching pattern {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p2, v0, p1, p0}, Lnet/sf/saxon/Controller;->warning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void

    :cond_0
    throw p1

    :cond_1
    throw p1
.end method

.method public isLiftable(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMotionless()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isRecoverable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/pattern/Pattern;->o:Z

    return p0
.end method

.method public abstract matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public matchesBeneathAnchor(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    return p0
.end method

.method public matchesCurrentGroup()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public reconstruct()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pattern matching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public selectNodes(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/UType;->DOCUMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/tree/iter/SingletonIterator;->makeIterator(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v2, Lnet/sf/saxon/type/UType;->ATTRIBUTE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v3, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/uzk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/uzk;-><init>()V

    invoke-static {p1, v0}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/vzk;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/vzk;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-static {p1, v0}, Lnet/sf/saxon/expr/ItemMappingIterator;->filter(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemFilter$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v2, Lnet/sf/saxon/type/UType;->NAMESPACE:Lnet/sf/saxon/type/UType;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {p1, v3, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/wzk;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/wzk;-><init>()V

    invoke-static {p1, v0}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/xzk;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/xzk;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-static {p1, v0}, Lnet/sf/saxon/expr/ItemMappingIterator;->filter(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemFilter$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v2, Lnet/sf/saxon/type/UType;->CHILD_NODE_KINDS:Lnet/sf/saxon/type/UType;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lnet/sf/saxon/type/UType;->ELEMENT:Lnet/sf/saxon/type/UType;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    goto :goto_0

    :cond_4
    new-instance v1, Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    invoke-direct {v1, v0}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;-><init>(Lnet/sf/saxon/type/UType;)V

    move-object v0, v1

    :goto_0
    invoke-interface {p1, v3, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/yzk;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/yzk;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-static {p1, v0}, Lnet/sf/saxon/expr/ItemMappingIterator;->filter(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemFilter$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v0, v1}, Lnet/sf/saxon/type/UType;->subsumes(Lnet/sf/saxon/type/UType;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x5

    :cond_6
    invoke-interface {p1, v3}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/zzk;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zzk;-><init>(Lnet/sf/saxon/type/UType;)V

    invoke-static {p1, v1}, Lnet/sf/saxon/expr/MappingIterator;->map(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/SequenceMapper$Lambda;)Lnet/sf/saxon/expr/MappingIterator;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/a0l;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/a0l;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-static {p1, v0}, Lnet/sf/saxon/expr/ItemMappingIterator;->filter(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemFilter$Lambda;)Lnet/sf/saxon/expr/ItemMappingIterator;

    move-result-object p0

    return-object p0
.end method

.method public setOriginalText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/pattern/Pattern;->p:Ljava/lang/String;

    return-void
.end method

.method public setPriority(D)V
    .locals 0

    iput-wide p1, p0, Lnet/sf/saxon/pattern/Pattern;->n:D

    return-void
.end method

.method public setRecoverable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/pattern/Pattern;->o:Z

    return-void
.end method

.method public bridge synthetic simplify()Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->simplify()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public simplify()Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    return-object p0
.end method

.method public toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/pattern/Pattern;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/Pattern;->reconstruct()Ljava/lang/String;

    move-result-object p0

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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/pattern/Pattern;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/pattern/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->typeCheckChildren(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    return-object p0
.end method
