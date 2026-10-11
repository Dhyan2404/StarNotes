.class public final Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/util/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FollowingEnumeration"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public f:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public g:Lnet/sf/saxon/tree/iter/AxisIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    new-instance v0, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v3}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    goto :goto_0

    :cond_2
    invoke-interface {p1, v2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final next()Lnet/sf/saxon/om/NodeInfo;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    if-eqz v0, :cond_4

    .line 6
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    new-instance v1, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;ZZ)V

    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    goto :goto_0

    .line 9
    :cond_2
    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    :goto_0
    return-object v0

    .line 10
    :cond_3
    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 11
    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 12
    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 13
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    .line 14
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    goto :goto_1

    :cond_5
    const/4 v1, 0x7

    .line 15
    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 16
    :goto_1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Navigator$FollowingEnumeration;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1
.end method
