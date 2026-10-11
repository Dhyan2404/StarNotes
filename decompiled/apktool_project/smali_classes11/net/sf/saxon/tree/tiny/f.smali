.class public final Lnet/sf/saxon/tree/tiny/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# instance fields
.field public final e:Lnet/sf/saxon/tree/tiny/TinyTree;

.field public final f:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

.field public g:I

.field public final h:Lnet/sf/saxon/pattern/NodeTest;

.field public final i:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

.field public final j:Lnet/sf/saxon/z/IntPredicateProxy;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/f;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {p1}, Lnet/sf/saxon/tree/tiny/TinyTree;->j()V

    iput-object p3, p0, Lnet/sf/saxon/tree/tiny/f;->h:Lnet/sf/saxon/pattern/NodeTest;

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/f;->f:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    iget v0, p2, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    iput v0, p0, Lnet/sf/saxon/tree/tiny/f;->g:I

    iget-object p2, p2, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->parent:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/f;->i:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    invoke-virtual {p3, p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/f;->j:Lnet/sf/saxon/z/IntPredicateProxy;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/f;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    .line 2
    iget v0, p0, Lnet/sf/saxon/tree/tiny/f;->g:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/f;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TinyTree;->r:[I

    iget v2, p0, Lnet/sf/saxon/tree/tiny/f;->g:I

    aget v0, v0, v2

    iput v0, p0, Lnet/sf/saxon/tree/tiny/f;->g:I

    if-gez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/f;->j:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {v2, v0}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/f;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget v1, p0, Lnet/sf/saxon/tree/tiny/f;->g:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/f;->i:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->setParentNode(Lnet/sf/saxon/tree/tiny/TinyNodeImpl;)V

    return-object v0
.end method
