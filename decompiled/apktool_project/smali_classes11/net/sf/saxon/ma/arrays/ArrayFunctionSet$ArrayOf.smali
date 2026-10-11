.class public Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayOf;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/ma/arrays/ArrayFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayOf"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

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

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3
    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    .line 4
    :goto_0
    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0, p1}, Lnet/sf/saxon/functions/UnparcelFn;->unparcel(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {p1, p0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/arrays/ArrayFunctionSet$ArrayOf;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/arrays/ArrayItem;

    move-result-object p0

    return-object p0
.end method
