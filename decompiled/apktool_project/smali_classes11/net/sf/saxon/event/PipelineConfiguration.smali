.class public Lnet/sf/saxon/event/PipelineConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/Configuration;

.field public b:Lnet/sf/saxon/Controller;

.field public c:Lnet/sf/saxon/lib/ParseOptions;

.field public d:Lnet/sf/saxon/s9api/HostLanguage;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lnet/sf/saxon/expr/XPathContext;

.field public g:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

    iput-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->d:Lnet/sf/saxon/s9api/HostLanguage;

    .line 3
    iput-object p1, p0, Lnet/sf/saxon/event/PipelineConfiguration;->a:Lnet/sf/saxon/Configuration;

    .line 4
    new-instance p1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {p1}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/PipelineConfiguration;->c:Lnet/sf/saxon/lib/ParseOptions;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/PipelineConfiguration;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

    iput-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->d:Lnet/sf/saxon/s9api/HostLanguage;

    .line 7
    iget-object v0, p1, Lnet/sf/saxon/event/PipelineConfiguration;->a:Lnet/sf/saxon/Configuration;

    iput-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->a:Lnet/sf/saxon/Configuration;

    .line 8
    iget-object v0, p1, Lnet/sf/saxon/event/PipelineConfiguration;->b:Lnet/sf/saxon/Controller;

    iput-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->b:Lnet/sf/saxon/Controller;

    .line 9
    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    iget-object v1, p1, Lnet/sf/saxon/event/PipelineConfiguration;->c:Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    iput-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->c:Lnet/sf/saxon/lib/ParseOptions;

    .line 10
    iget-object v0, p1, Lnet/sf/saxon/event/PipelineConfiguration;->d:Lnet/sf/saxon/s9api/HostLanguage;

    iput-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->d:Lnet/sf/saxon/s9api/HostLanguage;

    .line 11
    iget-object v0, p1, Lnet/sf/saxon/event/PipelineConfiguration;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lnet/sf/saxon/event/PipelineConfiguration;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->e:Ljava/util/Map;

    .line 13
    :cond_0
    iget-object p1, p1, Lnet/sf/saxon/event/PipelineConfiguration;->f:Lnet/sf/saxon/expr/XPathContext;

    iput-object p1, p0, Lnet/sf/saxon/event/PipelineConfiguration;->f:Lnet/sf/saxon/expr/XPathContext;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lnet/sf/saxon/event/PipelineConfiguration;->g:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->e:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->a:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getController()Lnet/sf/saxon/Controller;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->b:Lnet/sf/saxon/Controller;

    return-object p0
.end method

.method public getCopyInformee()Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->g:Ljava/util/function/Function;

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/lib/ParseOptions;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->b:Lnet/sf/saxon/Controller;

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    :goto_0
    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->d:Lnet/sf/saxon/s9api/HostLanguage;

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->UNKNOWN:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->b:Lnet/sf/saxon/Controller;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lnet/sf/saxon/event/PipelineConfiguration;->d:Lnet/sf/saxon/s9api/HostLanguage;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->d:Lnet/sf/saxon/s9api/HostLanguage;

    return-object p0
.end method

.method public getParseOptions()Lnet/sf/saxon/lib/ParseOptions;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->c:Lnet/sf/saxon/lib/ParseOptions;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->a:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->c:Lnet/sf/saxon/lib/ParseOptions;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->c:Lnet/sf/saxon/lib/ParseOptions;

    return-object p0
.end method

.method public getXPathContext()Lnet/sf/saxon/expr/XPathContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->f:Lnet/sf/saxon/expr/XPathContext;

    return-object p0
.end method

.method public isRecoverFromValidationErrors()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isContinueAfterValidationErrors()Z

    move-result p0

    return p0
.end method

.method public isXSLT()Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setComponent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->e:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/event/PipelineConfiguration;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PipelineConfiguration;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public setController(Lnet/sf/saxon/Controller;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PipelineConfiguration;->b:Lnet/sf/saxon/Controller;

    return-void
.end method

.method public setCopyInformee(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lnet/sf/saxon/om/NodeInfo;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/event/PipelineConfiguration;->g:Ljava/util/function/Function;

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setExpandAttributeDefaults(Z)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setExpandAttributeDefaults(Z)V

    return-void
.end method

.method public setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PipelineConfiguration;->d:Lnet/sf/saxon/s9api/HostLanguage;

    return-void
.end method

.method public setParseOptions(Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PipelineConfiguration;->c:Lnet/sf/saxon/lib/ParseOptions;

    return-void
.end method

.method public setRecoverFromValidationErrors(Z)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setContinueAfterValidationErrors(Z)V

    return-void
.end method

.method public setUseXsiSchemaLocation(Z)V
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setUseXsiSchemaLocation(Z)V

    return-void
.end method

.method public setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PipelineConfiguration;->f:Lnet/sf/saxon/expr/XPathContext;

    return-void
.end method
