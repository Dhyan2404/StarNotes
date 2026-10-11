.class public Lnet/sf/saxon/expr/parser/RetainedStaticContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceResolver;


# instance fields
.field public final e:Lnet/sf/saxon/Configuration;

.field public f:Lnet/sf/saxon/expr/PackageData;

.field public g:Ljava/net/URI;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lnet/sf/saxon/om/NamespaceResolver;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Lnet/sf/saxon/trans/DecimalFormatManager;

.field public n:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://www.w3.org/2005/xpath-functions"

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->k:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->e:Lnet/sf/saxon/Configuration;

    .line 4
    new-instance v0, Lnet/sf/saxon/expr/PackageData;

    invoke-direct {v0, p1}, Lnet/sf/saxon/expr/PackageData;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->f:Lnet/sf/saxon/expr/PackageData;

    .line 5
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    const-string p1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    .line 6
    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/StaticContext;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://www.w3.org/2005/xpath-functions"

    .line 8
    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->k:Ljava/lang/String;

    .line 9
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->e:Lnet/sf/saxon/Configuration;

    .line 10
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->f:Lnet/sf/saxon/expr/PackageData;

    .line 11
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getStaticBaseURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    :try_start_0
    invoke-static {p1, v0, v1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->getBaseURI(Lnet/sf/saxon/expr/StaticContext;Ljavax/xml/transform/SourceLocator;Z)Ljava/net/URI;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->g:Ljava/net/URI;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->g:Ljava/net/URI;

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getDefaultCollationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->i:Ljava/lang/String;

    .line 16
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->m:Lnet/sf/saxon/trans/DecimalFormatManager;

    .line 17
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->l:Ljava/lang/String;

    .line 18
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getDefaultFunctionNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->k:Ljava/lang/String;

    .line 19
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->isInBackwardsCompatibleMode()Z

    move-result v0

    iput-boolean v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->n:Z

    .line 20
    sget-object v0, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v0, p0, p1}, Lnet/sf/saxon/Platform;->JAXPStaticContextCheck(Lnet/sf/saxon/expr/parser/RetainedStaticContext;Lnet/sf/saxon/expr/StaticContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 21
    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p1

    .line 22
    instance-of v0, p1, Lnet/sf/saxon/om/NamespaceMap;

    if-eqz v0, :cond_2

    .line 23
    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    goto :goto_2

    .line 24
    :cond_2
    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    .line 25
    invoke-interface {p1}, Lnet/sf/saxon/om/NamespaceResolver;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "xml"

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 28
    invoke-interface {p1, v3, v1}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v0

    goto :goto_1

    .line 29
    :cond_4
    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    :goto_2
    return-void
.end method


# virtual methods
.method public declareNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    instance-of v1, v0, Lnet/sf/saxon/om/NamespaceMap;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/om/NamespaceMap;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public declaresSameNamespaces(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    iget-object p1, p1, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->h:Ljava/lang/String;

    iget-object v2, p1, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->equalOrNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->i:Ljava/lang/String;

    iget-object v2, p1, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->k:Ljava/lang/String;

    iget-object v2, p1, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    iget-object p1, p1, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->e:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->m:Lnet/sf/saxon/trans/DecimalFormatManager;

    return-object p0
.end method

.method public getDefaultCollationName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultElementNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->l:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getDefaultFunctionNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->k:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/expr/PackageData;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->f:Lnet/sf/saxon/expr/PackageData;

    return-object p0
.end method

.method public getStaticBaseUri()Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->g:Ljava/net/URI;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied static base URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->h:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid URI"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public getStaticBaseUriString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->h:Ljava/lang/String;

    return-object p0
.end method

.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->h:Ljava/lang/String;

    const v1, 0x2457cbce

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    iget-object v1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isBackwardsCompatibility()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->n:Z

    return p0
.end method

.method public iteratePrefixes()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-interface {p0}, Lnet/sf/saxon/om/NamespaceResolver;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setBackwardsCompatibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->n:Z

    return-void
.end method

.method public setDecimalFormatManager(Lnet/sf/saxon/trans/DecimalFormatManager;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->m:Lnet/sf/saxon/trans/DecimalFormatManager;

    return-void
.end method

.method public setDefaultCollationName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->i:Ljava/lang/String;

    return-void
.end method

.method public setDefaultElementNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->l:Ljava/lang/String;

    return-void
.end method

.method public setDefaultFunctionNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->k:Ljava/lang/String;

    return-void
.end method

.method public setNamespaces(Lnet/sf/saxon/om/NamespaceResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->j:Lnet/sf/saxon/om/NamespaceResolver;

    return-void
.end method

.method public setPackageData(Lnet/sf/saxon/expr/PackageData;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->f:Lnet/sf/saxon/expr/PackageData;

    return-void
.end method

.method public setStaticBaseUriString(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->h:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->g:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->g:Ljava/net/URI;

    :cond_0
    :goto_0
    return-void
.end method
