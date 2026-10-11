.class public Lnet/sf/saxon/query/XQueryFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/query/Declaration;
.implements Lnet/sf/saxon/s9api/Location;


# instance fields
.field public e:Lnet/sf/saxon/om/StructuredQName;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/UserFunctionParameter;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lnet/sf/saxon/value/SequenceType;

.field public h:Lnet/sf/saxon/expr/Expression;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/UserFunctionResolvable;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lnet/sf/saxon/s9api/Location;

.field public k:Lnet/sf/saxon/expr/instruct/UserFunction;

.field public l:Z

.field public m:Lnet/sf/saxon/om/NamespaceResolver;

.field public n:Lnet/sf/saxon/query/QueryModule;

.field public o:Z

.field public p:Lnet/sf/saxon/query/AnnotationList;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lnet/sf/saxon/query/XQueryFunction;->i:Ljava/util/List;

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/query/XQueryFunction;->o:Z

    sget-object v0, Lnet/sf/saxon/query/AnnotationList;->EMPTY:Lnet/sf/saxon/query/AnnotationList;

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->p:Lnet/sf/saxon/query/AnnotationList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->f:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/query/XQueryFunction;)Lnet/sf/saxon/query/QueryModule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    return-object p0
.end method

.method public static getIdentificationKey(Lnet/sf/saxon/om/StructuredQName;I)Lnet/sf/saxon/trans/SymbolicName;
    .locals 1

    .line 2
    new-instance v0, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    return-object v0
.end method


