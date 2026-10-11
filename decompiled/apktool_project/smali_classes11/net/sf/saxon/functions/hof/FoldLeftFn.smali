.class public Lnet/sf/saxon/functions/hof/FoldLeftFn;
.super Lnet/sf/saxon/functions/FoldingFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/FoldingFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs getFold(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/Fold;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p2, v0

    new-instance v1, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    const/4 v2, 0x1

    aget-object p2, p2, v2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Function;

    invoke-direct {v1, p0, p1, v0, p2}, Lnet/sf/saxon/functions/hof/FoldLeftFn$FoldLeftFold;-><init>(Lnet/sf/saxon/functions/hof/FoldLeftFn;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/om/Function;)V

    return-object v1
.end method

.method public getResultItemType([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/type/ItemType;
    .locals 1

    const/4 p0, 0x2

    aget-object v0, p1, p0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/type/AnyFunctionType;

    if-eqz v0, :cond_0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/AnyFunctionType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/AnyFunctionType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object p0

    return-object p0
.end method
