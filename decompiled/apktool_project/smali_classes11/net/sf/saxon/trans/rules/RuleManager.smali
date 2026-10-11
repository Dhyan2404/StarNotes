.class public final Lnet/sf/saxon/trans/rules/RuleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/style/StylesheetPackage;

.field public final b:Lnet/sf/saxon/Configuration;

.field public final c:Lnet/sf/saxon/trans/SimpleMode;

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/trans/Mode;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lnet/sf/saxon/trans/SimpleMode;

.field public f:Z

.field public g:Lnet/sf/saxon/trans/CompilerInfo;

.field public h:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/StylesheetPackage;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/PackageData;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/rules/RuleManager;-><init>(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/CompilerInfo;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/CompilerInfo;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->e:Lnet/sf/saxon/trans/SimpleMode;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->h:I

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/trans/rules/RuleManager;->a:Lnet/sf/saxon/style/StylesheetPackage;

    .line 6
    invoke-virtual {p1}, Lnet/sf/saxon/expr/PackageData;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->b:Lnet/sf/saxon/Configuration;

    .line 7
    iput-object p2, p0, Lnet/sf/saxon/trans/rules/RuleManager;->g:Lnet/sf/saxon/trans/CompilerInfo;

    .line 8
    sget-object v1, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0, v1, p2}, Lnet/sf/saxon/Configuration;->makeMode(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/trans/CompilerInfo;)Lnet/sf/saxon/trans/SimpleMode;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/trans/rules/RuleManager;->c:Lnet/sf/saxon/trans/SimpleMode;

    .line 9
    sget-object v0, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    invoke-virtual {p2, v0, p1}, Lnet/sf/saxon/expr/instruct/Actor;->makeDeclaringComponent(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object p2

    .line 10
    sget-object v1, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-virtual {p2, v0, v1}, Lnet/sf/saxon/expr/Component;->setVisibility(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;)V

    .line 11
    invoke-virtual {p1, p2}, Lnet/sf/saxon/style/StylesheetPackage;->addComponent(Lnet/sf/saxon/expr/Component;)V

    .line 12
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/trans/rules/RuleManager;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public allocateSequenceNumber()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lnet/sf/saxon/trans/rules/RuleManager;->h:I

    return v0
.end method

.method public checkConsistency()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->c:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/SimpleMode;->resolveProperties(Lnet/sf/saxon/trans/rules/RuleManager;)V

    iget-object v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/Mode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/SimpleMode;->resolveProperties(Lnet/sf/saxon/trans/rules/RuleManager;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public computeRankings()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->c:Lnet/sf/saxon/trans/SimpleMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/SimpleMode;->computeRankings(I)V

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/Mode;->computeRankings(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public existsOmniMode()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->e:Lnet/sf/saxon/trans/SimpleMode;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public explainTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->c:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/Mode;->explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/Mode;->explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAllNamedModes()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnet/sf/saxon/trans/Mode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->a:Lnet/sf/saxon/style/StylesheetPackage;

    return-object p0
.end method

.method public getTemplateRule(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/trans/Mode;IILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, Lnet/sf/saxon/trans/rules/RuleManager;->c:Lnet/sf/saxon/trans/SimpleMode;

    :cond_0
    invoke-virtual {p2, p1, p3, p4, p5}, Lnet/sf/saxon/trans/Mode;->getRule(Lnet/sf/saxon/om/Item;IILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/rules/Rule;

    move-result-object p0

    return-object p0
.end method

.method public getUnnamedMode()Lnet/sf/saxon/trans/SimpleMode;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->c:Lnet/sf/saxon/trans/SimpleMode;

    return-object p0
.end method

.method public invertStreamableTemplates()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->c:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/SimpleMode;->invertStreamableTemplates()V

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/SimpleMode;->invertStreamableTemplates()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isUnnamedModeExplicit()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->f:Z

    return p0
.end method

.method public obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;
    .locals 2

    if-eqz p1, :cond_4

    sget-object v0, Lnet/sf/saxon/trans/Mode;->UNNAMED_MODE_NAME:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lnet/sf/saxon/trans/rules/RuleManager;->e:Lnet/sf/saxon/trans/SimpleMode;

    if-nez p2, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/trans/rules/RuleManager;->b:Lnet/sf/saxon/Configuration;

    iget-object v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->g:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/Configuration;->makeMode(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/trans/CompilerInfo;)Lnet/sf/saxon/trans/SimpleMode;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/rules/RuleManager;->e:Lnet/sf/saxon/trans/SimpleMode;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->e:Lnet/sf/saxon/trans/SimpleMode;

    return-object p0

    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/Mode;

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lnet/sf/saxon/trans/rules/RuleManager;->b:Lnet/sf/saxon/Configuration;

    iget-object v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->g:Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p2, p1, v0}, Lnet/sf/saxon/Configuration;->makeMode(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/trans/CompilerInfo;)Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v0

    iget-object p2, p0, Lnet/sf/saxon/trans/rules/RuleManager;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    iget-object p2, p0, Lnet/sf/saxon/trans/rules/RuleManager;->a:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/Actor;->makeDeclaringComponent(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object p2

    sget-object v1, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-virtual {p2, p1, v1}, Lnet/sf/saxon/expr/Component;->setVisibility(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;)V

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->a:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/StylesheetPackage;->addComponent(Lnet/sf/saxon/expr/Component;)V

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->c:Lnet/sf/saxon/trans/SimpleMode;

    return-object p0
.end method

.method public optimizeRules()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->c:Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/SimpleMode;->optimizeRules()V

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/SimpleMode;->optimizeRules()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerMode(Lnet/sf/saxon/trans/Mode;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/rules/RuleManager;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/instruct/TemplateRule;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/style/StylesheetModule;DII)I
    .locals 13

    move-object v1, p1

    move-object/from16 v11, p3

    instance-of v0, v1, Lnet/sf/saxon/pattern/UnionPattern;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lnet/sf/saxon/pattern/UnionPattern;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/VennPattern;->getLHS()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/VennPattern;->getRHS()Lnet/sf/saxon/pattern/Pattern;

    move-result-object v9

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lnet/sf/saxon/trans/rules/RuleManager;->registerRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/instruct/TemplateRule;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/style/StylesheetModule;DII)I

    move-result v10

    move-object v1, v9

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lnet/sf/saxon/trans/rules/RuleManager;->registerRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/instruct/TemplateRule;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/style/StylesheetModule;DII)I

    move-result v0

    add-int/2addr v10, v0

    return v10

    :cond_0
    instance-of v0, v1, Lnet/sf/saxon/pattern/NodeTestPattern;

    const/4 v2, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/CombinedNodeTest;->getOperator()I

    move-result v0

    if-ne v0, v12, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    invoke-virtual {v0}, Lnet/sf/saxon/pattern/CombinedNodeTest;->getComponentNodeTests()[Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v0

    new-instance v3, Lnet/sf/saxon/pattern/NodeTestPattern;

    aget-object v2, v0, v2

    invoke-direct {v3, v2}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {p1, v3}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lnet/sf/saxon/trans/rules/RuleManager;->registerRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/instruct/TemplateRule;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/style/StylesheetModule;DII)I

    move-result v9

    new-instance v2, Lnet/sf/saxon/pattern/NodeTestPattern;

    aget-object v0, v0, v12

    invoke-direct {v2, v0}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    invoke-static {p1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    move-object v0, p0

    move-object v1, v2

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lnet/sf/saxon/trans/rules/RuleManager;->registerRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/expr/instruct/TemplateRule;Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/style/StylesheetModule;DII)I

    move-result v0

    add-int/2addr v9, v0

    return v9

    :cond_1
    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/pattern/Pattern;->getDefaultPriority()D

    move-result-wide v2

    move/from16 v8, p8

    move-wide v5, v2

    goto :goto_0

    :cond_2
    move-wide/from16 v5, p5

    move v8, v2

    :goto_0
    instance-of v0, v11, Lnet/sf/saxon/trans/SimpleMode;

    if-eqz v0, :cond_3

    move-object v0, v11

    check-cast v0, Lnet/sf/saxon/trans/SimpleMode;

    invoke-virtual/range {p4 .. p4}, Lnet/sf/saxon/style/StylesheetModule;->getPrecedence()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lnet/sf/saxon/trans/SimpleMode;->addRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/RuleTarget;Lnet/sf/saxon/style/StylesheetModule;IDII)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/trans/Mode;->getActivePart()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/trans/Mode;->getMaxPrecedence()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lnet/sf/saxon/trans/SimpleMode;->addRule(Lnet/sf/saxon/pattern/Pattern;Lnet/sf/saxon/trans/rules/RuleTarget;Lnet/sf/saxon/style/StylesheetModule;IDII)V

    :goto_1
    return v12
.end method

.method public setCompilerInfo(Lnet/sf/saxon/trans/CompilerInfo;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/rules/RuleManager;->g:Lnet/sf/saxon/trans/CompilerInfo;

    return-void
.end method

.method public setUnnamedModeExplicit(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/rules/RuleManager;->f:Z

    return-void
.end method
