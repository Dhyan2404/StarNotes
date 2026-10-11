.class public final Lnet/sf/saxon/tree/tiny/AncestorIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/NodeInfo;

.field public f:Lnet/sf/saxon/om/NodeInfo;

.field public final g:Lnet/sf/saxon/pattern/NodeTest;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/pattern/NodeTest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/AncestorIterator;->g:Lnet/sf/saxon/pattern/NodeTest;

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/AncestorIterator;->e:Lnet/sf/saxon/om/NodeInfo;

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/AncestorIterator;->f:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/AncestorIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 2

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/AncestorIterator;->f:Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/AncestorIterator;->g:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/AncestorIterator;->f:Lnet/sf/saxon/om/NodeInfo;

    return-object v0
.end method
