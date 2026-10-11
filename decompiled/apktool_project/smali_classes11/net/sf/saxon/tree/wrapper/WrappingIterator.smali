.class public Lnet/sf/saxon/tree/wrapper/WrappingIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# instance fields
.field public e:Lnet/sf/saxon/tree/iter/AxisIterator;

.field public f:Lnet/sf/saxon/tree/wrapper/VirtualNode;

.field public g:Lnet/sf/saxon/om/NodeInfo;

.field public h:Z

.field public i:Lnet/sf/saxon/tree/wrapper/WrappingFunction;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/iter/AxisIterator;Lnet/sf/saxon/tree/wrapper/WrappingFunction;Lnet/sf/saxon/tree/wrapper/VirtualNode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->h:Z

    iput-object p1, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    iput-object p2, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->i:Lnet/sf/saxon/tree/wrapper/WrappingFunction;

    iput-object p3, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->f:Lnet/sf/saxon/tree/wrapper/VirtualNode;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public current()Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->e:Lnet/sf/saxon/tree/iter/AxisIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->h:Z

    if-eqz v1, :cond_1

    .line 5
    iput-object v0, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->g:Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->i:Lnet/sf/saxon/tree/wrapper/WrappingFunction;

    iget-object v2, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->f:Lnet/sf/saxon/tree/wrapper/VirtualNode;

    invoke-interface {v1, v0, v2}, Lnet/sf/saxon/tree/wrapper/WrappingFunction;->makeWrapper(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/tree/wrapper/VirtualNode;)Lnet/sf/saxon/tree/wrapper/VirtualNode;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->g:Lnet/sf/saxon/om/NodeInfo;

    .line 7
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/tree/wrapper/WrappingIterator;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method
