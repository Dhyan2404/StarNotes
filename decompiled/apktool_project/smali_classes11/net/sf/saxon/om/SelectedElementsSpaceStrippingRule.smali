.class public Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SpaceStrippingRule;


# instance fields
.field public a:Lnet/sf/saxon/trans/rules/Rule;

.field public b:Lnet/sf/saxon/trans/rules/Rule;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/NodeName;",
            "Lnet/sf/saxon/trans/rules/Rule;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public final e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->a:Lnet/sf/saxon/trans/rules/Rule;

    iput-object v0, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->b:Lnet/sf/saxon/trans/rules/Rule;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->d:I

    iput-boolean p1, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->e:Z

    return-void
.end method

.method public static b(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/event/Stripper;->STRIP:Lnet/sf/saxon/event/Stripper$StripRuleTarget;

    if-ne v0, v1, :cond_0

    const-string v0, "s"

    goto :goto_0

    :cond_0
    const-string v0, "p"

    :goto_0
    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "prec"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;Z)Lnet/sf/saxon/trans/rules/Rule;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, v1

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result v4

    if-gt v4, v0, :cond_5

    iget-boolean p0, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->e:Z

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getPrecedence()I

    move-result p0

    if-ne p0, v0, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "There are conflicting xsl:strip-space and xsl:preserve-space declarations for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " at the same import precedence"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTSE0270"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    move-object p0, v1

    goto :goto_2

    :cond_3
    move-object p0, v2

    :goto_2
    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/rules/Rule;->setNext(Lnet/sf/saxon/trans/rules/Rule;)V

    if-nez v3, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {v3, p1}, Lnet/sf/saxon/trans/rules/Rule;->setNext(Lnet/sf/saxon/trans/rules/Rule;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :cond_6
    :goto_3
    if-nez v2, :cond_7

    invoke-virtual {v3, p1}, Lnet/sf/saxon/trans/rules/Rule;->setNext(Lnet/sf/saxon/trans/rules/Rule;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/rules/Rule;->setNext(Lnet/sf/saxon/trans/rules/Rule;)V

    :cond_7
    return-object p2
.end method

.method public addRule(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/event/Stripper$StripRuleTarget;Lnet/sf/saxon/style/StylesheetModule;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lnet/sf/saxon/style/StylesheetModule;->getPrecedence()I

    move-result p4

    .line 2
    invoke-virtual {p3}, Lnet/sf/saxon/style/StylesheetModule;->getMinImportPrecedence()I

    move-result p3

    .line 3
    new-instance v0, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-direct {v0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    .line 4
    invoke-virtual {p0, v0, p2, p4, p3}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->addRule(Lnet/sf/saxon/pattern/NodeTestPattern;Lnet/sf/saxon/event/Stripper$StripRuleTarget;II)V

    return-void
.end method

.method public addRule(Lnet/sf/saxon/pattern/NodeTestPattern;Lnet/sf/saxon/event/Stripper$StripRuleTarget;II)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object v0, p0

    .line 5
    invoke-virtual {p1}, Lnet/sf/saxon/pattern/NodeTestPattern;->getNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getDefaultPriority()D

    move-result-wide v11

    .line 7
    new-instance v13, Lnet/sf/saxon/trans/rules/Rule;

    iget v9, v0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->d:I

    add-int/lit8 v2, v9, 0x1

    iput v2, v0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->d:I

    const/4 v10, 0x0

    move-object v2, v13

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide v7, v11

    invoke-direct/range {v2 .. v10}, Lnet/sf/saxon/trans/rules/Rule;-><init>(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/RuleTarget;IIDII)V

    const-wide/16 v2, 0x0

    cmpl-double v2, v11, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const-wide/high16 v5, -0x4030000000000000L    # -0.25

    cmpl-double v2, v11, v5

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    shl-int/lit8 v5, p3, 0x12

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v5, v2

    .line 8
    iget v2, v0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->d:I

    add-int/2addr v5, v2

    invoke-virtual {v13, v5}, Lnet/sf/saxon/trans/rules/Rule;->setRank(I)V

    .line 9
    instance-of v2, v1, Lnet/sf/saxon/pattern/NodeKindTest;

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v13, v4}, Lnet/sf/saxon/trans/rules/Rule;->setAlwaysMatches(Z)V

    .line 11
    iget-object v1, v0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->a:Lnet/sf/saxon/trans/rules/Rule;

    invoke-virtual {p0, v13, v1, v4}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->a(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;Z)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->a:Lnet/sf/saxon/trans/rules/Rule;

    goto :goto_1

    .line 12
    :cond_2
    instance-of v2, v1, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v13, v4}, Lnet/sf/saxon/trans/rules/Rule;->setAlwaysMatches(Z)V

    .line 14
    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->getFingerprint()I

    move-result v2

    .line 15
    check-cast v1, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NameTest;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    .line 16
    new-instance v3, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/NamePool;->getUnprefixedQName(I)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    .line 17
    iget-object v1, v0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/rules/Rule;

    .line 18
    iget-object v2, v0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v13, v1, v4}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->a(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;Z)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_3
    iget-object v1, v0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->b:Lnet/sf/saxon/trans/rules/Rule;

    invoke-virtual {p0, v13, v1, v3}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->a(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;Z)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->b:Lnet/sf/saxon/trans/rules/Rule;

    :goto_1
    return-void
.end method

.method public final c(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;)Lnet/sf/saxon/trans/rules/Rule;
    .locals 2

    :goto_0
    if-eqz p3, :cond_6

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p3, p2}, Lnet/sf/saxon/trans/rules/Rule;->compareRank(Lnet/sf/saxon/trans/rules/Rule;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_3

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->isAlwaysMatches()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1, v0, p1, p0}, Lnet/sf/saxon/pattern/NodeTest;->matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->isAlwaysMatches()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1, v0, p1, p0}, Lnet/sf/saxon/pattern/NodeTest;->matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    move-object p2, p3

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->isAlwaysMatches()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getPattern()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1, v0, p1, p0}, Lnet/sf/saxon/pattern/NodeTest;->matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p3}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p3

    goto :goto_0

    :cond_5
    :goto_2
    move-object p2, p3

    :cond_6
    :goto_3
    return-object p2
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "strip"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->a:Lnet/sf/saxon/trans/rules/Rule;

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->b(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->b:Lnet/sf/saxon/trans/rules/Rule;

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->b(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/rules/Rule;

    invoke-static {v0, p1}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->b(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getRankedRules()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/trans/rules/Rule;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->a:Lnet/sf/saxon/trans/rules/Rule;

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/trans/rules/Rule;->getRank()I

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->b:Lnet/sf/saxon/trans/rules/Rule;

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/rules/Rule;->getRank()I

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/rules/Rule;->getNext()Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/rules/Rule;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/rules/Rule;->getRank()I

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getRule(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/trans/rules/Rule;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/rules/Rule;

    iget-object v1, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->b:Lnet/sf/saxon/trans/rules/Rule;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->c(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->a:Lnet/sf/saxon/trans/rules/Rule;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0, v1}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->c(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public isSpacePreserving(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/SelectedElementsSpaceStrippingRule;->getRule(Lnet/sf/saxon/om/NodeName;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    const/4 p1, 0x1

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/trans/rules/Rule;->getAction()Lnet/sf/saxon/trans/rules/RuleTarget;

    move-result-object p0

    sget-object p2, Lnet/sf/saxon/event/Stripper;->PRESERVE:Lnet/sf/saxon/event/Stripper$StripRuleTarget;

    if-ne p0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/ProxyReceiver;
    .locals 1

    new-instance v0, Lnet/sf/saxon/event/Stripper;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/event/Stripper;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V

    return-object v0
.end method
