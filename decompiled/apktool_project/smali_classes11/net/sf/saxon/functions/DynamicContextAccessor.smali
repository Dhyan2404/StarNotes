.class public abstract Lnet/sf/saxon/functions/DynamicContextAccessor;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/DynamicContextAccessor$DefaultLanguage;,
        Lnet/sf/saxon/functions/DynamicContextAccessor$CurrentTime;,
        Lnet/sf/saxon/functions/DynamicContextAccessor$CurrentDate;,
        Lnet/sf/saxon/functions/DynamicContextAccessor$CurrentDateTime;,
        Lnet/sf/saxon/functions/DynamicContextAccessor$ImplicitTimezone;
    }
.end annotation


# instance fields
.field public h:Lnet/sf/saxon/value/AtomicValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public bindContext(Lnet/sf/saxon/expr/XPathContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/DynamicContextAccessor;->evaluate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/DynamicContextAccessor;->h:Lnet/sf/saxon/value/AtomicValue;

    return-void
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/DynamicContextAccessor;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lnet/sf/saxon/functions/DynamicContextAccessor;->h:Lnet/sf/saxon/value/AtomicValue;

    if-eqz p2, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/DynamicContextAccessor;->evaluate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public abstract evaluate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/DynamicContextAccessor$a;

    invoke-direct {v0, p0, p0, p1}, Lnet/sf/saxon/functions/DynamicContextAccessor$a;-><init>(Lnet/sf/saxon/functions/DynamicContextAccessor;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method
