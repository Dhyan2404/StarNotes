.class public Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;
.super Lnet/sf/saxon/tree/iter/ArrayIterator$Of;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/iter/ArrayIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfNodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N::",
        "Lnet/sf/saxon/om/NodeInfo;",
        ">",
        "Lnet/sf/saxon/tree/iter/ArrayIterator$Of<",
        "TN;>;",
        "Lnet/sf/saxon/tree/iter/AxisIterator;"
    }
.end annotation


# direct methods
.method public constructor <init>([Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TN;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;-><init>([Lnet/sf/saxon/om/Item;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/ArrayIterator$OfNodes;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    .line 2
    invoke-super {p0}, Lnet/sf/saxon/tree/iter/ArrayIterator$Of;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method
