.class public Lnet/sf/saxon/style/XSLUsePackage;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field public u:Ljava/lang/String;

.field public v:Lnet/sf/saxon/style/PackageVersionRanges;

.field public w:Lnet/sf/saxon/style/StylesheetPackage;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/XSLAccept;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->u:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->v:Lnet/sf/saxon/style/PackageVersionRanges;

    iput-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->x:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Z(Lnet/sf/saxon/trans/CompilerInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->w:Lnet/sf/saxon/style/StylesheetPackage;

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->u:Ljava/lang/String;

    const-string v1, "name"

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->u:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->u:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->reportAbsence(Ljava/lang/String;)V

    const-string v0, "unnamed-package"

    iput-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->u:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLUsePackage;->f0()Lnet/sf/saxon/style/PackageVersionRanges;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->getPackageLibrary()Lnet/sf/saxon/trans/packages/PackageLibrary;

    move-result-object v3

    iget-object v4, p0, Lnet/sf/saxon/style/XSLUsePackage;->u:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lnet/sf/saxon/trans/packages/PackageLibrary;->findPackage(Ljava/lang/String;Lnet/sf/saxon/style/PackageVersionRanges;)Lnet/sf/saxon/trans/packages/PackageDetails;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lnet/sf/saxon/trans/packages/PackageDetails;->loadedPackage:Lnet/sf/saxon/style/StylesheetPackage;

    :goto_1
    iput-object v2, p0, Lnet/sf/saxon/style/XSLUsePackage;->w:Lnet/sf/saxon/style/StylesheetPackage;

    const-string v0, "Package "

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/style/XSLUsePackage;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XTSE3000"

    invoke-virtual {p0, v2, v3, v1}, Lnet/sf/saxon/style/StyleElement;->compileErrorInAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->makeStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLUsePackage;->w:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/CompilerInfo;->isJustInTimeCompilation()Z

    move-result p1

    invoke-virtual {v2, p1}, Lnet/sf/saxon/style/StylesheetPackage;->setJustInTimeCompilation(Z)V

    :cond_4
    iget-object p1, p0, Lnet/sf/saxon/style/XSLUsePackage;->w:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getContextItemRequirements()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isMayBeOmitted()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StyleElement;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires a global context item, so it cannot be used as a library package"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTTE0590"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a0(Lnet/sf/saxon/style/PrincipalStylesheetModule;Ljava/util/List;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/style/PrincipalStylesheetModule;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->w:Lnet/sf/saxon/style/StylesheetPackage;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/w2n;

    const-class v1, Lnet/sf/saxon/style/XSLOverride;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    new-instance v1, Lcom/sunia/HTREnginev2/tqo;

    const-class v2, Lnet/sf/saxon/style/StylesheetComponent;

    invoke-direct {v1, v2}, Lcom/sunia/HTREnginev2/tqo;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Lnet/sf/saxon/pattern/NodeSelector;->of(Ljava/util/function/Predicate;)Lnet/sf/saxon/pattern/NodeSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    new-instance v2, Lnet/sf/saxon/style/ComponentDeclaration;

    move-object v3, v1

    check-cast v3, Lnet/sf/saxon/style/StyleElement;

    invoke-direct {v2, p1, v3}, Lnet/sf/saxon/style/ComponentDeclaration;-><init>(Lnet/sf/saxon/style/StylesheetModule;Lnet/sf/saxon/style/StyleElement;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/style/StylesheetComponent;

    invoke-interface {v2}, Lnet/sf/saxon/style/StylesheetComponent;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lnet/sf/saxon/style/XSLTemplate;

    if-eqz v2, :cond_2

    const-string v2, ""

    const-string v3, "match"

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v1, Lnet/sf/saxon/style/XSLTemplate;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLTemplate;->getModeNames()[Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    new-instance v5, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v6, 0xb4

    invoke-direct {v5, v6, v4}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-interface {p3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public b0(Lnet/sf/saxon/style/PrincipalStylesheetModule;Ljava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/style/PrincipalStylesheetModule;",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v3

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-interface {v3}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v6

    if-eqz v6, :cond_8

    instance-of v7, v6, Lnet/sf/saxon/style/XSLOverride;

    if-eqz v7, :cond_7

    sget-object v7, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {v6, v4, v7}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v7

    if-eqz v7, :cond_7

    instance-of v8, v7, Lnet/sf/saxon/style/XSLTemplate;

    if-eqz v8, :cond_6

    const-string v8, ""

    const-string v9, "match"

    invoke-interface {v7, v8, v9}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    move-object v8, v7

    check-cast v8, Lnet/sf/saxon/style/XSLTemplate;

    invoke-virtual {v8}, Lnet/sf/saxon/style/XSLTemplate;->getModeNames()[Lnet/sf/saxon/om/StructuredQName;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_6

    aget-object v11, v8, v10

    sget-object v12, Lnet/sf/saxon/trans/Mode;->OMNI_MODE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v11, v12}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "XTSE3440"

    if-eqz v12, :cond_0

    move-object v11, v7

    check-cast v11, Lnet/sf/saxon/style/StyleElement;

    const-string v12, "The mode name #all must not appear in an overriding template rule"

    invoke-virtual {v11, v12, v13}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v14, p2

    :goto_3
    move-object/from16 v16, v3

    goto/16 :goto_4

    :cond_0
    new-instance v12, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v14, 0xb4

    invoke-direct {v12, v14, v11}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    move-object/from16 v14, p2

    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v12}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v12

    check-cast v12, Lnet/sf/saxon/expr/Component$M;

    const-string v15, "Mode "

    const-string v4, "XTSE3060"

    if-nez v12, :cond_1

    move-object v12, v7

    check-cast v12, Lnet/sf/saxon/style/StyleElement;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is not defined in the used package"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v12}, Lnet/sf/saxon/expr/Component;->getBaseComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v16

    if-nez v16, :cond_2

    move-object v4, v7

    check-cast v4, Lnet/sf/saxon/style/StyleElement;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " cannot be overridden because it is local to this package"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11, v13}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v12}, Lnet/sf/saxon/expr/Component;->getBaseComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v13

    check-cast v13, Lnet/sf/saxon/expr/Component$M;

    invoke-virtual {v13}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v15

    move-object/from16 v16, v3

    sget-object v3, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne v15, v3, :cond_3

    move-object v3, v7

    check-cast v3, Lnet/sf/saxon/style/StyleElement;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot define overriding template rules in mode "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " because it has visibility=final"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    invoke-virtual {v13}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v3

    invoke-virtual {v13}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v13

    sget-object v15, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-eq v13, v15, :cond_4

    move-object v3, v7

    check-cast v3, Lnet/sf/saxon/style/StyleElement;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot override template rules in mode "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", because the mode is not public"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v12}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v4

    if-ne v4, v3, :cond_5

    new-instance v4, Lnet/sf/saxon/trans/SimpleMode;

    invoke-direct {v4, v11}, Lnet/sf/saxon/trans/SimpleMode;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    new-instance v11, Lnet/sf/saxon/trans/CompoundMode;

    invoke-direct {v11, v3, v4}, Lnet/sf/saxon/trans/CompoundMode;-><init>(Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/trans/SimpleMode;)V

    invoke-virtual {v11, v12}, Lnet/sf/saxon/expr/instruct/Actor;->setDeclaringComponent(Lnet/sf/saxon/expr/Component;)V

    invoke-virtual {v2, v11}, Lnet/sf/saxon/trans/rules/RuleManager;->registerMode(Lnet/sf/saxon/trans/Mode;)V

    invoke-virtual {v12, v11}, Lnet/sf/saxon/expr/Component$M;->setActor(Lnet/sf/saxon/trans/Mode;)V

    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v16

    const/4 v4, 0x3

    goto/16 :goto_2

    :cond_6
    move-object/from16 v14, p2

    goto/16 :goto_1

    :cond_7
    move-object/from16 v14, p2

    goto/16 :goto_0

    :cond_8
    iget-object v0, v0, Lnet/sf/saxon/style/XSLUsePackage;->w:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lnet/sf/saxon/trans/rules/RuleManager;->getAllNamedModes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/Mode;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1, v3}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v4

    sget-object v6, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq v4, v6, :cond_9

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trans/rules/RuleManager;->registerMode(Lnet/sf/saxon/trans/Mode;)V

    goto :goto_5

    :cond_a
    return-void
.end method

.method public c0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/XSLAccept;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->x:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->x:Ljava/util/List;

    new-instance v0, Lcom/sunia/HTREnginev2/w2n;

    const-class v1, Lnet/sf/saxon/style/XSLAccept;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    iget-object v2, p0, Lnet/sf/saxon/style/XSLUsePackage;->x:Ljava/util/List;

    check-cast v1, Lnet/sf/saxon/style/XSLAccept;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/XSLUsePackage;->x:Ljava/util/List;

    return-object p0
.end method

.method public final d0()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/w2n;

    const-class v2, Lnet/sf/saxon/style/XSLAccept;

    invoke-direct {v1, v2}, Lcom/sunia/HTREnginev2/w2n;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Lnet/sf/saxon/om/NodeInfo;->children(Lnet/sf/saxon/pattern/NodePredicate;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    check-cast v1, Lnet/sf/saxon/style/XSLAccept;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLAcceptExpose;->getExplicitComponentTests()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/ComponentTest;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/ComponentTest;->getSymbolicNameIfExplicit()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final e0()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v3, v1, Lnet/sf/saxon/style/XSLOverride;

    if-eqz v3, :cond_0

    sget-object v3, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-interface {v1, v2, v3}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Lnet/sf/saxon/style/StylesheetComponent;

    if-eqz v4, :cond_1

    check-cast v3, Lnet/sf/saxon/style/StylesheetComponent;

    invoke-interface {v3}, Lnet/sf/saxon/style/StylesheetComponent;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final f0()Lnet/sf/saxon/style/PackageVersionRanges;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->v:Lnet/sf/saxon/style/PackageVersionRanges;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLUsePackage;->prepareAttributes()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/XSLUsePackage;->v:Lnet/sf/saxon/style/PackageVersionRanges;

    return-object p0
.end method

.method public getUsedPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLUsePackage;->w:Lnet/sf/saxon/style/StylesheetPackage;

    return-object p0
.end method

.method public isDeclaration()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public postValidate()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    instance-of v2, v1, Lnet/sf/saxon/style/XSLOverride;

    if-nez v2, :cond_1

    instance-of v2, v1, Lnet/sf/saxon/style/XSLAccept;

    if-eqz v2, :cond_0

    :cond_1
    check-cast v1, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->postValidate()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLUsePackage;->d0()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLUsePackage;->e0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/SymbolicName;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "XTSE3051"

    const-string v5, ")"

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot accept and override the same component ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Lnet/sf/saxon/trans/SymbolicName;->getComponentKind()I

    move-result v3

    const/16 v6, 0xa0

    if-ne v3, v6, :cond_3

    new-instance v3, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    const/4 v7, -0x1

    invoke-direct {v3, v6, v7}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot accept and override the same function ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public prepareAttributes()V
    .locals 6

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->attributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "*"

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/style/XSLUsePackage;->u:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v5, "package-version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\\\"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/StyleElement;->checkUnknownAttribute(Lnet/sf/saxon/om/NodeName;)V

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Lnet/sf/saxon/style/PackageVersionRanges;

    invoke-direct {v0, v1}, Lnet/sf/saxon/style/PackageVersionRanges;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLUsePackage;->v:Lnet/sf/saxon/style/PackageVersionRanges;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    :goto_1
    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v0, "Character content is not allowed as a child of xsl:use-package"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lnet/sf/saxon/style/XSLAccept;

    if-nez v1, :cond_0

    instance-of v1, v0, Lnet/sf/saxon/style/XSLOverride;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed as a child of xsl:use-package"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XTSE0010"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method
