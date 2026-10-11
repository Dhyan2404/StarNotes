.class public Lnet/sf/saxon/sxpath/IndependentContext;
.super Lnet/sf/saxon/sxpath/AbstractStaticContext;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/sxpath/XPathStaticContext;
.implements Lnet/sf/saxon/om/NamespaceResolver;


# instance fields
.field protected autoDeclare:Z

.field protected executable:Lnet/sf/saxon/expr/instruct/Executable;

.field protected externalResolver:Lnet/sf/saxon/om/NamespaceResolver;

.field protected importedSchemaNamespaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected namespaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

.field protected parentlessContextItem:Z

.field protected requiredContextItemType:Lnet/sf/saxon/type/ItemType;

.field protected retainedStaticContext:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

.field protected variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/sxpath/XPathVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    invoke-direct {p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->namespaces:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->externalResolver:Lnet/sf/saxon/om/NamespaceResolver;

    .line 6
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->requiredContextItemType:Lnet/sf/saxon/type/ItemType;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->importedSchemaNamespaces:Ljava/util/Set;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->autoDeclare:Z

    .line 9
    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/IndependentContext;->clearNamespaces()V

    const/16 v1, 0x1f

    .line 11
    invoke-virtual {p0, v1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultFunctionLibrary(I)V

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lnet/sf/saxon/sxpath/AbstractStaticContext;->usingDefaultFunctionLibrary:Z

    .line 13
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultCollationName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/sxpath/IndependentContext;->setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V

    .line 15
    new-instance v2, Lnet/sf/saxon/expr/PackageData;

    invoke-direct {v2, p1}, Lnet/sf/saxon/expr/PackageData;-><init>(Lnet/sf/saxon/Configuration;)V

    .line 16
    sget-object p1, Lnet/sf/saxon/s9api/HostLanguage;->XPATH:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {v2, p1, v1}, Lnet/sf/saxon/expr/PackageData;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;I)V

    .line 17
    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/PackageData;->setSchemaAware(Z)V

    .line 18
    invoke-virtual {p0, v2}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/sxpath/IndependentContext;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    .line 20
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    .line 21
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBaseURI(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getContainingLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setContainingLocation(Lnet/sf/saxon/s9api/Location;)V

    .line 23
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->setDefaultElementNamespace(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getDefaultFunctionNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultFunctionNamespace(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->isInBackwardsCompatibleMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setBackwardsCompatibilityMode(Z)V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lnet/sf/saxon/sxpath/IndependentContext;->namespaces:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->namespaces:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    .line 28
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lnet/sf/saxon/functions/FunctionLibraryList;->copy()Lnet/sf/saxon/functions/FunctionLibrary;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    .line 30
    :cond_0
    iget-object v0, p1, Lnet/sf/saxon/sxpath/IndependentContext;->importedSchemaNamespaces:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->setImportedSchemaNamespaces(Ljava/util/Set;)V

    .line 31
    iget-object v0, p1, Lnet/sf/saxon/sxpath/IndependentContext;->externalResolver:Lnet/sf/saxon/om/NamespaceResolver;

    iput-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->externalResolver:Lnet/sf/saxon/om/NamespaceResolver;

    .line 32
    iget-boolean v0, p1, Lnet/sf/saxon/sxpath/IndependentContext;->autoDeclare:Z

    iput-boolean v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->autoDeclare:Z

    .line 33
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getXPathVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setXPathLanguageLevel(I)V

    .line 34
    iget-object v0, p1, Lnet/sf/saxon/sxpath/IndependentContext;->requiredContextItemType:Lnet/sf/saxon/type/ItemType;

    iput-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->requiredContextItemType:Lnet/sf/saxon/type/ItemType;

    .line 35
    invoke-virtual {p1}, Lnet/sf/saxon/sxpath/IndependentContext;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->setExecutable(Lnet/sf/saxon/expr/instruct/Executable;)V

    return-void
.end method


# virtual methods
.method public bindVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/sxpath/XPathVariable;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->autoDeclare:Z

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    return-object v0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undeclared variable in XPath expression: $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XPST0008"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/expr/LocalVariableReference;

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/LocalVariableReference;-><init>(Lnet/sf/saxon/expr/LocalBinding;)V

    return-object p0
.end method

.method public clearAllNamespaces()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "xml"

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearNamespaces()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "xml"

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xsl"

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "saxon"

    const-string v1, "http://saxon.sf.net/"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xs"

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/sxpath/IndependentContext;->setDefaultElementNamespace(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->namespaces:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null namespace URI supplied to declareNamespace()"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null prefix supplied to declareNamespace()"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declareVariable(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/sxpath/XPathVariable;
    .locals 2

    .line 2
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, ""

    invoke-direct {v0, v1, p1, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object p0

    return-object p0
.end method

.method public declareVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;
    .locals 2

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/sxpath/XPathVariable;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/sxpath/XPathVariable;->make(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lnet/sf/saxon/sxpath/XPathVariable;->setSlotNumber(I)V

    .line 8
    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public declareVariable(Lnet/sf/saxon/value/QNameValue;)Lnet/sf/saxon/sxpath/XPathVariable;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/IndependentContext;->declareVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDeclaredVariables()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnet/sf/saxon/sxpath/XPathVariable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getExecutable()Lnet/sf/saxon/expr/instruct/Executable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    return-object p0
.end method

.method public getExternalVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/sxpath/XPathVariable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/sxpath/XPathVariable;

    return-object p0
.end method

.method public getExternalVariables()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/sxpath/XPathVariable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getImportedSchemaNamespaces()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->importedSchemaNamespaces:Ljava/util/Set;

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->externalResolver:Lnet/sf/saxon/om/NamespaceResolver;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->requiredContextItemType:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public getSlotNumber(Lnet/sf/saxon/value/QNameValue;)I
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/sxpath/XPathVariable;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/XPathVariable;->getLocalSlotNumber()I

    move-result p0

    return p0
.end method

.method public getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v2, v1, [Lnet/sf/saxon/sxpath/XPathVariable;

    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->variables:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/sxpath/XPathVariable;

    invoke-virtual {v3}, Lnet/sf/saxon/sxpath/XPathVariable;->getLocalSlotNumber()I

    move-result v4

    aput-object v3, v2, v4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, v1, :cond_1

    aget-object v3, v2, p0

    invoke-virtual {v3}, Lnet/sf/saxon/sxpath/XPathVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->externalResolver:Lnet/sf/saxon/om/NamespaceResolver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->namespaces:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isAllowUndeclaredVariables()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->autoDeclare:Z

    return p0
.end method

.method public isContextItemParentless()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->parentlessContextItem:Z

    return p0
.end method

.method public isImportedSchema(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->importedSchemaNamespaces:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iteratePrefixes()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->externalResolver:Lnet/sf/saxon/om/NamespaceResolver;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/NamespaceResolver;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->namespaces:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->retainedStaticContext:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    iput-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->retainedStaticContext:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->retainedStaticContext:Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    return-object p0
.end method

.method public setAllowUndeclaredVariables(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/sxpath/IndependentContext;->autoDeclare:Z

    return-void
.end method

.method public setContextItemParentless(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/sxpath/IndependentContext;->parentlessContextItem:Z

    return-void
.end method

.method public setDefaultElementNamespace(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultElementNamespace(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->namespaces:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExecutable(Lnet/sf/saxon/expr/instruct/Executable;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/IndependentContext;->executable:Lnet/sf/saxon/expr/instruct/Executable;

    return-void
.end method

.method public setImportedSchemaNamespaces(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/sxpath/IndependentContext;->importedSchemaNamespaces:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setSchemaAware(Z)V

    :cond_0
    return-void
.end method

.method public setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/IndependentContext;->externalResolver:Lnet/sf/saxon/om/NamespaceResolver;

    return-void
.end method

.method public setNamespaces(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/sxpath/IndependentContext;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-interface {p1, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->setDefaultElementNamespace(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/IndependentContext;->optimizerOptions:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-void
.end method

.method public setRequiredContextItemType(Lnet/sf/saxon/type/ItemType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/sxpath/IndependentContext;->requiredContextItemType:Lnet/sf/saxon/type/ItemType;

    return-void
.end method
