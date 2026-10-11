.class public Lnet/sf/saxon/tree/iter/PrependAxisIterator;
.super Lnet/sf/saxon/tree/iter/PrependSequenceIterator;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/iter/AxisIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;-><init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/om/SequenceIterator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/PrependAxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 2
    invoke-super {p0}, Lnet/sf/saxon/tree/iter/PrependSequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method
