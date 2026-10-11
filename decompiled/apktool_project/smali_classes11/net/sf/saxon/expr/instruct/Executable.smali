.class public Lnet/sf/saxon/expr/instruct/Executable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/Configuration;

.field public b:Lnet/sf/saxon/expr/PackageData;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/PackageData;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Properties;

.field public e:Lnet/sf/saxon/serialize/CharacterMapIndex;

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/query/QueryModule;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lnet/sf/saxon/functions/FunctionLibraryList;

.field public i:Lnet/sf/saxon/s9api/HostLanguage;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/expr/instruct/GlobalParam;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

.field protected schemaAware:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->c:Ljava/util/List;

    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->i:Lnet/sf/saxon/s9api/HostLanguage;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->j:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->k:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/sf/saxon/expr/instruct/Executable;->l:Z

    iput-boolean v1, p0, Lnet/sf/saxon/expr/instruct/Executable;->schemaAware:Z

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->m:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Executable;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    return-void
.end method


# virtual methods
.method public addPackage(Lnet/sf/saxon/expr/PackageData;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addQueryLibraryModule(Lnet/sf/saxon/query/QueryModule;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->f:Ljava/util/HashMap;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->f:Ljava/util/HashMap;

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/query/QueryModule;->getModuleNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/expr/instruct/Executable;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->f:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public addQueryLocationHintProcessed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->g:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->g:Ljava/util/HashSet;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->g:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkInitialContextItem(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->m:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string v1, "XPDY0002"

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isAbsentFocus()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The global context item is required to be absent"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x14

    const-string v4, "XPTY0004"

    if-nez p1, :cond_8

    iget-object v5, p0, Lnet/sf/saxon/expr/instruct/Executable;->m:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isMayBeOmitted()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lnet/sf/saxon/expr/instruct/Executable;->m:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getDefaultValue()Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    if-eqz v5, :cond_b

    :try_start_0
    iget-object p1, p0, Lnet/sf/saxon/expr/instruct/Executable;->m:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getDefaultValue()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->m:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getRequiredItemTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/type/ItemType;

    invoke-interface {p2, p1, v0}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v1, "defaulted global context item"

    invoke-direct {p0, v3, v1, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0, p2, p1, v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The context item cannot be initialized to an empty sequence"

    invoke-direct {p0, p1, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "last()"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "position()"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "XQDY0054"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_6
    :goto_2
    throw p0

    :cond_7
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "A global context item is required, but none has been supplied"

    const-string p2, "XTDE3086"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object p2, p0, Lnet/sf/saxon/expr/instruct/Executable;->m:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getRequiredItemTypes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/ItemType;

    iget-object v5, p0, Lnet/sf/saxon/expr/instruct/Executable;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v5}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v5

    invoke-interface {v1, p1, v5}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance p2, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const-string v5, "supplied global context item"

    invoke-direct {p2, v3, v5, v2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p2, v1, p1, v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p0, v0, :cond_a

    const-string v4, "XTTE0590"

    :cond_a
    invoke-direct {p2, p1, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_b
    return-object p1
.end method

.method public checkSuppliedParameters(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-void
.end method

.method public createsSecondaryResult()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->l:Z

    return p0
.end method

.method public explainGlobalVariables(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "globalVariables"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getPackages()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/PackageData;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getGlobalVariableList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public fixupQueryModules(Lnet/sf/saxon/query/QueryModule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/query/QueryModule;->bindUnboundVariables()V

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v2}, Lnet/sf/saxon/query/QueryModule;->bindUnboundVariables()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/query/QueryModule;->getGlobalStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/query/QueryModule;->fixupGlobalVariables(Lnet/sf/saxon/expr/instruct/SlotManager;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/query/QueryModule;->bindUnboundFunctionCalls()V

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->f:Ljava/util/HashMap;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v2}, Lnet/sf/saxon/query/QueryModule;->bindUnboundFunctionCalls()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/query/QueryModule;->getGlobalFunctionLibrary()Lnet/sf/saxon/query/XQueryFunctionLibrary;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/query/QueryModule;->checkForCircularities(Ljava/util/List;Lnet/sf/saxon/query/XQueryFunctionLibrary;)V

    invoke-virtual {p1}, Lnet/sf/saxon/query/QueryModule;->fixupGlobalFunctions()V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/query/QueryModule;->typeCheckGlobalVariables(Ljava/util/List;)V

    invoke-virtual {p1}, Lnet/sf/saxon/query/QueryModule;->optimizeGlobalFunctions()V

    return-void
.end method

.method public getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->e:Lnet/sf/saxon/serialize/CharacterMapIndex;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->e:Lnet/sf/saxon/serialize/CharacterMapIndex;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->e:Lnet/sf/saxon/serialize/CharacterMapIndex;

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibraryList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->h:Lnet/sf/saxon/functions/FunctionLibraryList;

    return-object p0
.end method

.method public getGlobalContextRequirement()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->m:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    return-object p0
.end method

.method public getGlobalParameter(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/instruct/GlobalParam;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->j:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/instruct/GlobalParam;

    return-object p0
.end method

.method public getGlobalParameters()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/expr/instruct/GlobalParam;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->j:Ljava/util/Map;

    return-object p0
.end method

.method public getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->i:Lnet/sf/saxon/s9api/HostLanguage;

    return-object p0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Properties;

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->d:Ljava/util/Properties;

    invoke-direct {v0, p0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    return-object v0
.end method

.method public getOutputProperties(Lnet/sf/saxon/om/StructuredQName;)Ljava/util/Properties;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->k:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public getPackages()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/expr/PackageData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->c:Ljava/util/List;

    return-object p0
.end method

.method public getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->d:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->d:Ljava/util/Properties;

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->d:Ljava/util/Properties;

    new-instance v1, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    return-object v1
.end method

.method public getQueryLibraryModules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/query/QueryModule;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->f:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getQueryLibraryModules(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/query/QueryModule;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->f:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getQueryModuleWithSystemId(Ljava/lang/String;Lnet/sf/saxon/query/QueryModule;)Lnet/sf/saxon/query/QueryModule;
    .locals 1

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getQueryLibraryModules()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {p2}, Lnet/sf/saxon/query/QueryModule;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopLevelPackage()Lnet/sf/saxon/expr/PackageData;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->b:Lnet/sf/saxon/expr/PackageData;

    return-object p0
.end method

.method public isQueryLocationHintProcessed(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->g:Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->schemaAware:Z

    return p0
.end method

.method public registerGlobalParameter(Lnet/sf/saxon/expr/instruct/GlobalParam;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCharacterMapIndex(Lnet/sf/saxon/serialize/CharacterMapIndex;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Executable;->e:Lnet/sf/saxon/serialize/CharacterMapIndex;

    return-void
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Executable;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public setCreatesSecondaryResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/Executable;->l:Z

    return-void
.end method

.method public setDefaultOutputProperties(Ljava/util/Properties;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Executable;->d:Ljava/util/Properties;

    return-void
.end method

.method public setFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Executable;->h:Lnet/sf/saxon/functions/FunctionLibraryList;

    return-void
.end method

.method public setGlobalContextRequirement(Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Executable;->m:Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    return-void
.end method

.method public setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Executable;->i:Lnet/sf/saxon/s9api/HostLanguage;

    return-void
.end method

.method public setOutputProperties(Lnet/sf/saxon/om/StructuredQName;Ljava/util/Properties;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/instruct/Executable;->k:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/instruct/Executable;->k:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSchemaAware(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/instruct/Executable;->schemaAware:Z

    return-void
.end method

.method public setTopLevelPackage(Lnet/sf/saxon/expr/PackageData;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/Executable;->b:Lnet/sf/saxon/expr/PackageData;

    return-void
.end method
