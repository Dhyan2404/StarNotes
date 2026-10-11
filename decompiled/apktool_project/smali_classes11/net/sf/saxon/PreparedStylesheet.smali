.class public Lnet/sf/saxon/PreparedStylesheet;
.super Lnet/sf/saxon/expr/instruct/Executable;
.source "SourceFile"


# instance fields
.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/net/URI;",
            "Lnet/sf/saxon/PreparedStylesheet;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lnet/sf/saxon/trans/rules/RuleManager;

.field public p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Lnet/sf/saxon/expr/instruct/NamedTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Lnet/sf/saxon/expr/Component;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lnet/sf/saxon/om/StructuredQName;

.field public final s:Lnet/sf/saxon/om/StructuredQName;

.field public final t:Ljava/lang/String;

.field public final u:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

.field public final v:Lnet/sf/saxon/lib/OutputURIResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/Compilation;)V
    .locals 5

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/instruct/Executable;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Executable;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->isSchemaAware()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/PackageData;->getLocalLicenseId()I

    move-result v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "schema-aware XSLT"

    invoke-virtual {v2, v3, v4, v1}, Lnet/sf/saxon/Configuration;->checkLicensedFeature(ILjava/lang/String;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/expr/instruct/Executable;->schemaAware:Z

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getDefaultInitialMode()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/PreparedStylesheet;->s:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getDefaultInitialTemplate()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/PreparedStylesheet;->r:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getParameters()Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/PreparedStylesheet;->u:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getMessageReceiverClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/PreparedStylesheet;->t:Ljava/lang/String;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/CompilerInfo;->getOutputURIResolver()Lnet/sf/saxon/lib/OutputURIResolver;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/PreparedStylesheet;->v:Lnet/sf/saxon/lib/OutputURIResolver;

    return-void
.end method


# virtual methods
.method public checkSuppliedParameters(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/GlobalParam;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isRequiredParam()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getCompileTimeParams()Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->get(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->get(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value supplied for required parameter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p0, v0, :cond_2

    const-string p0, "XPDY0002"

    goto :goto_0

    :cond_2
    const-string p0, "XTDE0050"

    :goto_0
    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->getKeys()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalParameter(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/instruct/GlobalParam;

    move-result-object v2

    const-string v3, "Parameter $"

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isStatic()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be supplied dynamically because it is declared as static"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iget-object v2, p0, Lnet/sf/saxon/PreparedStylesheet;->u:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->containsKey(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be supplied dynamically because a value was already supplied at compile time"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/PreparedStylesheet;->u:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->getKeys()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/StructuredQName;

    iget-object v2, p0, Lnet/sf/saxon/PreparedStylesheet;->u:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->get(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->put(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "stylesheet"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    const-string v0, "fn"

    const-string v1, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->namespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xs"

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->namespace(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/Executable;->explainGlobalVariables(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object v0, p0, Lnet/sf/saxon/PreparedStylesheet;->o:Lnet/sf/saxon/trans/rules/RuleManager;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/trans/rules/RuleManager;->explainTemplateRules(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/PreparedStylesheet;->explainNamedTemplates(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    const-string v0, "accumulators"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getAllAccumulators()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/accum/Accumulator;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/accum/Accumulator;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/FunctionLibraryList;->getLibraryList()Ljava/util/List;

    move-result-object p0

    const-string v0, "functions"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/FunctionLibrary;

    instance-of v1, v0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;

    invoke-virtual {v0}, Lnet/sf/saxon/functions/ExecutableFunctionLibrary;->getAllFunctions()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->close()V

    return-void
.end method

.method public explainNamedTemplates(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "namedTemplates"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object p0, p0, Lnet/sf/saxon/PreparedStylesheet;->p:Ljava/util/HashMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/NamedTemplate;

    const-string v1, "template"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/NamedTemplate;->getTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "line"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "module"

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public getCachedStylesheet(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/PreparedStylesheet;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/PreparedStylesheet;->n:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/PreparedStylesheet;

    :cond_0
    return-object v0
.end method

.method public getCompileTimeParams()Lnet/sf/saxon/expr/instruct/GlobalParameterSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/PreparedStylesheet;->u:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    return-object p0
.end method

.method public getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/PreparedStylesheet;->q:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/Component;

    return-object p0
.end method

.method public getDeclaredSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/serialize/SerializationProperties;

    new-instance v2, Ljava/util/Properties;

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    return-object v1
.end method

.method public getDefaultInitialTemplateName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/PreparedStylesheet;->r:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getRuleManager()Lnet/sf/saxon/trans/rules/RuleManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/PreparedStylesheet;->o:Lnet/sf/saxon/trans/rules/RuleManager;

    return-object p0
.end method

.method public bridge synthetic getTopLevelPackage()Lnet/sf/saxon/expr/PackageData;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    return-object p0
.end method

.method public getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;
    .locals 0

    .line 2
    invoke-super {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getTopLevelPackage()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/style/StylesheetPackage;

    return-object p0
.end method

.method public isEligibleInitialMode(Lnet/sf/saxon/expr/Component$M;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/Mode;->isUnnamedMode()Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/Mode;->getModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->getDefaultMode()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->isDeclaredModes()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component$M;->getActor()Lnet/sf/saxon/trans/Mode;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/Mode;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getVisibilityProvenance()Lnet/sf/saxon/trans/VisibilityProvenance;

    move-result-object p0

    sget-object v1, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    if-eq p0, v1, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/trans/Visibility;->PRIVATE:Lnet/sf/saxon/trans/Visibility;

    if-eq p0, p1, :cond_5

    :cond_4
    return v3

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v3
.end method

.method public newController()Lnet/sf/saxon/trans/XsltController;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/trans/XsltController;

    invoke-direct {v1, v0, p0}, Lnet/sf/saxon/trans/XsltController;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/PreparedStylesheet;)V

    iget-object v0, p0, Lnet/sf/saxon/PreparedStylesheet;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/XsltController;->setMessageReceiverClassName(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/PreparedStylesheet;->v:Lnet/sf/saxon/lib/OutputURIResolver;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/XsltController;->setOutputURIResolver(Lnet/sf/saxon/lib/OutputURIResolver;)V

    iget-object p0, p0, Lnet/sf/saxon/PreparedStylesheet;->s:Lnet/sf/saxon/om/StructuredQName;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XsltController;->setInitialMode(Lnet/sf/saxon/om/StructuredQName;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public putCachedStylesheet(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/PreparedStylesheet;)V
    .locals 1

    :try_start_0
    invoke-static {p1, p2}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lnet/sf/saxon/PreparedStylesheet;->n:Ljava/util/HashMap;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lnet/sf/saxon/PreparedStylesheet;->n:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/PreparedStylesheet;->n:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public putNamedTemplate(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/expr/instruct/NamedTemplate;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/PreparedStylesheet;->p:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/PreparedStylesheet;->p:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/PreparedStylesheet;->p:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setComponentIndex(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/trans/SymbolicName;",
            "Lnet/sf/saxon/expr/Component;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/PreparedStylesheet;->q:Ljava/util/Map;

    return-void
.end method

.method public setRuleManager(Lnet/sf/saxon/trans/rules/RuleManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/PreparedStylesheet;->o:Lnet/sf/saxon/trans/rules/RuleManager;

    return-void
.end method