# virtual methods
.method public addArgument(Lnet/sf/saxon/expr/instruct/UserFunctionParameter;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkReferences(Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/UserFunctionResolvable;

    instance-of v2, v1, Lnet/sf/saxon/expr/UserFunctionCall;

    if-eqz v2, :cond_0

    check-cast v1, Lnet/sf/saxon/expr/UserFunctionCall;

    iget-object v2, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v1, v2, p1}, Lnet/sf/saxon/expr/FunctionCall;->checkFunctionCall(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunction;->i:Ljava/util/List;

    return-void
.end method

.method public compile()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makeSlotManager()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getParameterDefinitions()[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5, v4}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->setSlotNumber(I)V

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnet/sf/saxon/expr/instruct/SlotManager;->allocateSlotNumber(Lnet/sf/saxon/om/StructuredQName;)I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    iget-object v5, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v5, v4}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object v5, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    invoke-static {v5}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v5

    iget-object v6, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v6}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    sget-object v7, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->ABSENT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {v6, v5, v7}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    iput-object v6, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    new-instance v6, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    iget-object v7, p0, Lnet/sf/saxon/query/XQueryFunction;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v7}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-direct {v6, v8, v7, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v3}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v3

    iget-object v7, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    iget-object v8, p0, Lnet/sf/saxon/query/XQueryFunction;->g:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v3, v7, v8, v6, v5}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v3}, Lnet/sf/saxon/trans/XPathException;->isReportableStatically()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lnet/sf/saxon/expr/ErrorExpression;

    new-instance v6, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v6, v3}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v5, v6}, Lnet/sf/saxon/expr/ErrorExpression;-><init>(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    iget-object v3, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-static {v3, v5}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iput-object v5, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    :goto_1
    iget-boolean v3, p0, Lnet/sf/saxon/query/XQueryFunction;->l:Z

    sget-object v5, Lnet/sf/saxon/trans/FunctionStreamability;->UNCLASSIFIED:Lnet/sf/saxon/trans/FunctionStreamability;

    invoke-virtual {v0, v3, v5}, Lnet/sf/saxon/Configuration;->newUserFunction(ZLnet/sf/saxon/trans/FunctionStreamability;)Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0, v4}, Lnet/sf/saxon/expr/instruct/Actor;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-object v3, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v3}, Lnet/sf/saxon/query/QueryModule;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/instruct/Actor;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-object v3, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-object v3, p0, Lnet/sf/saxon/query/XQueryFunction;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0, v3}, Lnet/sf/saxon/expr/instruct/UserFunction;->setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setParameterDefinitions([Lnet/sf/saxon/expr/instruct/UserFunctionParameter;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->setResultType(Lnet/sf/saxon/value/SequenceType;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-object v2, p0, Lnet/sf/saxon/query/XQueryFunction;->j:Lnet/sf/saxon/s9api/Location;

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/Actor;->setLineNumber(I)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-object v2, p0, Lnet/sf/saxon/query/XQueryFunction;->j:Lnet/sf/saxon/s9api/Location;

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/Actor;->setColumnNumber(I)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-object v2, p0, Lnet/sf/saxon/query/XQueryFunction;->j:Lnet/sf/saxon/s9api/Location;

    invoke-interface {v2}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/expr/instruct/Actor;->setSystemId(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setStackFrameMap(Lnet/sf/saxon/expr/instruct/SlotManager;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-boolean v1, p0, Lnet/sf/saxon/query/XQueryFunction;->o:Z

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->setUpdating(Z)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunction;->p:Lnet/sf/saxon/query/AnnotationList;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/UserFunction;->setAnnotations(Lnet/sf/saxon/query/AnnotationList;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->getUserQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/query/StaticQueryContext;->isCompileWithTracing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->m:Lnet/sf/saxon/om/NamespaceResolver;

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->getCodeInjector()Lnet/sf/saxon/expr/parser/CodeInjector;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-interface {v0, v1}, Lnet/sf/saxon/expr/parser/CodeInjector;->process(Lnet/sf/saxon/trace/TraceableComponent;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Actor;->getBody()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    goto :goto_2

    :cond_1
    throw v3

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->fixupReferences()V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw v0
.end method

.method public explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "declareFunction"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getNumberOfArguments()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arity"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    const-string v1, "true"

    if-nez v0, :cond_0

    const-string p0, "unreferenced"

    invoke-virtual {p1, p0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->isMemoFunction()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "memo"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->isTailRecursive()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "false"

    :goto_0
    const-string v0, "tailRecursive"

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    return-void
.end method

.method public fixupReferences()V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/UserFunctionResolvable;

    iget-object v2, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-interface {v1, v2}, Lnet/sf/saxon/expr/UserFunctionResolvable;->setFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAnnotations()Lnet/sf/saxon/query/AnnotationList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->p:Lnet/sf/saxon/query/AnnotationList;

    return-object p0
.end method

.method public getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/value/SequenceType;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/query/XQueryFunction;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/query/XQueryFunction;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getBody()Lnet/sf/saxon/expr/Expression;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->e:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;
    .locals 0

    sget-object p0, Lnet/sf/saxon/s9api/HostLanguage;->XQUERY:Lnet/sf/saxon/s9api/HostLanguage;

    return-object p0
.end method

.method public getIdentificationKey()Lnet/sf/saxon/trans/SymbolicName;
    .locals 2

    .line 1
    new-instance v0, Lnet/sf/saxon/trans/SymbolicName$F;

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunction;->e:Lnet/sf/saxon/om/StructuredQName;

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    return-object v0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->j:Lnet/sf/saxon/s9api/Location;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->m:Lnet/sf/saxon/om/NamespaceResolver;

    return-object p0
.end method

.method public getNumberOfArguments()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->e:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public getPackageData()Lnet/sf/saxon/expr/PackageData;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {p0}, Lnet/sf/saxon/query/QueryModule;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    return-object p0
.end method

.method public getParameterDefinitions()[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->f:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    return-object p0
.end method

.method public getProperties()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/tree/jiter/PairIterator;

    const-string v0, "name"

    const-string v1, "as"

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/tree/jiter/PairIterator;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "as"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->g:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getResultType()Lnet/sf/saxon/value/SequenceType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->g:Lnet/sf/saxon/value/SequenceType;

    return-object p0
.end method

.method public getStaticContext()Lnet/sf/saxon/expr/StaticContext;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->j:Lnet/sf/saxon/s9api/Location;

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserFunction()Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0
.end method

.method public hasAnnotation(Lnet/sf/saxon/om/StructuredQName;)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->p:Lnet/sf/saxon/query/AnnotationList;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/AnnotationList;->includes(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result p0

    return p0
.end method

.method public isMemoFunction()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/XQueryFunction;->l:Z

    return p0
.end method

.method public isPrivate()Z
    .locals 1

    sget-object v0, Lnet/sf/saxon/query/Annotation;->PRIVATE:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/XQueryFunction;->hasAnnotation(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result p0

    return p0
.end method

.method public isUpdating()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/query/XQueryFunction;->o:Z

    return p0
.end method

.method public optimize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->checkForUpdatingSubexpressions()V

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryFunction;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->isNotAllowedInUpdatingContext(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "The body of an updating function must be an updating expression"

    const-string v2, "XUST0002"

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->isUpdatingExpression()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->make(Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/parser/ExpressionVisitor;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    invoke-virtual {v1}, Lnet/sf/saxon/query/QueryModule;->getConfiguration()Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->obtainOptimizer()Lnet/sf/saxon/expr/parser/Optimizer;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/query/XQueryFunction;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x100

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    sget-object v4, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->ABSENT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {v3, v0, v4}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    :cond_2
    iget-object v3, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/sf/saxon/expr/Expression;->setParentExpression(Lnet/sf/saxon/expr/Expression;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    sget-object v5, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->ABSENT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-static {v4, v0, v5}, Lnet/sf/saxon/expr/parser/LoopLifter;->process(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    iput-object v4, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    :cond_3
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/parser/Optimizer;->isOptionSet(I)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lnet/sf/saxon/query/XQueryFunction$a;

    invoke-direct {v4, p0}, Lnet/sf/saxon/query/XQueryFunction$a;-><init>(Lnet/sf/saxon/query/XQueryFunction;)V

    iget-object v5, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v1, v5, v4, v0}, Lnet/sf/saxon/expr/parser/Optimizer;->promoteExpressionsToGlobal(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/trans/GlobalVariableManager;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    sget-object v5, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->ABSENT:Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    invoke-virtual {v4, v0, v5}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    :cond_4
    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/Optimizer;->getOptimizerOptions()Lnet/sf/saxon/expr/parser/OptimizerOptions;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/parser/OptimizerOptions;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lnet/sf/saxon/query/XQueryFunction;->o:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunction;->e:Lnet/sf/saxon/om/StructuredQName;

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/expr/parser/ExpressionTool;->markTailFunctionCalls(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/om/StructuredQName;I)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-object v4, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    const/4 v4, 0x0

    if-lez v0, :cond_5

    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    if-le v0, v3, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    invoke-virtual {v1, v5, v3}, Lnet/sf/saxon/expr/instruct/UserFunction;->setTailRecursive(ZZ)V

    new-instance v0, Lnet/sf/saxon/expr/TailCallLoop;

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-object v3, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-direct {v0, v1, v3}, Lnet/sf/saxon/expr/TailCallLoop;-><init>(Lnet/sf/saxon/expr/instruct/UserFunction;Lnet/sf/saxon/expr/Expression;)V

    iput-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    :cond_7
    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    iget-object v1, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/instruct/Actor;->setBody(Lnet/sf/saxon/expr/Expression;)V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->computeEvaluationMode()V

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Actor;->getStackFrameMap()Lnet/sf/saxon/expr/instruct/SlotManager;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->allocateSlots(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/instruct/SlotManager;)I

    return-void

    :cond_8
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "The body of a non-updating function must be a non-updating expression"

    const-string v2, "XUST0001"

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw v0
.end method

.method public registerReference(Lnet/sf/saxon/expr/UserFunctionResolvable;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunction;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public saveLocation()Lnet/sf/saxon/s9api/Location;
    .locals 0

    return-object p0
.end method

.method public setAnnotations(Lnet/sf/saxon/query/AnnotationList;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunction;->p:Lnet/sf/saxon/query/AnnotationList;

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunction;->k:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->setAnnotations(Lnet/sf/saxon/query/AnnotationList;)V

    :cond_0
    sget-object v0, Lnet/sf/saxon/query/Annotation;->UPDATING:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/query/AnnotationList;->includes(Lnet/sf/saxon/om/StructuredQName;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/XQueryFunction;->setUpdating(Z)V

    :cond_1
    return-void
.end method

.method public setBody(Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunction;->h:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public setFunctionName(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunction;->e:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public setLocation(Lnet/sf/saxon/s9api/Location;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunction;->j:Lnet/sf/saxon/s9api/Location;

    return-void
.end method

.method public setMemoFunction(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/XQueryFunction;->l:Z

    return-void
.end method

.method public setResultType(Lnet/sf/saxon/value/SequenceType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunction;->g:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public setStaticContext(Lnet/sf/saxon/query/QueryModule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunction;->n:Lnet/sf/saxon/query/QueryModule;

    return-void
.end method

.method public setUpdating(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/query/XQueryFunction;->o:Z

    return-void
.end method
