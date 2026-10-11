.class public Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# instance fields
.field public e:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public f:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public g:Lnet/sf/saxon/tree/iter/AxisIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/iter/AxisIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    iput-object p2, p0, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    iput-object p1, p0, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    iget-object p0, p0, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    iget-object v2, p0, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;->f:Lnet/sf/saxon/tree/iter/AxisIterator;

    iput-object v0, p0, Lnet/sf/saxon/tree/iter/ConcatenatingAxisIterator;->g:Lnet/sf/saxon/tree/iter/AxisIterator;

    .line 5
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method
