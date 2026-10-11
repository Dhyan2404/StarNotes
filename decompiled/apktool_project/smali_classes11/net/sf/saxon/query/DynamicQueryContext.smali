.class public Lnet/sf/saxon/query/DynamicQueryContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnet/sf/saxon/om/Item;

.field public b:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

.field public final c:Lnet/sf/saxon/Configuration;

.field public d:Lnet/sf/saxon/lib/ResourceResolver;

.field public e:Lnet/sf/saxon/lib/ErrorReporter;

.field public f:Lnet/sf/saxon/lib/TraceListener;

.field public g:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

.field public h:Lnet/sf/saxon/value/DateTimeValue;

.field public i:Lnet/sf/saxon/lib/Logger;

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->b:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->k:Z

    iput-object p1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->c:Lnet/sf/saxon/Configuration;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->e:Lnet/sf/saxon/lib/ErrorReporter;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->i:Lnet/sf/saxon/lib/Logger;

    return-void
.end method


# virtual methods
.method public clearParameters()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->b:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    return-void
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->c:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getContextItem()Lnet/sf/saxon/om/Item;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->a:Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public getCurrentDateTime()Lnet/sf/saxon/value/DateTimeValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->h:Lnet/sf/saxon/value/DateTimeValue;

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

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

    iget-object p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->e:Lnet/sf/saxon/lib/ErrorReporter;

    return-object p0
.end method

.method public getParameter(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->b:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->get(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public getParameters()Lnet/sf/saxon/expr/instruct/GlobalParameterSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->b:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    if-nez p0, :cond_0

    new-instance p0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    :cond_0
    return-object p0
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->d:Lnet/sf/saxon/lib/ResourceResolver;

    return-object p0
.end method

.method public getSchemaValidationMode()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->j:I

    return p0
.end method

.method public getTraceFunctionDestination()Lnet/sf/saxon/lib/Logger;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->i:Lnet/sf/saxon/lib/Logger;

    return-object p0
.end method

.method public getTraceListener()Lnet/sf/saxon/lib/TraceListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->f:Lnet/sf/saxon/lib/TraceListener;

    return-object p0
.end method

.method public getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->g:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    return-object p0
.end method

.method public initializeController(Lnet/sf/saxon/Controller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Controller;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Controller;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Controller;->addTraceListener(Lnet/sf/saxon/lib/TraceListener;)V

    iget-object v0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->g:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Controller;->setUnparsedTextURIResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getTraceFunctionDestination()Lnet/sf/saxon/lib/Logger;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Controller;->setTraceFunctionDestination(Lnet/sf/saxon/lib/Logger;)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getSchemaValidationMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Controller;->setSchemaValidationMode(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/DynamicQueryContext;->getCurrentDateTime()Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lnet/sf/saxon/Controller;->setCurrentDateTime(Lnet/sf/saxon/value/DateTimeValue;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->a:Lnet/sf/saxon/om/Item;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;)V

    iget-object v0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->b:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Controller;->initializeController(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V

    iget-boolean p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->k:Z

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Controller;->setApplyFunctionConversionRulesToExternalVariables(Z)V

    return-void
.end method

.method public isApplyFunctionConversionRulesToExternalVariables()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->k:Z

    return p0
.end method

.method public setApplyFunctionConversionRulesToExternalVariables(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->k:Z

    return-void
.end method

.method public setContextItem(Lnet/sf/saxon/om/Item;)V
    .locals 2

    if-eqz p1, :cond_2

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->c:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->isCompatible(Lnet/sf/saxon/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied node must be built using the same or a compatible Configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->a:Lnet/sf/saxon/om/Item;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Context item cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCurrentDateTime(Lnet/sf/saxon/value/DateTimeValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iput-object p1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->h:Lnet/sf/saxon/value/DateTimeValue;

    sget-object p0, Lnet/sf/saxon/functions/AccessorFn$Component;->TIMEZONE:Lnet/sf/saxon/functions/AccessorFn$Component;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/DateTimeValue;->getComponent(Lnet/sf/saxon/functions/AccessorFn$Component;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Supplied date/time must include a timezone"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lnet/sf/saxon/lib/ErrorReporterToListener;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/ErrorReporterToListener;-><init>(Ljavax/xml/transform/ErrorListener;)V

    iput-object v0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->e:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->e:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method

.method public setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->b:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->b:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/DynamicQueryContext;->b:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->put(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method

.method public setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->d:Lnet/sf/saxon/lib/ResourceResolver;

    return-void
.end method

.method public setSchemaValidationMode(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->j:I

    return-void
.end method

.method public setTraceFunctionDestination(Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->i:Lnet/sf/saxon/lib/Logger;

    return-void
.end method

.method public setTraceListener(Lnet/sf/saxon/lib/TraceListener;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->f:Lnet/sf/saxon/lib/TraceListener;

    return-void
.end method

.method public setUnparsedTextURIResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/DynamicQueryContext;->g:Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    return-void
.end method
