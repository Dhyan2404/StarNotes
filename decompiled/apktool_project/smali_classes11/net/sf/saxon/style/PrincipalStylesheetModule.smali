.class public Lnet/sf/saxon/style/PrincipalStylesheetModule;
.super Lnet/sf/saxon/style/StylesheetModule;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/trans/GlobalVariableManager;


# instance fields
.field public final g:Lnet/sf/saxon/style/StylesheetPackage;

.field public final h:Z

.field public final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lnet/sf/saxon/trans/KeyManager;

.field public final m:Lnet/sf/saxon/trans/DecimalFormatManager;

.field public final n:Lnet/sf/saxon/trans/rules/RuleManager;

.field public o:Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

.field public p:I

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/NamespaceBinding;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;>;"
        }
    .end annotation
.end field

.field public final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/DocumentKey;",
            "Lnet/sf/saxon/style/XSLModuleRoot;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lnet/sf/saxon/trans/TypeAliasManager;

.field public final w:Lnet/sf/saxon/serialize/CharacterMapIndex;

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Action;",
            ">;"
        }
    .end annotation
.end field

.field public y:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/XSLPackage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/style/StylesheetModule;-><init>(Lnet/sf/saxon/style/StyleElement;I)V

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->i:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->j:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->k:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->o:Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    iput v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->p:I

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->q:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->t:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->u:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->x:Ljava/util/List;

    iput-boolean v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->y:Z

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLPackage;->isDeclaredModes()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->h:Z

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makeStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/CompilerInfo;->getTargetEdition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/PackageData;->setTargetEdition(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/sf/saxon/trans/CompilerInfo;->isRelocatable()Z

    move-result v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/PackageData;->setRelocatable(Z)V

    invoke-virtual {v2}, Lnet/sf/saxon/trans/CompilerInfo;->isJustInTimeCompilation()Z

    move-result v3

    invoke-virtual {v1, v3}, Lnet/sf/saxon/style/StylesheetPackage;->setJustInTimeCompilation(Z)V

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lnet/sf/saxon/style/StylesheetPackage;->setImplicitPackage(Z)V

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->l:Lnet/sf/saxon/trans/KeyManager;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->m:Lnet/sf/saxon/trans/DecimalFormatManager;

    new-instance v3, Lnet/sf/saxon/trans/rules/RuleManager;

    invoke-direct {v3, v1, v2}, Lnet/sf/saxon/trans/rules/RuleManager;-><init>(Lnet/sf/saxon/style/StylesheetPackage;Lnet/sf/saxon/trans/CompilerInfo;)V

    iput-object v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->n:Lnet/sf/saxon/trans/rules/RuleManager;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/rules/RuleManager;->getUnnamedMode()Lnet/sf/saxon/trans/SimpleMode;

    move-result-object v2

    sget-object v4, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    invoke-virtual {v2, v4, v1}, Lnet/sf/saxon/expr/instruct/Actor;->makeDeclaringComponent(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/style/StylesheetPackage;->setRuleManager(Lnet/sf/saxon/trans/rules/RuleManager;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setDeclaredModes(Z)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->y()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->y()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/style/StylesheetPackage;->setDefaultMode(Lnet/sf/saxon/om/StructuredQName;)V

    if-eqz v2, :cond_0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v2, v0}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    :cond_0
    new-instance v0, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->w:Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setCharacterMapIndex(Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makeTypeAliasManager()Lnet/sf/saxon/trans/TypeAliasManager;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->v:Lnet/sf/saxon/trans/TypeAliasManager;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/expr/PackageData;->setTypeAliasManager(Lnet/sf/saxon/trans/TypeAliasManager;)V

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLModuleRoot;->getInputTypeAnnotationsAttribute()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StylesheetModule;->setInputTypeAnnotations(I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic d(Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->j(Ljava/util/List;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static i(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/StyleElement;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/style/Compilation;",
            "Lnet/sf/saxon/style/StyleElement;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/XSLUsePackage;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    instance-of v1, v0, Lnet/sf/saxon/style/XSLUsePackage;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/style/XSLUsePackage;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lnet/sf/saxon/style/XSLInclude;

    if-eqz v1, :cond_0

    const-string v1, ""

    const-string v2, "href"

    invoke-interface {v0, v1, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lnet/sf/saxon/functions/DocumentFn;->computeDocumentKey(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Z)Lnet/sf/saxon/om/DocumentKey;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getStylesheetModules()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/TreeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getDocumentElement()Lnet/sf/saxon/tree/linked/ElementImpl;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-static {p0, v0, p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->i(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/StyleElement;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic j(Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/style/XSLLocalParam;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/style/XSLLocalParam;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLLocalParam;->prepareTemplateSignatureAttributes()V

    new-instance v0, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLGeneralVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLLocalParam;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->requiredType:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLLocalParam;->isRequiredParam()Z

    move-result v1

    iput-boolean v1, v0, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isRequired:Z

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLLocalParam;->isTunnelParam()Z

    move-result p1

    iput-boolean p1, v0, Lnet/sf/saxon/expr/instruct/NamedTemplate$LocalParamInfo;->isTunnel:Z

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static n(Lnet/sf/saxon/style/XSLTemplate;Lnet/sf/saxon/expr/instruct/NamedTemplate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x3

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/h7l;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/h7l;-><init>(Ljava/util/List;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->setLocalParamDetails(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addFixupAction(Lnet/sf/saxon/om/Action;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 1

    .line 1
    sget-object v0, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/trans/Visibility;)V

    return-void
.end method

.method public addGlobalVariable(Lnet/sf/saxon/expr/instruct/GlobalVariable;Lnet/sf/saxon/trans/Visibility;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lnet/sf/saxon/expr/instruct/Actor;->makeDeclaringComponent(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    .line 5
    :cond_0
    sget-object v1, Lnet/sf/saxon/trans/Visibility;->HIDDEN:Lnet/sf/saxon/trans/Visibility;

    if-ne p2, v1, :cond_1

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StylesheetPackage;->addHiddenComponent(Lnet/sf/saxon/expr/Component;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0xda

    .line 8
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    .line 9
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public addImportedSchema(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getSchemaNamespaces()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNamespaceAlias(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->p:I

    return-void
.end method

.method public adjustExposedVisibility()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/style/XSLExpose;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/XSLExpose;

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v2}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/Component;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getComponentKind()I

    move-result v5

    const/16 v6, 0xb4

    if-ne v5, v6, :cond_4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/trans/Mode;

    invoke-virtual {v6}, Lnet/sf/saxon/trans/Mode;->isUnnamedMode()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    new-instance v6, Lnet/sf/saxon/trans/ComponentTest;

    new-instance v7, Lnet/sf/saxon/pattern/NameTest;

    new-instance v8, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/expr/instruct/Actor;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    const/4 v9, 0x1

    invoke-direct {v7, v9, v8, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamePool;)V

    const/4 v8, -0x1

    invoke-direct {v6, v5, v7, v8}, Lnet/sf/saxon/trans/ComponentTest;-><init>(ILnet/sf/saxon/pattern/QNameTest;I)V

    const/16 v7, 0xa0

    if-ne v5, v7, :cond_5

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/om/Function;

    new-instance v8, Lnet/sf/saxon/trans/ComponentTest;

    new-instance v10, Lnet/sf/saxon/pattern/NameTest;

    new-instance v11, Lnet/sf/saxon/om/FingerprintedQName;

    invoke-interface {v7}, Lnet/sf/saxon/om/Function;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v12

    invoke-direct {v11, v12, v1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    invoke-direct {v10, v9, v11, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/NamePool;)V

    invoke-interface {v7}, Lnet/sf/saxon/om/Function;->getArity()I

    move-result v7

    invoke-direct {v8, v5, v10, v7}, Lnet/sf/saxon/trans/ComponentTest;-><init>(ILnet/sf/saxon/pattern/QNameTest;I)V

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/style/XSLExpose;

    invoke-virtual {v7}, Lnet/sf/saxon/style/XSLAcceptExpose;->getExplicitComponentTests()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    if-eqz v8, :cond_6

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_7
    invoke-virtual {v7}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/trans/VisibilityProvenance;->EXPOSED:Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-virtual {v4, v5, v6}, Lnet/sf/saxon/expr/Component;->setVisibility(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;)V

    goto :goto_3

    :cond_8
    move v9, v3

    :goto_3
    if-nez v9, :cond_3

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getVisibilityProvenance()Lnet/sf/saxon/trans/VisibilityProvenance;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v0, v4, v9}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->l(Ljava/util/List;Lnet/sf/saxon/expr/Component;Z)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v0, v4}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->k(Ljava/util/List;Lnet/sf/saxon/expr/Component;)V

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public checkAcceptableModeForPackage(Lnet/sf/saxon/style/XSLTemplate;Lnet/sf/saxon/trans/Mode;)Z
    .locals 3

    invoke-virtual {p1}, Lnet/sf/saxon/style/StyleElement;->getPackageData()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p2}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    if-eq p0, v0, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/style/XSLOverride;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :goto_0
    move p0, v1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/style/XSLUsePackage;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lnet/sf/saxon/trans/Mode;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p2

    check-cast p0, Lnet/sf/saxon/style/XSLUsePackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLUsePackage;->getUsedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/StylesheetPackage;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Component$M;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    sget-object p2, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne p0, p2, :cond_4

    goto :goto_0

    :cond_4
    move p0, v2

    :goto_1
    if-eqz p0, :cond_5

    const-string p0, "A template rule cannot be added to a mode declared in a used package unless the xsl:template declaration appears within an xsl:override child of the appropriate xsl:use-package element"

    const-string p2, "XTSE3050"

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    return v1
.end method

.method public checkStreamability(Lnet/sf/saxon/expr/instruct/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public combineAttributeSets(Lnet/sf/saxon/style/Compilation;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->t:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v4, Lnet/sf/saxon/expr/instruct/AttributeSet;

    invoke-direct {v4}, Lnet/sf/saxon/expr/instruct/AttributeSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/instruct/AttributeSet;->setName(Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v5, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v3}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/instruct/Actor;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/expr/instruct/Actor;->setLineNumber(I)V

    invoke-virtual {v3}, Lnet/sf/saxon/tree/linked/ElementImpl;->getColumnNumber()I

    move-result v3

    invoke-virtual {v4, v3}, Lnet/sf/saxon/expr/instruct/Actor;->setColumnNumber(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    iget-object v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v4, v2, v3}, Lnet/sf/saxon/expr/instruct/Actor;->makeDeclaringComponent(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/style/StylesheetPackage;->addComponent(Lnet/sf/saxon/expr/Component;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->t:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lnet/sf/saxon/trans/Visibility;->UNDEFINED:Lnet/sf/saxon/trans/Visibility;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_2
    if-ltz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v10}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v11

    check-cast v11, Lnet/sf/saxon/style/XSLAttributeSet;

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v6, v3, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v3

    move v8, v7

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v5}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v10

    check-cast v10, Lnet/sf/saxon/style/XSLAttributeSet;

    invoke-virtual {v10}, Lnet/sf/saxon/style/XSLAttributeSet;->isDeclaredStreamable()Z

    move-result v11

    or-int/2addr v7, v11

    invoke-virtual {v10, p1, v5}, Lnet/sf/saxon/style/XSLAttributeSet;->compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V

    invoke-virtual {v10}, Lnet/sf/saxon/style/XSLAttributeSet;->getContainedInstructions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Lnet/sf/saxon/style/StyleElement;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v5

    if-nez v8, :cond_6

    const-string v8, ""

    const-string v11, "visibility"

    invoke-virtual {v10, v8, v11}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    move v8, v3

    goto :goto_3

    :cond_6
    :goto_4
    move v8, v9

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/AttributeSet;

    invoke-virtual {v2, v7}, Lnet/sf/saxon/expr/instruct/AttributeSet;->setDeclaredStreamable(Z)V

    invoke-static {v4}, Lnet/sf/saxon/expr/instruct/Block;->makeBlock(Ljava/util/List;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v6

    invoke-static {v4, v3, v6}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    invoke-virtual {v2, v6}, Lnet/sf/saxon/expr/instruct/AttributeSet;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    if-eqz v8, :cond_8

    sget-object v4, Lnet/sf/saxon/trans/VisibilityProvenance;->EXPLICIT:Lnet/sf/saxon/trans/VisibilityProvenance;

    goto :goto_5

    :cond_8
    sget-object v4, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    :goto_5
    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lnet/sf/saxon/expr/Component;->setVisibility(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;)V

    if-eqz v7, :cond_2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->checkStreamability(Lnet/sf/saxon/expr/instruct/AttributeSet;)V

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public compile(Lnet/sf/saxon/style/Compilation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lnet/sf/saxon/style/Compilation;->timer:Lnet/sf/saxon/trans/Timer;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v2}, Lnet/sf/saxon/style/StylesheetPackage;->getXQueryFunctionLibrary()Lnet/sf/saxon/query/XQueryFunctionLibrary;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->getFunctionDefinitions()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/query/XQueryFunction;

    invoke-virtual {v3}, Lnet/sf/saxon/query/XQueryFunction;->fixupReferences()V

    goto :goto_0

    :cond_0
    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_1

    const-string v2, "fixup Query functions"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/StylesheetPackage;->isDeclaredModes()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v5}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v5

    instance-of v6, v5, Lnet/sf/saxon/style/XSLMode;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v6

    invoke-virtual {v5}, Lnet/sf/saxon/style/StyleElement;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    :cond_4
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->m(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/trans/rules/RuleManager;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/RuleManager;->checkConsistency()V

    iget-object v2, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v3}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v4

    instance-of v5, v4, Lnet/sf/saxon/style/XSLTemplate;

    if-eqz v5, :cond_6

    check-cast v4, Lnet/sf/saxon/style/XSLTemplate;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/style/XSLTemplate;->register(Lnet/sf/saxon/style/ComponentDeclaration;)V

    goto :goto_3

    :cond_7
    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_8

    const-string v2, "register templates"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->adjustExposedVisibility()V

    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_9

    const-string v2, "adjust exposed visibility"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v3}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/StyleElement;->F(I)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/StyleElement;->V(I)V

    invoke-virtual {v4, p1, v3}, Lnet/sf/saxon/style/StyleElement;->compileDeclaration(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V

    goto :goto_4

    :cond_b
    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ")"

    if-eqz v2, :cond_c

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compile top-level objects ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_c
    iget-object v2, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->k:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/StyleElement;->F(I)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/StyleElement;->V(I)V

    invoke-virtual {v4}, Lnet/sf/saxon/style/StyleElement;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-eq v5, v6, :cond_d

    move-object v5, v4

    check-cast v5, Lnet/sf/saxon/style/XSLFunction;

    invoke-virtual {v5}, Lnet/sf/saxon/style/XSLFunction;->getCompiledFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v5

    invoke-virtual {v4}, Lnet/sf/saxon/style/StyleElement;->makeExpressionVisitor()Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v4

    invoke-virtual {v5, v4}, Lnet/sf/saxon/expr/instruct/UserFunction;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V

    goto :goto_5

    :cond_e
    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "typeCheck functions ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->k:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result v2

    if-lez v2, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->optimizeTopLevel()V

    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_11

    const-string v2, "optimize top level"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_11
    iget-object v2, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->k:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v3}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/StyleElement;->F(I)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v4, v5}, Lnet/sf/saxon/style/StyleElement;->V(I)V

    check-cast v4, Lnet/sf/saxon/style/StylesheetComponent;

    invoke-interface {v4, v3}, Lnet/sf/saxon/style/StylesheetComponent;->optimize(Lnet/sf/saxon/style/ComponentDeclaration;)V

    goto :goto_6

    :cond_13
    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_14

    const-string v2, "optimize functions"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/DecimalFormatManager;->checkConsistency()V

    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_15

    const-string v2, "check decimal formats"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/RuleManager;->computeRankings()V

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->isFallbackToNonStreaming()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/RuleManager;->invertStreamableTemplates()V

    :cond_16
    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v3

    const/16 v4, 0x800

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Lnet/sf/saxon/trans/rules/RuleManager;->optimizeRules()V

    :cond_17
    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_18

    const-string v2, "build template rule tables"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_18
    new-instance v2, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    invoke-direct {v2, v1}, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    new-instance v3, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    invoke-direct {v3, v1}, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    iget-object v4, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v4}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/Component;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v6

    instance-of v6, v6, Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v6, :cond_19

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/UserFunction;->isOverrideExtensionFunction()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v2, v5}, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->addFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    goto :goto_7

    :cond_1a
    invoke-virtual {v3, v5}, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->addFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    goto :goto_7

    :cond_1b
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2, v3}, Lnet/sf/saxon/style/StylesheetPackage;->setFunctionLibraryDetails(Lnet/sf/saxon/functions/FunctionLibraryList;Lnet/sf/saxon/functions/ExecutableFunctionLibrary;Lnet/sf/saxon/functions/ExecutableFunctionLibrary;)V

    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_1c

    const-string v2, "build runtime function tables"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_1c
    iget-object v2, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v3}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v3

    instance-of v4, v3, Lnet/sf/saxon/style/XSLTemplate;

    if-eqz v4, :cond_1d

    check-cast v3, Lnet/sf/saxon/style/XSLTemplate;

    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLTemplate;->getActor()Lnet/sf/saxon/expr/instruct/NamedTemplate;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    if-nez v4, :cond_1d

    iget-object v4, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/instruct/Actor;->allocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;)V

    goto :goto_8

    :cond_1e
    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_1f

    const-string v2, "allocate binding slots to named templates"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_1f
    iget-object v2, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v2}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Component;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v3

    if-eqz v3, :cond_20

    iget-object v4, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/instruct/Actor;->allocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;)V

    goto :goto_9

    :cond_21
    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_22

    const-string v2, "allocate binding slots to component references"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_22
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/KeyManager;->getAllKeyDefinitionSets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/trans/KeyDefinitionSet;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/KeyDefinitionSet;->getKeyDefinitions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/trans/KeyDefinition;

    sget-object v5, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnet/sf/saxon/expr/instruct/Actor;->makeDeclaringComponent(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/expr/Component;

    iget-object v5, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v4, v5}, Lnet/sf/saxon/trans/KeyDefinition;->allocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;)V

    goto :goto_a

    :cond_24
    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_25

    const-string v2, "allocate binding slots to key definitions"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getAllAccumulators()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/accum/Accumulator;

    iget-object v4, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/instruct/Actor;->allocateAllBindingSlots(Lnet/sf/saxon/style/StylesheetPackage;)V

    goto :goto_b

    :cond_26
    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_27

    const-string v2, "allocate binding slots to accumulators"

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_27
    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/CompilerInfo;->isGenerateByteCode()Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-object v2, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->isDeferredByteCode(Lnet/sf/saxon/s9api/HostLanguage;)Z

    move-result v2

    if-nez v2, :cond_2a

    sget-boolean v2, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object v2

    const-string v3, "Generating byte code..."

    invoke-virtual {v2, v3}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_28
    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_29
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    instance-of v3, v2, Lnet/sf/saxon/style/StylesheetComponent;

    if-eqz v3, :cond_29

    check-cast v2, Lnet/sf/saxon/style/StylesheetComponent;

    invoke-interface {v2, v1}, Lnet/sf/saxon/style/StylesheetComponent;->generateByteCode(Lnet/sf/saxon/expr/parser/Optimizer;)V

    goto :goto_c

    :cond_2a
    sget-boolean p0, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz p0, :cond_2b

    const-string p0, "inject byte code candidates"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    const-string p0, "total compile time"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/Timer;->reportCumulative(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result p1

    if-eqz p1, :cond_2c

    :cond_2b
    :goto_d
    return-void

    :cond_2c
    throw p0
.end method

.method public compileError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    return-void
.end method

.method public compileError(Lnet/sf/saxon/trans/XPathException;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getRootElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    return-void
.end method

.method public complete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->complete()V

    return-void
.end method

.method public declareXQueryFunction(Lnet/sf/saxon/query/XQueryFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getXQueryFunctionLibrary()Lnet/sf/saxon/query/XQueryFunctionLibrary;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/query/XQueryFunction;->getUserFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->getFunction(Lnet/sf/saxon/trans/SymbolicName$F;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->declareFunction(Lnet/sf/saxon/query/XQueryFunction;)V

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate declaration of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/query/XQueryFunction;->getUserFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XQST0034"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lnet/sf/saxon/style/StyleElement;->index(Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getRootElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->isSchemaAware()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/style/XSLImportSchema;

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/style/Compilation;->setSchemaAware(Z)V

    :cond_1
    return-void
.end method

.method public fixup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->x:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Action;

    invoke-interface {v0}, Lnet/sf/saxon/om/Action;->doAction()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->p:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->r:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    iget v1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->p:I

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->s:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->p:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v3}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/style/XSLNamespaceAlias;

    invoke-virtual {v4}, Lnet/sf/saxon/style/XSLNamespaceAlias;->getStylesheetURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lnet/sf/saxon/style/XSLNamespaceAlias;->getResultNamespaceBinding()Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object v6

    invoke-virtual {v3}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    move v1, v3

    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->r:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-virtual {v3}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "More than one alias is defined for the same namespace"

    const-string v7, "XTSE0810"

    invoke-virtual {v4, v3, v7}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->r:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->r:Ljava/util/HashMap;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->s:Ljava/util/Set;

    invoke-virtual {v6}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->q:Ljava/util/List;

    return-void
.end method

.method public gatherOutputProperties(Lnet/sf/saxon/om/StructuredQName;)Ljava/util/Properties;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    new-instance v3, Ljava/util/Properties;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getDefaultSerializationProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    new-instance v2, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    iget-object v4, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_1
    if-ltz v4, :cond_3

    iget-object v5, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v5}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v6

    instance-of v6, v6, Lnet/sf/saxon/style/XSLOutput;

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/style/XSLOutput;

    if-nez p1, :cond_1

    invoke-virtual {v6}, Lnet/sf/saxon/style/XSLOutput;->getFormatQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lnet/sf/saxon/style/XSLOutput;->getFormatQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v7

    invoke-virtual {p1, v7}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_2
    invoke-virtual {v5}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v1

    invoke-virtual {v6, v3, v2, v1}, Lnet/sf/saxon/style/XSLOutput;->gatherOutputProperties(Ljava/util/Properties;Ljava/util/HashMap;I)V

    move v1, v0

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested output format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not been defined"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XTDE1460"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v3
.end method

.method public getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->o:Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    return-object p0
.end method

.method public getAttributeSetDeclarations(Lnet/sf/saxon/om/StructuredQName;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/StructuredQName;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->t:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getAttributeSets(Lnet/sf/saxon/om/StructuredQName;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v0}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/style/XSLAttributeSet;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/XSLAttributeSet;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLAttributeSet;->getAttributeSetName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCharacterMap(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/ComponentDeclaration;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/style/XSLCharacterMap;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/XSLCharacterMap;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLCharacterMap;->getCharacterMapName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->w:Lnet/sf/saxon/serialize/CharacterMapIndex;

    return-object p0
.end method

.method public getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Component;

    return-object p0
.end method

.method public getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->m:Lnet/sf/saxon/trans/DecimalFormatManager;

    return-object p0
.end method

.method public getEquivalentVariable(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/instruct/GlobalVariable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalVariableBinding(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/ComponentDeclaration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/XSLGlobalVariable;

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getSourceBinding()Lnet/sf/saxon/style/SourceBinding;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getImportedSchemaTable()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getSchemaNamespaces()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getKeyManager()Lnet/sf/saxon/trans/KeyManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->l:Lnet/sf/saxon/trans/KeyManager;

    return-object p0
.end method

.method public getNamedTemplate(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/instruct/NamedTemplate;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v1, 0xd2

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Component;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    :goto_0
    return-object p0
.end method

.method public getNamespaceAlias(Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->r:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NamespaceBinding;

    return-object p0
.end method

.method public getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;
    .locals 0

    return-object p0
.end method

.method public getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->n:Lnet/sf/saxon/trans/rules/RuleManager;

    return-object p0
.end method

.method public getSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStylesheetDocument(Lnet/sf/saxon/om/DocumentKey;)Lnet/sf/saxon/style/XSLModuleRoot;
    .locals 3

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->u:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/XSLModuleRoot;

    if-eqz p0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stylesheet module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is included or imported more than once. This is permitted, but may lead to errors or unexpected behavior"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StyleElement;->issueWarning(Lnet/sf/saxon/trans/XPathException;)V

    :cond_0
    return-object p0
.end method

.method public getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    return-object p0
.end method

.method public getTypeAliasManager()Lnet/sf/saxon/trans/TypeAliasManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->v:Lnet/sf/saxon/trans/TypeAliasManager;

    return-object p0
.end method

.method public final h(Lnet/sf/saxon/style/XSLUsePackage;Lnet/sf/saxon/style/Compilation;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/style/XSLUsePackage;",
            "Lnet/sf/saxon/style/Compilation;",
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

    invoke-virtual {p2}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/style/XSLUsePackage;->Z(Lnet/sf/saxon/trans/CompilerInfo;)V

    iget-object p2, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-virtual {p1, p0, p2, p3}, Lnet/sf/saxon/style/XSLUsePackage;->a0(Lnet/sf/saxon/style/PrincipalStylesheetModule;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public hasNamespaceAliases()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->p:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public importSchemata()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    instance-of v2, v2, Lnet/sf/saxon/style/XSLImportSchema;

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "xsl:import-schema requires Saxon-EE"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v0, "XTSE1650"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {v1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p0

    :cond_1
    return-void
.end method

.method public indexAttributeSet(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/XSLAttributeSet;

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLAttributeSet;->getAttributeSetName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->t:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->t:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, ""

    const-string v1, "visibility"

    invoke-virtual {v0, p0, v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v4

    invoke-virtual {v4, p0, v1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    invoke-interface {v2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Visibility attributes on attribute-sets sharing the same name must all be the same"

    const-string v0, "XTSE0010"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public indexFunction(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 7

    iget-object v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/XSLFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLFunction;->getCompiledFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLFunction;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName$F;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/expr/Component;

    if-nez v4, :cond_0

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->k:Ljava/util/HashMap;

    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v6

    if-ne v5, v6, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v4

    iget-object v5, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->k:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v5}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v6

    if-ne v4, v6, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Duplicate named function (see line "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XTSE0770"

    invoke-virtual {v1, p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ge v4, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->k:Ljava/util/HashMap;

    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/16 v5, 0xc0

    invoke-virtual {v1, v5}, Lnet/sf/saxon/style/StyleElement;->v(I)Lnet/sf/saxon/style/StyleElement;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->k:Ljava/util/HashMap;

    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Function "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/trans/SymbolicName$F;->getShortName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " conflicts with a public function in package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XTSE3050"

    invoke-virtual {v1, p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public indexMode(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 4

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/style/XSLMode;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLMode;->getObjectName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v2, 0xb4

    invoke-direct {v1, v2, v0}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/style/StylesheetPackage;->getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    if-eq v2, p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " conflicts with a public mode declared in package "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->getDeclaringComponent()Lnet/sf/saxon/expr/Component$M;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XTSE3050"

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public indexNamedTemplate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/XSLTemplate;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLTemplate;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/Component;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/style/XSLTemplate;

    invoke-virtual {v3}, Lnet/sf/saxon/style/XSLTemplate;->getCompiledNamedTemplate()Lnet/sf/saxon/expr/instruct/NamedTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v3}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->n(Lnet/sf/saxon/style/XSLTemplate;Lnet/sf/saxon/expr/instruct/NamedTemplate;)V

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v3}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v4

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v5

    if-ne v4, v5, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v3

    iget-object v4, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v5

    if-ne v3, v5, :cond_2

    invoke-virtual {v1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/style/XSLOverride;

    if-eqz p0, :cond_1

    const-string p0, "XTSE3055"

    goto :goto_0

    :cond_1
    const-string p0, "XTSE0660"

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate named template (see line "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ge v3, v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/sf/saxon/expr/instruct/NamedTemplate;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v3}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->n(Lnet/sf/saxon/style/XSLTemplate;Lnet/sf/saxon/expr/instruct/NamedTemplate;)V

    goto :goto_1

    :cond_4
    const/16 v4, 0xc0

    invoke-virtual {v1, v4}, Lnet/sf/saxon/style/StyleElement;->v(I)Lnet/sf/saxon/style/StyleElement;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLTemplate;->getCompiledNamedTemplate()Lnet/sf/saxon/expr/instruct/NamedTemplate;

    move-result-object v3

    invoke-virtual {v3, v1}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Named template "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " conflicts with a public named template in package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XTSE3050"

    invoke-virtual {v1, p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public indexVariableDeclaration(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/XSLGlobalVariable;

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getSourceBinding()Lnet/sf/saxon/style/SourceBinding;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/Actor;->obtainDeclaringComponent(Lnet/sf/saxon/style/StyleElement;)Lnet/sf/saxon/expr/Component;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v3}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/Component;

    const/16 v6, 0xda

    if-nez v5, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->i:Ljava/util/HashMap;

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lnet/sf/saxon/trans/SymbolicName;

    invoke-direct {p0, v6, v1}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v7

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v8

    if-ne v7, v8, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v2

    iget-object v5, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->i:Ljava/util/HashMap;

    invoke-virtual {v4}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v5

    if-ne v2, v5, :cond_2

    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object p0

    const-string p1, "XTSE0630"

    if-ne p0, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global variable or parameter $"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is declared more than once (caused by including the containing module more than once)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate global variable/parameter $"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (see line "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getLineNumber()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/tree/linked/ElementImpl;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/4 v7, 0x1

    if-ge v2, v5, :cond_3

    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    if-eq v0, v2, :cond_3

    invoke-virtual {v0, v7}, Lnet/sf/saxon/style/XSLGlobalVariable;->setRedundant(Z)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    if-eq v0, v2, :cond_7

    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/XSLGlobalVariable;

    invoke-virtual {v2, v7}, Lnet/sf/saxon/style/XSLGlobalVariable;->setRedundant(Z)V

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->i:Ljava/util/HashMap;

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lnet/sf/saxon/trans/SymbolicName;

    invoke-direct {p0, v6, v1}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/XSLGlobalVariable;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Actor;->getDeclaringComponent()Lnet/sf/saxon/expr/Component;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StyleElement;->v(I)Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->i:Ljava/util/HashMap;

    invoke-virtual {v4}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    instance-of p0, v0, Lnet/sf/saxon/style/XSLGlobalParam;

    if-eqz p0, :cond_6

    const-string p0, "parameter"

    goto :goto_0

    :cond_6
    const-string p0, "variable"

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Global "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " $"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " conflicts with a public variable/parameter in package "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XTSE3050"

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public isAliasResultNamespace(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->s:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isDeclaredModes()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->h:Z

    return p0
.end method

.method public isImportedSchema(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getSchemaNamespaces()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final k(Ljava/util/List;Lnet/sf/saxon/expr/Component;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/XSLExpose;",
            ">;",
            "Lnet/sf/saxon/expr/Component;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/style/XSLExpose;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLAcceptExpose;->getWildcardComponentTests()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/ComponentTest;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ComponentTest;->matches(Lnet/sf/saxon/expr/instruct/Actor;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne p0, v0, :cond_3

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The non-abstract component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be made abstract by means of xsl:expose"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XTSE3025"

    invoke-direct {p0, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/trans/VisibilityProvenance;->EXPOSED:Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/expr/Component;->setVisibility(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;)V

    :cond_4
    return-void
.end method

.method public final l(Ljava/util/List;Lnet/sf/saxon/expr/Component;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/XSLExpose;",
            ">;",
            "Lnet/sf/saxon/expr/Component;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/style/XSLExpose;

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLAcceptExpose;->getWildcardComponentTests()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trans/ComponentTest;

    invoke-virtual {v1}, Lnet/sf/saxon/trans/ComponentTest;->isPartialWildcard()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/trans/ComponentTest;->matches(Lnet/sf/saxon/expr/instruct/Actor;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    sget-object p3, Lnet/sf/saxon/trans/Visibility;->ABSTRACT:Lnet/sf/saxon/trans/Visibility;

    if-ne p0, p3, :cond_3

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    if-ne p0, p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The non-abstract component "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/Actor;->getSymbolicName()Lnet/sf/saxon/trans/SymbolicName;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be made abstract by means of xsl:expose"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "XTSE3025"

    invoke-direct {p0, p2, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/style/XSLAcceptExpose;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/trans/VisibilityProvenance;->EXPOSED:Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/expr/Component;->setVisibility(Lnet/sf/saxon/trans/Visibility;Lnet/sf/saxon/trans/VisibilityProvenance;)V

    const/4 p0, 0x1

    return p0

    :cond_4
    return p3
.end method

.method public final m(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/trans/rules/RuleManager;)V
    .locals 7

    instance-of v0, p1, Lnet/sf/saxon/style/XSLApplyTemplates;

    if-nez v0, :cond_0

    instance-of v0, p1, Lnet/sf/saxon/style/XSLTemplate;

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/StyleElement;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ \t\n\r]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v0}, Lnet/sf/saxon/style/StyleElement;->makeQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v4

    new-instance v5, Lnet/sf/saxon/trans/SymbolicName;

    const/16 v6, 0xb4

    invoke-direct {v5, v6, v4}, Lnet/sf/saxon/trans/SymbolicName;-><init>(ILnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/style/StylesheetPackage;->getComponentIndex()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/expr/Component;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Component;->getDeclaringPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v5

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v6

    if-eq v5, v6, :cond_1

    instance-of v4, p1, Lnet/sf/saxon/style/XSLTemplate;

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/tree/linked/NodeImpl;->getParent()Lnet/sf/saxon/tree/linked/NodeImpl;

    move-result-object v4

    instance-of v4, v4, Lnet/sf/saxon/style/XSLOverride;

    if-nez v4, :cond_2

    const-string v4, "A template rule cannot be added to a mode declared in a used package unless the xsl:template declaration appears within an xsl:override child of the appropriate xsl:use-package element"

    const-string v5, "XTSE3050"

    invoke-virtual {p1, v4, v5}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Lnet/sf/saxon/trans/rules/RuleManager;->obtainMode(Lnet/sf/saxon/om/StructuredQName;Z)Lnet/sf/saxon/trans/Mode;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/linked/NodeImpl;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Lnet/sf/saxon/style/StyleElement;

    if-eqz v1, :cond_4

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->m(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/trans/rules/RuleManager;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public optimizeTopLevel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v0}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/style/StylesheetComponent;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lnet/sf/saxon/style/XSLFunction;

    if-nez v2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/StyleElement;->F(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/StyleElement;->V(I)V

    move-object v2, v1

    check-cast v2, Lnet/sf/saxon/style/StylesheetComponent;

    invoke-interface {v2, v0}, Lnet/sf/saxon/style/StylesheetComponent;->optimize(Lnet/sf/saxon/style/ComponentDeclaration;)V

    :cond_1
    instance-of v0, v1, Lnet/sf/saxon/style/XSLTemplate;

    if-eqz v0, :cond_0

    check-cast v1, Lnet/sf/saxon/style/XSLTemplate;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLTemplate;->allocatePatternSlotNumbers()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public preprocess(Lnet/sf/saxon/style/Compilation;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p1, Lnet/sf/saxon/style/Compilation;->timer:Lnet/sf/saxon/trans/Timer;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getRootElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/XSLPackage;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getRootElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->spliceUsePackages(Lnet/sf/saxon/style/XSLPackage;Lnet/sf/saxon/style/Compilation;)V

    sget-boolean v0, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v0, :cond_0

    const-string v0, "spliceIncludes"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->importSchemata()V

    sget-boolean v0, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v0, :cond_1

    const-string v0, "importSchemata"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getTypeAliasManager()Lnet/sf/saxon/trans/TypeAliasManager;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/TypeAliasManager;->processAllDeclarations(Ljava/util/List;)V

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->e()V

    sget-boolean v0, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v0, :cond_2

    const-string v0, "buildIndexes"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->f()V

    sget-boolean v0, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v0, :cond_3

    const-string v0, "checkForSchemaAwareness"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->processAllAttributes()V

    sget-boolean v0, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v0, :cond_4

    const-string v0, "processAllAttributes"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g()V

    sget-boolean v0, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v0, :cond_5

    const-string v0, "collectNamespaceAliases"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/StyleElement;->F(I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/StyleElement;->V(I)V

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->fixupReferences()V

    goto :goto_0

    :cond_7
    sget-boolean v0, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v0, :cond_8

    const-string v0, "fixupReferences"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getStylesheetElement()Lnet/sf/saxon/style/XSLModuleRoot;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/XSLPackage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StyleElement;->F(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StyleElement;->V(I)V

    invoke-virtual {v0, v3}, Lnet/sf/saxon/style/XSLPackage;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lnet/sf/saxon/style/StyleElement;->validateSubtree(Lnet/sf/saxon/style/ComponentDeclaration;Z)V

    goto :goto_1

    :cond_9
    sget-boolean v1, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v1, :cond_a

    const-string v1, "validate"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0, v3}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->gatherOutputProperties(Lnet/sf/saxon/om/StructuredQName;)Ljava/util/Properties;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->A()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "{http://saxon.sf.net/}stylesheet-version"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StylesheetPackage;->setDefaultOutputProperties(Ljava/util/Properties;)V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v3

    instance-of v3, v3, Lnet/sf/saxon/style/XSLOutput;

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/XSLOutput;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLOutput;->getFormatQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->y:Z

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The stylesheet contains xsl:result-document instructions that calculate the output format name at run-time, but there are no named xsl:output declarations"

    const-string v0, "XTDE1460"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_e
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->gatherOutputProperties(Lnet/sf/saxon/om/StructuredQName;)Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lnet/sf/saxon/style/StylesheetPackage;->setNamedOutputProperties(Lnet/sf/saxon/om/StructuredQName;Ljava/util/Properties;)V

    goto :goto_3

    :cond_f
    :goto_4
    sget-boolean v0, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz v0, :cond_10

    const-string v0, "Register output formats"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v1}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/style/XSLCharacterMap;

    if-eqz v2, :cond_11

    check-cast v1, Lnet/sf/saxon/style/XSLCharacterMap;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLCharacterMap;->getCharacterMapName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/z/IntHashMap;

    invoke-direct {v3}, Lnet/sf/saxon/z/IntHashMap;-><init>()V

    invoke-virtual {v1, v3}, Lnet/sf/saxon/style/XSLCharacterMap;->assemble(Lnet/sf/saxon/z/IntHashMap;)V

    iget-object v4, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->w:Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-virtual {v1}, Lnet/sf/saxon/style/XSLCharacterMap;->getCharacterMapName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    new-instance v5, Lnet/sf/saxon/serialize/CharacterMap;

    invoke-direct {v5, v2, v3}, Lnet/sf/saxon/serialize/CharacterMap;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/z/IntHashMap;)V

    invoke-virtual {v4, v1, v5}, Lnet/sf/saxon/serialize/CharacterMapIndex;->putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V

    goto :goto_5

    :cond_12
    sget-boolean p0, Lnet/sf/saxon/style/Compilation;->TIMING:Z

    if-eqz p0, :cond_13

    const-string p0, "Index character maps"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/Timer;->report(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public processAllAttributes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getRootElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->N()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getRootElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->O()V

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getRootElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/style/StyleElement;->prepareAttributes()V

    iget-object v0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->u:Ljava/util/HashMap;

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

    check-cast v1, Lnet/sf/saxon/style/XSLModuleRoot;

    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->prepareAttributes()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v0}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/StyleElement;->F(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Lnet/sf/saxon/style/StyleElement;->V(I)V

    :try_start_0
    invoke-virtual {v1}, Lnet/sf/saxon/style/StyleElement;->processAllAttributes()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lnet/sf/saxon/style/ComponentDeclaration;->getSourceElement()Lnet/sf/saxon/style/StyleElement;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/StyleElement;->compileError(Lnet/sf/saxon/trans/XPathException;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public putStylesheetDocument(Lnet/sf/saxon/om/DocumentKey;Lnet/sf/saxon/style/XSLStylesheet;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->u:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAccumulatorManager(Lnet/sf/saxon/expr/accum/AccumulatorRegistry;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->o:Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    iget-object p0, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->g:Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/PackageData;->setAccumulatorRegistry(Lnet/sf/saxon/expr/accum/AccumulatorRegistry;)V

    return-void
.end method

.method public setNeedsDynamicOutputProperties(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/style/PrincipalStylesheetModule;->y:Z

    return-void
.end method

.method public spliceUsePackages(Lnet/sf/saxon/style/XSLPackage;Lnet/sf/saxon/style/Compilation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p1, v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->i(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/StyleElement;Ljava/util/List;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/XSLUsePackage;

    invoke-virtual {p0, v2, p2, p1}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->h(Lnet/sf/saxon/style/XSLUsePackage;Lnet/sf/saxon/style/Compilation;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/style/XSLUsePackage;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLUsePackage;->c0()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLUsePackage;->getUsedPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v2

    invoke-virtual {p2, v2, v3, p1}, Lnet/sf/saxon/style/StylesheetPackage;->addComponentsFromUsedPackage(Lnet/sf/saxon/style/StylesheetPackage;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/style/XSLUsePackage;

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/style/XSLUsePackage;->b0(Lnet/sf/saxon/style/PrincipalStylesheetModule;Ljava/util/Set;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->spliceIncludes()V

    return-void
.end method
