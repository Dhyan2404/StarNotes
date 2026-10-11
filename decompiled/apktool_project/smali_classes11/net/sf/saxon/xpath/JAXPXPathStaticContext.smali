.class public Lnet/sf/saxon/xpath/JAXPXPathStaticContext;
.super Lnet/sf/saxon/sxpath/AbstractStaticContext;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/NamespaceResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/xpath/JAXPXPathStaticContext$b;
    }
.end annotation


# instance fields
.field public final r:Lnet/sf/saxon/expr/instruct/SlotManager;

.field public final s:Lnet/sf/saxon/xpath/XPathFunctionLibrary;

.field public t:Ljavax/xml/namespace/NamespaceContext;

.field public u:Ljavax/xml/xpath/XPathVariableResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;-><init>()V

    new-instance v0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/xpath/JAXPXPathStaticContext$b;-><init>(Lnet/sf/saxon/xpath/JAXPXPathStaticContext$a;)V

    iput-object v0, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->t:Ljavax/xml/namespace/NamespaceContext;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->r:Lnet/sf/saxon/expr/instruct/SlotManager;

    const/16 p1, 0x1f

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setDefaultFunctionLibrary(I)V

    new-instance p1, Lnet/sf/saxon/xpath/XPathFunctionLibrary;

    invoke-direct {p1}, Lnet/sf/saxon/xpath/XPathFunctionLibrary;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->s:Lnet/sf/saxon/xpath/XPathFunctionLibrary;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->addFunctionLibrary(Lnet/sf/saxon/functions/FunctionLibrary;)V

    new-instance p1, Lnet/sf/saxon/expr/PackageData;

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/PackageData;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    return-void
.end method


# virtual methods
.method public final bindVariable(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->u:Ljavax/xml/xpath/XPathVariableResolver;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/xpath/JAXPVariableReference;

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->u:Ljavax/xml/xpath/XPathVariableResolver;

    invoke-direct {v0, p1, p0}, Lnet/sf/saxon/xpath/JAXPVariableReference;-><init>(Lnet/sf/saxon/om/StructuredQName;Ljavax/xml/xpath/XPathVariableResolver;)V

    return-object v0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Variable is used in XPath expression, but no JAXP VariableResolver is available"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
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

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getImportedNamespaces()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->t:Ljavax/xml/namespace/NamespaceContext;

    return-object p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    return-object p0
.end method

.method public getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->r:Lnet/sf/saxon/expr/instruct/SlotManager;

    return-object p0
.end method

.method public getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getDefaultElementNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->t:Ljavax/xml/namespace/NamespaceContext;

    invoke-interface {p0, p1}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXPathFunctionResolver()Ljavax/xml/xpath/XPathFunctionResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->s:Lnet/sf/saxon/xpath/XPathFunctionLibrary;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/xpath/XPathFunctionLibrary;->getXPathFunctionResolver()Ljavax/xml/xpath/XPathFunctionResolver;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getXPathVariableResolver()Ljavax/xml/xpath/XPathVariableResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->u:Ljavax/xml/xpath/XPathVariableResolver;

    return-object p0
.end method

.method public importSchema(Ljavax/xml/transform/Source;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/SchemaException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/Configuration;->addSchemaSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ErrorReporter;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->setSchemaAware(Z)V

    return-void
.end method

.method public isImportedSchema(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/sxpath/AbstractStaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->isSchemaAvailable(Ljava/lang/String;)Z

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

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->t:Ljavax/xml/namespace/NamespaceContext;

    instance-of v0, p0, Lnet/sf/saxon/om/NamespaceResolver;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/om/NamespaceResolver;

    invoke-interface {p0}, Lnet/sf/saxon/om/NamespaceResolver;->iteratePrefixes()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->t:Ljavax/xml/namespace/NamespaceContext;

    return-void
.end method

.method public setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->s:Lnet/sf/saxon/xpath/XPathFunctionLibrary;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/xpath/XPathFunctionLibrary;->setXPathFunctionResolver(Ljavax/xml/xpath/XPathFunctionResolver;)V

    :cond_0
    return-void
.end method

.method public setXPathVariableResolver(Ljavax/xml/xpath/XPathVariableResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/xpath/JAXPXPathStaticContext;->u:Ljavax/xml/xpath/XPathVariableResolver;

    return-void
.end method
