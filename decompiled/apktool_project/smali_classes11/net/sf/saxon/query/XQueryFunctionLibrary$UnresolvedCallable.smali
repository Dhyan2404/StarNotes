.class public Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/UserFunctionResolvable;
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/query/XQueryFunctionLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnresolvedCallable"
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/trans/SymbolicName$F;

.field public f:Lnet/sf/saxon/expr/instruct/UserFunction;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/trans/SymbolicName$F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;->e:Lnet/sf/saxon/trans/SymbolicName$F;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;->f:Lnet/sf/saxon/expr/instruct/UserFunction;

    if-eqz v0, :cond_1

    array-length v0, p2

    new-array v0, v0, [Lnet/sf/saxon/om/Sequence;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    aget-object v2, p2, v1

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;->f:Lnet/sf/saxon/expr/instruct/UserFunction;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newCleanContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/instruct/UserFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Forwards reference to XQuery function has not been resolved"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getArity()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;->e:Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p0

    return p0
.end method

.method public getFunction()Lnet/sf/saxon/expr/instruct/UserFunction;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;->f:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;->e:Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public setFunction(Lnet/sf/saxon/expr/instruct/UserFunction;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/query/XQueryFunctionLibrary$UnresolvedCallable;->f:Lnet/sf/saxon/expr/instruct/UserFunction;

    return-void
.end method
