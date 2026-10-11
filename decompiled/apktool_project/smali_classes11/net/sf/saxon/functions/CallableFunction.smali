.class public Lnet/sf/saxon/functions/CallableFunction;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/expr/Callable;

.field public final f:Lnet/sf/saxon/trans/SymbolicName$F;

.field public g:Lnet/sf/saxon/type/FunctionItemType;

.field public h:Lnet/sf/saxon/query/AnnotationList;


# direct methods
.method public constructor <init>(ILnet/sf/saxon/expr/Callable;Lnet/sf/saxon/type/FunctionItemType;)V
    .locals 4

    .line 5
    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    .line 6
    new-instance v0, Lnet/sf/saxon/trans/SymbolicName$F;

    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    const-string v2, ""

    const-string v3, "anon"

    invoke-direct {v1, v2, v3, v3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    iput-object v0, p0, Lnet/sf/saxon/functions/CallableFunction;->f:Lnet/sf/saxon/trans/SymbolicName$F;

    .line 7
    iput-object p2, p0, Lnet/sf/saxon/functions/CallableFunction;->e:Lnet/sf/saxon/expr/Callable;

    .line 8
    iput-object p3, p0, Lnet/sf/saxon/functions/CallableFunction;->g:Lnet/sf/saxon/type/FunctionItemType;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/Callable;Lnet/sf/saxon/type/FunctionItemType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/sf/saxon/functions/CallableFunction;->f:Lnet/sf/saxon/trans/SymbolicName$F;

    .line 3
    iput-object p2, p0, Lnet/sf/saxon/functions/CallableFunction;->e:Lnet/sf/saxon/expr/Callable;

    .line 4
    iput-object p3, p0, Lnet/sf/saxon/functions/CallableFunction;->g:Lnet/sf/saxon/type/FunctionItemType;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/functions/CallableFunction;->e:Lnet/sf/saxon/expr/Callable;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "A CallableFunction is a transient value that cannot be exported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAnnotations()Lnet/sf/saxon/query/AnnotationList;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/CallableFunction;->h:Lnet/sf/saxon/query/AnnotationList;

    return-object p0
.end method

.method public getArity()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/CallableFunction;->f:Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p0

    return p0
.end method

.method public getCallable()Lnet/sf/saxon/expr/Callable;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/CallableFunction;->e:Lnet/sf/saxon/expr/Callable;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/CallableFunction;->e:Lnet/sf/saxon/expr/Callable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/functions/CallableFunction;->g:Lnet/sf/saxon/type/FunctionItemType;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/functions/CallableFunction;->e:Lnet/sf/saxon/expr/Callable;

    instance-of v1, v0, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;

    invoke-virtual {v0}, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;->getFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/CallableFunction;->g:Lnet/sf/saxon/type/FunctionItemType;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/functions/CallableFunction;->g:Lnet/sf/saxon/type/FunctionItemType;

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/CallableFunction;->f:Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public setAnnotations(Lnet/sf/saxon/query/AnnotationList;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/CallableFunction;->h:Lnet/sf/saxon/query/AnnotationList;

    return-void
.end method

.method public setCallable(Lnet/sf/saxon/expr/Callable;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/CallableFunction;->e:Lnet/sf/saxon/expr/Callable;

    return-void
.end method

.method public setType(Lnet/sf/saxon/type/FunctionItemType;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/CallableFunction;->g:Lnet/sf/saxon/type/FunctionItemType;

    return-void
.end method
