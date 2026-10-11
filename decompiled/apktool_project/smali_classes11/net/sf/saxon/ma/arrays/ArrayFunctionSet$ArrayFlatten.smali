.class public Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayFlatten"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;->c(Ljava/util/List;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method private synthetic c(Ljava/util/List;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p2, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p2}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Sequence;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;->b(Lnet/sf/saxon/om/Sequence;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lnet/sf/saxon/om/Sequence;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/Sequence;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/bf;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/bf;-><init>(Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;Ljava/util/List;)V

    invoke-static {p1, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    return-void
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayFlatten;->b(Lnet/sf/saxon/om/Sequence;Ljava/util/List;)V

    invoke-static {p1}, Lnet/sf/saxon/value/SequenceExtent;->makeSequenceExtent(Ljava/util/List;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method
