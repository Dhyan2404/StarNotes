.class public abstract Lnet/sf/saxon/functions/PositionAndLast;
.super Lnet/sf/saxon/functions/ContextAccessorFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/PositionAndLast$Last;,
        Lnet/sf/saxon/functions/PositionAndLast$Position;
    }
.end annotation


# instance fields
.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/functions/ContextAccessorFunction;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/functions/PositionAndLast;->h:Z

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/functions/PositionAndLast;->b(Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/trans/XPathException;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    throw p0
.end method


# virtual methods
.method public bindContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Function;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/PositionAndLast;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/Int64Value;

    move-result-object p1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lnet/sf/saxon/functions/ConstantFunction;

    invoke-direct {v0, p1}, Lnet/sf/saxon/functions/ConstantFunction;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/functions/SystemFunction;->setDetails(Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/functions/SystemFunction;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    new-instance v1, Lnet/sf/saxon/expr/CallableDelegate;

    new-instance v2, Lcom/sunia/HTREnginev2/k5l;

    invoke-direct {v2, p1}, Lcom/sunia/HTREnginev2/k5l;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/CallableDelegate;-><init>(Lnet/sf/saxon/expr/CallableDelegate$Lambda;)V

    new-instance p1, Lnet/sf/saxon/functions/CallableFunction;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/functions/CallableFunction;-><init>(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/Callable;Lnet/sf/saxon/type/FunctionItemType;)V

    return-object p1
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/PositionAndLast;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/IntegerValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/PositionAndLast;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    return-object p0
.end method

.method public abstract evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/Int64Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [Lnet/sf/saxon/value/IntegerValue;

    const/4 v0, 0x0

    sget-object v1, Lnet/sf/saxon/value/Int64Value;->PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Lnet/sf/saxon/expr/Expression;->MAX_SEQUENCE_LENGTH:Lnet/sf/saxon/value/IntegerValue;

    aput-object v1, p0, v0

    return-object p0
.end method

.method public getNetCost()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isContextPossiblyUndefined()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/functions/PositionAndLast;->h:Z

    return p0
.end method

.method public supplyTypeInformation(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lnet/sf/saxon/functions/SystemFunction;->supplyTypeInformation(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;[Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p3

    if-eq p1, p3, :cond_0

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;->isPossiblyAbsent()Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/functions/PositionAndLast;->h:Z

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The context item is absent at this point"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "XPDY0002"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method
