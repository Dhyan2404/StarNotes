.class public interface abstract Lnet/sf/saxon/expr/StaticContext;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bindVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public abstract getConfiguration()Lnet/sf/saxon/Configuration;
.end method

.method public abstract getContainingLocation()Lnet/sf/saxon/s9api/Location;
.end method

.method public abstract getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;
.end method

.method public abstract getDefaultCollationName()Ljava/lang/String;
.end method

.method public abstract getDefaultElementNamespace()Ljava/lang/String;
.end method

.method public abstract getDefaultFunctionNamespace()Ljava/lang/String;
.end method

.method public abstract getFunctionLibrary()Lnet/sf/saxon/functions/FunctionLibrary;
.end method

.method public abstract getImportedSchemaNamespaces()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyManager()Lnet/sf/saxon/trans/KeyManager;
.end method

.method public abstract getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
.end method

.method public getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPackageData()Lnet/sf/saxon/expr/PackageData;
.end method

.method public abstract getRequiredContextItemType()Lnet/sf/saxon/type/ItemType;
.end method

.method public abstract getStaticBaseURI()Ljava/lang/String;
.end method

.method public abstract getSystemId()Ljava/lang/String;
.end method

.method public getUnprefixedElementMatchingPolicy()Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;
    .locals 0

    sget-object p0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->DEFAULT_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    return-object p0
.end method

.method public abstract getXPathVersion()I
.end method

.method public abstract isImportedSchema(Ljava/lang/String;)Z
.end method

.method public abstract isInBackwardsCompatibleMode()Z
.end method

.method public abstract issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V
.end method

.method public abstract makeEarlyEvaluationContext()Lnet/sf/saxon/expr/XPathContext;
.end method

.method public abstract makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;
.end method

.method public abstract resolveTypeAlias(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/ItemType;
.end method
