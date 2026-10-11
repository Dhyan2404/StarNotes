.class public Lnet/sf/saxon/trans/CompilerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/Configuration;

.field public b:Lnet/sf/saxon/lib/ResourceResolver;

.field public c:Lnet/sf/saxon/lib/ErrorReporter;

.field public d:Lnet/sf/saxon/expr/parser/CodeInjector;

.field public e:I

.field public f:Z

.field public g:Lnet/sf/saxon/om/StructuredQName;

.field public h:Lnet/sf/saxon/om/StructuredQName;

.field public i:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

.field public j:Ljava/lang/String;

.field public k:Lnet/sf/saxon/trans/packages/PackageLibrary;

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/query/QueryLibrary;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

.field public q:Ljava/lang/String;

.field public r:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Lnet/sf/saxon/lib/OutputURIResolver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnet/sf/saxon/lib/StandardErrorReporter;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardErrorReporter;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->c:Lnet/sf/saxon/lib/ErrorReporter;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->e:I

    .line 4
    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->i:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->l:Z

    const-string v1, "HE"

    .line 6
    iput-object v1, p0, Lnet/sf/saxon/trans/CompilerInfo;->m:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->n:Z

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->q:Ljava/lang/String;

    .line 9
    sget-object v0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->DEFAULT_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->r:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    const/16 v0, 0x1e

    .line 10
    iput v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->s:I

    const-string v0, "net.sf.saxon.serialize.MessageEmitter"

    .line 11
    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->t:Ljava/lang/String;

    .line 12
    invoke-static {}, Lnet/sf/saxon/lib/StandardOutputResolver;->getInstance()Lnet/sf/saxon/lib/StandardOutputResolver;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->u:Lnet/sf/saxon/lib/OutputURIResolver;

    .line 13
    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->a:Lnet/sf/saxon/Configuration;

    .line 14
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->c:Lnet/sf/saxon/lib/ErrorReporter;

    .line 15
    new-instance v0, Lnet/sf/saxon/trans/packages/PackageLibrary;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/packages/PackageLibrary;-><init>(Lnet/sf/saxon/trans/CompilerInfo;)V

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->k:Lnet/sf/saxon/trans/packages/PackageLibrary;

    .line 16
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/trans/CompilerInfo;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lnet/sf/saxon/lib/StandardErrorReporter;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardErrorReporter;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->c:Lnet/sf/saxon/lib/ErrorReporter;

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->e:I

    .line 20
    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->i:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->l:Z

    const-string v1, "HE"

    .line 22
    iput-object v1, p0, Lnet/sf/saxon/trans/CompilerInfo;->m:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->n:Z

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->q:Ljava/lang/String;

    .line 25
    sget-object v0, Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;->DEFAULT_NAMESPACE:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->r:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    const/16 v0, 0x1e

    .line 26
    iput v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->s:I

    const-string v0, "net.sf.saxon.serialize.MessageEmitter"

    .line 27
    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->t:Ljava/lang/String;

    .line 28
    invoke-static {}, Lnet/sf/saxon/lib/StandardOutputResolver;->getInstance()Lnet/sf/saxon/lib/StandardOutputResolver;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->u:Lnet/sf/saxon/lib/OutputURIResolver;

    .line 29
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/CompilerInfo;->copyFrom(Lnet/sf/saxon/trans/CompilerInfo;)V

    return-void
.end method


# virtual methods
.method public clearParameters()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->i:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->clear()V

    return-void
.end method

.method public copyFrom(Lnet/sf/saxon/trans/CompilerInfo;)V
    .locals 2

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->a:Lnet/sf/saxon/Configuration;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->a:Lnet/sf/saxon/Configuration;

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->b:Lnet/sf/saxon/lib/ResourceResolver;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->b:Lnet/sf/saxon/lib/ResourceResolver;

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->c:Lnet/sf/saxon/lib/ErrorReporter;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->c:Lnet/sf/saxon/lib/ErrorReporter;

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->d:Lnet/sf/saxon/expr/parser/CodeInjector;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->d:Lnet/sf/saxon/expr/parser/CodeInjector;

    iget v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->e:I

    iput v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->e:I

    iget-boolean v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->f:Z

    iput-boolean v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->f:Z

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->g:Lnet/sf/saxon/om/StructuredQName;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->g:Lnet/sf/saxon/om/StructuredQName;

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->h:Lnet/sf/saxon/om/StructuredQName;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->h:Lnet/sf/saxon/om/StructuredQName;

    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    iget-object v1, p1, Lnet/sf/saxon/trans/CompilerInfo;->i:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->i:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->j:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->j:Ljava/lang/String;

    iget-boolean v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->l:Z

    iput-boolean v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->l:Z

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->m:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->m:Ljava/lang/String;

    new-instance v0, Lnet/sf/saxon/trans/packages/PackageLibrary;

    iget-object v1, p1, Lnet/sf/saxon/trans/CompilerInfo;->k:Lnet/sf/saxon/trans/packages/PackageLibrary;

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/packages/PackageLibrary;-><init>(Lnet/sf/saxon/trans/packages/PackageLibrary;)V

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->k:Lnet/sf/saxon/trans/packages/PackageLibrary;

    iget-boolean v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->n:Z

    iput-boolean v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->n:Z

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->o:Ljava/lang/Iterable;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->o:Ljava/lang/Iterable;

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->q:Ljava/lang/String;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->q:Ljava/lang/String;

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->r:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->r:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    iget v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->s:I

    iput v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->s:I

    iget-object v0, p1, Lnet/sf/saxon/trans/CompilerInfo;->u:Lnet/sf/saxon/lib/OutputURIResolver;

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->u:Lnet/sf/saxon/lib/OutputURIResolver;

    iget-object p1, p1, Lnet/sf/saxon/trans/CompilerInfo;->t:Ljava/lang/String;

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->t:Ljava/lang/String;

    return-void
