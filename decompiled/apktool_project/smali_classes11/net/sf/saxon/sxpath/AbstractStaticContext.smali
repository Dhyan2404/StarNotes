.class public abstract Lnet/sf/saxon/sxpath/AbstractStaticContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/StaticContext;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Lnet/sf/saxon/Configuration;

.field public g:Lnet/sf/saxon/expr/PackageData;

.field public h:Lnet/sf/saxon/s9api/Location;

.field public i:Ljava/lang/String;

.field public j:Lnet/sf/saxon/functions/FunctionLibraryList;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:I

.field public final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/type/ItemType;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

.field public q:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/s9api/Location;",
            ">;"
        }
    .end annotation
.end field

.field protected usingDefaultFunctionLibrary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->e:Ljava/lang/String;

    sget-object v0, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    iput-object v0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->h:Lnet/sf/saxon/s9api/Location;

    new-instance v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v0}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->j:Lnet/sf/saxon/functions/FunctionLibraryList;

    const-string v0, "http://www.w3.org/2005/xpath-functions"

    iput-object v0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->m:Z

    const/16 v0, 0x1f

    iput v0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->n:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->o:Ljava/util/Map;

    sget-object v0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->DEFAULT_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    iput-object v0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->p:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->b(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/Configuration;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 2

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v1, "SXWN9000"

    invoke-direct {v0, p1, v1, p2}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method


# virtual methods
.method public final addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->j:Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    return-void
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->f:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getContainingLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->h:Lnet/sf/saxon/s9api/Location;

    return-object p0
.end method

.method public getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/trans/DecimalFormatManager;

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->XPATH:Lnet/sf/saxon/s9api/HostLanguage;

    iget v2, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->n:I

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/DecimalFormatManager;-><init>(Lnet/sf/saxon/s9api/HostLanguage;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/PackageData;->setDecimalFormatManager(Lnet/sf/saxon/trans/DecimalFormatManager;)V

    :cond_0
    return-object v0
.end method

.method public getDefaultCollationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultElementNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultFunctionNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->j:Lnet/sf/saxon/functions/FunctionLibraryList;

    return-object p0
.end method

.method public getKeyManager()Lnet/sf/saxon/trans/KeyManager;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getKeyManager()Lnet/sf/saxon/trans/KeyManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/expr/PackageData;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->g:Lnet/sf/saxon/expr/PackageData;

    return-object p0
.end method

.method public getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method

.method public getStaticBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->e:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getUnprefixedElementMatchingPolicy()Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->p:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    return-object p0
.end method

.method public getWarningHandler()Ljava/util/function/BiConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/s9api/Location;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->q:Ljava/util/function/BiConsumer;

    return-object p0
.end method

.method public getXPathVersion()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->n:I

    return p0
.end method

.method public isInBackwardsCompatibleMode()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->m:Z

    return p0
.end method

.method public issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getWarningHandler()Ljava/util/function/BiConsumer;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/EarlyEvaluationContext;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/EarlyEvaluationContext;-><init>(Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    return-object v0
.end method

.method public resolveTypeAlias(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->o:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public setBackwardsCompatibilityMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->m:Z

    return-void
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->e:Ljava/lang/String;

    return-void
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->i:Ljava/lang/String;

    new-instance v0, Lcom/sunia/HTREnginev2/u4;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/u4;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->q:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public setContainingLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->h:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public setDecimalFormatManager(Lnet/sf/saxon/trans/DecimalFormatManager;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/PackageData;->setDecimalFormatManager(Lnet/sf/saxon/trans/DecimalFormatManager;)V

    return-void
.end method

.method public setDefaultCollationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->i:Ljava/lang/String;

    return-void
.end method

.method public setDefaultElementNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->l:Ljava/lang/String;

    return-void
.end method

.method public final setDefaultFunctionLibrary()V
    .locals 3

    .line 1
    new-instance v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v0}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    .line 2
    iget-object v1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getXPath31FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getBuiltInExtensionLibraryList()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    .line 4
    new-instance v1, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getIntegratedFunctionLibrary()Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    .line 6
    iget-object v1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/Configuration;->addExtensionBinders(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    .line 7
    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    return-void
.end method

.method public final setDefaultFunctionLibrary(I)V
    .locals 2

    .line 8
    new-instance v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {v0}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1f

    if-eq p1, v1, :cond_1

    const/16 v1, 0x28

    if-eq p1, v1, :cond_0

    const/16 v1, 0x131

    if-eq p1, v1, :cond_2

    .line 9
    invoke-static {}, Lnet/sf/saxon/functions/registry/XPath20FunctionSet;->getInstance()Lnet/sf/saxon/functions/registry/XPath20FunctionSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getXPath40FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getXPath31FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getXPath30FunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    .line 13
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getBuiltInExtensionLibraryList()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    .line 14
    new-instance p1, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    .line 15
    iget-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getIntegratedFunctionLibrary()Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    .line 16
    iget-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->f:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->addExtensionBinders(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    .line 17
    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    return-void
.end method

.method public setDefaultFunctionNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->k:Ljava/lang/String;

    return-void
.end method

.method public setFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->j:Lnet/sf/saxon/functions/FunctionLibraryList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->usingDefaultFunctionLibrary:Z

    return-void
.end method

.method public setPackageData(Lnet/sf/saxon/expr/PackageData;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->g:Lnet/sf/saxon/expr/PackageData;

    return-void
.end method

.method public setSchemaAware(Z)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/PackageData;->setSchemaAware(Z)V

    return-void
.end method

.method public setTypeAlias(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/ItemType;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->o:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUnprefixedElementMatchingPolicy(Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->p:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    return-void
.end method

.method public setWarningHandler(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/s9api/Location;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->q:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public setXPathLanguageLevel(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->n:I

    return-void
.end method
