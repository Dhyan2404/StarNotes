.class public abstract Lnet/sf/saxon/tree/util/SteppingNavigator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/tree/util/SteppingNavigator$DescendantAxisIterator;,
        Lnet/sf/saxon/tree/util/SteppingNavigator$c;,
        Lnet/sf/saxon/tree/util/SteppingNavigator$a;,
        Lnet/sf/saxon/tree/util/SteppingNavigator$b;,
        Lnet/sf/saxon/tree/util/SteppingNavigator$d;,
        Lnet/sf/saxon/tree/util/SteppingNavigator$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnet/sf/saxon/tree/util/SteppingNode;Lnet/sf/saxon/tree/util/SteppingNode;)Lnet/sf/saxon/tree/util/SteppingNode;
    .locals 3

    invoke-interface {p0}, Lnet/sf/saxon/tree/util/SteppingNode;->getFirstChild()Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Lnet/sf/saxon/om/NodeInfo;->isSameNodeInfo(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/tree/util/SteppingNode;->getParent()Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object v0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/tree/util/SteppingNode;->getNextSibling()Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    invoke-interface {v0, p1}, Lnet/sf/saxon/om/NodeInfo;->isSameNodeInfo(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    invoke-interface {v0}, Lnet/sf/saxon/tree/util/SteppingNode;->getParent()Lnet/sf/saxon/tree/util/SteppingNode;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    goto :goto_0
.end method