.end method

.method public getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->d:Lnet/sf/saxon/expr/parser/CodeInjector;

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getDefaultCollation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultElementNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->q:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultInitialMode()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->g:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getDefaultInitialTemplate()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->h:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->c:Lnet/sf/saxon/lib/ErrorReporter;

    instance-of v0, p0, Lnet/sf/saxon/lib/ErrorReporterToListener;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/lib/ErrorReporterToListener;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ErrorReporterToListener;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->c:Lnet/sf/saxon/lib/ErrorReporter;

    return-object p0
.end method

.method public getMessageReceiverClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->t:Ljava/lang/String;

    return-object p0
.end method

.method public getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-object p0
.end method

.method public getOutputURIResolver()Lnet/sf/saxon/lib/OutputURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->u:Lnet/sf/saxon/lib/OutputURIResolver;

    return-object p0
.end method

.method public getPackageLibrary()Lnet/sf/saxon/trans/packages/PackageLibrary;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->k:Lnet/sf/saxon/trans/packages/PackageLibrary;

    return-object p0
.end method

.method public getParameters()Lnet/sf/saxon/expr/instruct/GlobalParameterSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->i:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    return-object p0
.end method

.method public getQueryLibraries()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/query/QueryLibrary;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->o:Ljava/lang/Iterable;

    return-object p0
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->b:Lnet/sf/saxon/lib/ResourceResolver;

    return-object p0
.end method

.method public getTargetEdition()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->m:Ljava/lang/String;

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->b:Lnet/sf/saxon/lib/ResourceResolver;

    instance-of v0, p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;->getWrappedURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnprefixedElementMatchingPolicy()Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->r:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    return-object p0
.end method

.method public getXsltVersion()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->s:I

    return p0
.end method

.method public isAssertionsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->l:Z

    return p0
.end method

.method public isCompileWithTracing()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->d:Lnet/sf/saxon/expr/parser/CodeInjector;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGenerateByteCode()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isJustInTimeCompilation()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isRelocatable()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->n:Z

    return p0
.end method

.method public isSchemaAware()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->f:Z

    return p0
.end method

.method public setAssertionsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->l:Z

    return-void
.end method

.method public setCodeInjector(Lnet/sf/saxon/expr/parser/CodeInjector;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->d:Lnet/sf/saxon/expr/parser/CodeInjector;

    return-void
.end method

.method public setDefaultCollation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setDefaultElementNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->q:Ljava/lang/String;

    return-void
.end method

.method public setDefaultInitialMode(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->g:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setDefaultInitialTemplate(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->h:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/sf/saxon/lib/ErrorReporterToListener;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/ErrorReporterToListener;-><init>(Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/CompilerInfo;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->c:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method

.method public setGenerateByteCode(Z)V
    .locals 2

    const/16 v0, 0x40

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    new-instance v1, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->union(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    new-instance v1, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->except(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    :goto_0
    return-void
.end method

.method public setJustInTimeCompilation(Z)V
    .locals 2

    const/16 v0, 0x400

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    new-instance v1, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->union(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    new-instance v1, Lnet/sf/saxon/expr/parser/OptimizerOptions;

    invoke-direct {v1, v0}, Lnet/sf/saxon/expr/parser/OptimizerOptions;-><init>(I)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->except(Lnet/sf/saxon/expr/parser/OptimizerOptions;)Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    :goto_0
    return-void
.end method

.method public setMessageReceiverClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->t:Ljava/lang/String;

    return-void
.end method

.method public setOptimizerOptions(Lnet/sf/saxon/expr/parser/OptimizerOptions;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->p:Lnet/sf/saxon/expr/parser/OptimizerOptions;

    return-void
.end method

.method public setOutputURIResolver(Lnet/sf/saxon/lib/OutputURIResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->u:Lnet/sf/saxon/lib/OutputURIResolver;

    return-void
.end method

.method public setPackageLibrary(Lnet/sf/saxon/trans/packages/PackageLibrary;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->k:Lnet/sf/saxon/trans/packages/PackageLibrary;

    return-void
.end method

.method public setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/CompilerInfo;->i:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->put(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method

.method public setRelocatable(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->n:Z

    return-void
.end method

.method public setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->b:Lnet/sf/saxon/lib/ResourceResolver;

    return-void
.end method

.method public setSchemaAware(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->f:Z

    return-void
.end method

.method public setTargetEdition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 1

    new-instance v0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;-><init>(Ljavax/xml/transform/URIResolver;)V

    iput-object v0, p0, Lnet/sf/saxon/trans/CompilerInfo;->b:Lnet/sf/saxon/lib/ResourceResolver;

    return-void
.end method

.method public setUnprefixedElementMatchingPolicy(Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->r:Lnet/sf/saxon/s9api/UnprefixedElementMatchingPolicy;

    return-void
.end method

.method public setXQueryLibraries(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/query/QueryLibrary;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->o:Ljava/lang/Iterable;

    return-void
.end method

.method public setXsltVersion(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/trans/CompilerInfo;->s:I

    return-void
.end method
