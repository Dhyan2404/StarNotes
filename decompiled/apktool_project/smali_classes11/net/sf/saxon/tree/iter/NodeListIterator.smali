.class public Lnet/sf/saxon/tree/iter/NodeListIterator;
.super Lnet/sf/saxon/tree/iter/ListIterator$Of;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/sf/saxon/tree/iter/ListIterator$Of<",
        "Lnet/sf/saxon/om/NodeInfo;",
        ">;",
        "Lnet/sf/saxon/tree/iter/AxisIterator;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/NodeListIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 2
    invoke-super {p0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method
