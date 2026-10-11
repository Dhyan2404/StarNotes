.class public final Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;
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
    name = "PrecedingEnumeration"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public f:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public g:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public final h:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    iput-boolean p2, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->h:Z

    new-instance p2, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lnet/sf/saxon/tree/util/Navigator$AncestorEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;Z)V

    iput-object p2, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    goto :goto_0

    :cond_0
    const/16 p2, 0xb

    invoke-interface {p1, p2}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final next()Lnet/sf/saxon/om/NodeInfo;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

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

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;ZZ)V

    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 9
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    return-object v0

    .line 11
    :cond_3
    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 12
    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 13
    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 14
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    .line 15
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    goto :goto_0

    :cond_5
    const/16 v1, 0xb

    .line 16
    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 17
    :goto_0
    iget-boolean v1, p0, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->h:Z

    if-nez v1, :cond_6

    .line 18
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Navigator$PrecedingEnumeration;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0

    :cond_7
    return-object v1
.end method
