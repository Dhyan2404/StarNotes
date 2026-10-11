.class public Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayToSequence;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayToSequence"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static toSequence(Lnet/sf/saxon/ma/arrays/ArrayItem;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoSequence;

    invoke-direct {v0}, Lnet/sf/saxon/ma/zeno/ZenoSequence;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/ma/zeno/ZenoSequence;->appendSequence(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/zeno/ZenoSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-static {p0}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayToSequence;->toSequence(Lnet/sf/saxon/ma/arrays/ArrayItem;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method
