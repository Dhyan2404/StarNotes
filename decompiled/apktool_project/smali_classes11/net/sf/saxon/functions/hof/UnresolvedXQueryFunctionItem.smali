.class public Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/query/XQueryFunction;

.field public final f:Lnet/sf/saxon/trans/SymbolicName$F;

.field public final g:Lnet/sf/saxon/functions/hof/UserFunctionReference;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/query/XQueryFunction;Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/functions/hof/UserFunctionReference;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;->e:Lnet/sf/saxon/query/XQueryFunction;

    iput-object p2, p0, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;->f:Lnet/sf/saxon/trans/SymbolicName$F;

    iput-object p3, p0, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;->g:Lnet/sf/saxon/functions/hof/UserFunctionReference;

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

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;->g:Lnet/sf/saxon/functions/hof/UserFunctionReference;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/hof/UserFunctionReference;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/Callable;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getArity()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;->e:Lnet/sf/saxon/query/XQueryFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getNumberOfArguments()I

    move-result p0

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;->f:Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SymbolicName$F;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 2

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    iget-object v1, p0, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;->e:Lnet/sf/saxon/query/XQueryFunction;

    invoke-virtual {v1}, Lnet/sf/saxon/query/XQueryFunction;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;->e:Lnet/sf/saxon/query/XQueryFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/query/XQueryFunction;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    return-object v0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;->f:Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionReference()Lnet/sf/saxon/functions/hof/UserFunctionReference;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/UnresolvedXQueryFunctionItem;->g:Lnet/sf/saxon/functions/hof/UserFunctionReference;

    return-object p0
.end method
