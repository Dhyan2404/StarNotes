.class public Lnet/sf/saxon/style/UseWhenStaticContext;
.super Lnet/sf/saxon/sxpath/AbstractStaticContext;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/StaticContext;


# instance fields
.field public final r:Lnet/sf/saxon/om/NamespaceResolver;

.field public final s:Lnet/sf/saxon/functions/FunctionLibrary;

.field public final t:Lnet/sf/saxon/style/Compilation;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/om/NamespaceResolver;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    iput-object p1, p0, Lnet/sf/saxon/style/UseWhenStaticContext;->t:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    iput-object p2, p0, Lnet/sf/saxon/style/UseWhenStaticContext;->r:Lnet/sf/saxon/om/NamespaceResolver;

    const/16 p1, 0x1f

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setXPathLanguageLevel(I)V

    new-instance p1, Lnet/sf/saxon/functions/FunctionLibraryList;

    invoke-direct {p1}, Lnet/sf/saxon/functions/FunctionLibraryList;-><init>()V

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getUseWhenFunctionSet()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getBuiltInExtensionLibraryList()Lnet/sf/saxon/functions/FunctionLibraryList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    new-instance p2, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-direct {p2, v1}, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getIntegratedFunctionLibrary()Lnet/sf/saxon/functions/IntegratedFunctionLibrary;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/functions/FunctionLibraryList;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)I

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Configuration;->addExtensionBinders(Lnet/sf/saxon/functions/FunctionLibraryList;)V

    iput-object p1, p0, Lnet/sf/saxon/style/UseWhenStaticContext;->s:Lnet/sf/saxon/functions/FunctionLibrary;

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

    iget-object p0, p0, Lnet/sf/saxon/style/UseWhenStaticContext;->t:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/style/Compilation;->getStaticVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variables (other than XSLT 3.0 static variables) cannot be used in a static expression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPST0008"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw p0
.end method

.method public getColumnNumber()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCompilation()Lnet/sf/saxon/style/Compilation;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/UseWhenStaticContext;->t:Lnet/sf/saxon/style/Compilation;

    return-object p0
.end method

.method public getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultCollationName()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    return-object p0
.end method

.method public getDefaultFunctionNamespace()Ljava/lang/String;
    .locals 0

    const-string p0, "http://www.w3.org/2005/xpath-functions"

    return-object p0
.end method

.method public getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/UseWhenStaticContext;->s:Lnet/sf/saxon/functions/FunctionLibrary;

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

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/UseWhenStaticContext;->r:Lnet/sf/saxon/om/NamespaceResolver;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isImportedSchema(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInBackwardsCompatibleMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/style/UseWhenStaticContext;->t:Lnet/sf/saxon/style/Compilation;

    invoke-virtual {p0}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingIncident;

    const-string v1, "SXWN9000"

    invoke-direct {v0, p1, v1, p2}, Lnet/sf/saxon/trans/XmlProcessingIncident;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XmlProcessingIncident;->asWarning()Lnet/sf/saxon/trans/XmlProcessingIncident;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    return-void
.end method

.method public makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;-><init>(Lnet/sf/saxon/expr/StaticContext;)V

    return-object v0
.end method

.method public resolveTypeAlias(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
