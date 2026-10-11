.class public Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayRemove;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayRemove"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/z/IntSet;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayRemove;->b(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/z/IntSet;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/z/IntSet;Lnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    check-cast p2, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result p0

    invoke-static {p2, p0}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->checkSubscript(Lnet/sf/saxon/value/IntegerValue;I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2
    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    const/4 p1, 0x1

    .line 3
    aget-object p2, p2, p1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    .line 4
    instance-of v0, p2, Lnet/sf/saxon/value/IntegerValue;

    if-eqz v0, :cond_0

    .line 5
    check-cast p2, Lnet/sf/saxon/value/IntegerValue;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v0

    invoke-static {p2, v0}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;->checkSubscript(Lnet/sf/saxon/value/IntegerValue;I)I

    move-result p2

    sub-int/2addr p2, p1

    .line 6
    invoke-virtual {p0, p2}, Lnet/sf/saxon/ma/arrays/ArrayItem;->remove(I)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p1, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {p1}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    .line 8
    invoke-interface {p2}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    .line 9
    new-instance v0, Lcom/sunia/HTREnginev2/cf;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/cf;-><init>(Lnet/sf/saxon/ma/arrays/ArrayItem;Lnet/sf/saxon/z/IntSet;)V

    invoke-static {p2, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    .line 10
    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->removeSeveral(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayRemove;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method
