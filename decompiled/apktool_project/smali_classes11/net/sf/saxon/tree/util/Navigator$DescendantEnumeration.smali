.class public final Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;
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
    name = "DescendantEnumeration"
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public final g:Lnet/sf/saxon/om/NodeInfo;

.field public final h:Z

.field public final i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->j:Z

    iput-object p1, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    iput-boolean p2, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->h:Z

    iput-boolean p3, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->i:Z

    return-void
.end method


# virtual methods
.method public advance()V
    .locals 0

    return-void
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public final next()Lnet/sf/saxon/om/NodeInfo;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    if-eqz v0, :cond_7

    .line 6
    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-boolean v1, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->i:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;

    invoke-direct {v1, v0, v3, v2}, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;ZZ)V

    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    return-object v0

    .line 10
    :cond_2
    new-instance v1, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;

    invoke-direct {v1, v0, v2, v3}, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;-><init>(Lnet/sf/saxon/om/NodeInfo;ZZ)V

    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 11
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0

    .line 12
    :cond_4
    iget-boolean v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->i:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->h:Z

    if-nez v0, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    iput-boolean v2, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->j:Z

    .line 14
    iput-object v1, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    .line 15
    iget-object p0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object p0

    :cond_6
    :goto_0
    return-object v1

    .line 16
    :cond_7
    iget-boolean v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->j:Z

    if-eqz v0, :cond_8

    return-object v1

    .line 17
    :cond_8
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 18
    iget-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(I)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    .line 19
    iget-boolean v1, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->i:Z

    if-nez v1, :cond_a

    .line 20
    invoke-static {v0}, Lnet/sf/saxon/functions/Reverse;->getReverseIterator(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    goto :goto_1

    .line 21
    :cond_9
    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->ofNodes()Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    .line 22
    :cond_a
    :goto_1
    iget-boolean v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->i:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->h:Z

    if-eqz v0, :cond_b

    .line 23
    iget-object p0, p0, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object p0

    .line 24
    :cond_b
    invoke-virtual {p0}, Lnet/sf/saxon/tree/util/Navigator$DescendantEnumeration;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method
