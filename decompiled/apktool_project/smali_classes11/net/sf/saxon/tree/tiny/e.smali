.class public final Lnet/sf/saxon/tree/tiny/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# instance fields
.field public final e:Lnet/sf/saxon/tree/tiny/TinyTree;

.field public f:Lnet/sf/saxon/om/NodeInfo;

.field public g:I

.field public final h:Z

.field public final i:Lnet/sf/saxon/z/IntPredicateProxy;

.field public j:Lnet/sf/saxon/om/NodeInfo;

.field public final k:Lnet/sf/saxon/pattern/NodeTest;

.field public final l:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/e;->j:Lnet/sf/saxon/om/NodeInfo;

    iput-boolean p4, p0, Lnet/sf/saxon/tree/tiny/e;->h:Z

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/e;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/e;->f:Lnet/sf/saxon/om/NodeInfo;

    iget-object p4, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    iget p2, p2, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget-short p2, p4, p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lnet/sf/saxon/tree/tiny/e;->g:I

    iput-object p3, p0, Lnet/sf/saxon/tree/tiny/e;->k:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {p3, p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/e;->i:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {p3}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/type/UType;->TEXT:Lnet/sf/saxon/type/UType;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result p1

    iput-boolean p1, p0, Lnet/sf/saxon/tree/tiny/e;->l:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/e;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 5

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/e;->j:Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/e;->f:Lnet/sf/saxon/om/NodeInfo;

    .line 4
    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/e;->j:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/e;->f:Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_1

    return-object v1

    .line 6
    :cond_1
    instance-of v2, v0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/e;->f:Lnet/sf/saxon/om/NodeInfo;

    .line 8
    :cond_2
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/e;->f:Lnet/sf/saxon/om/NodeInfo;

    check-cast v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    iget v0, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    .line 9
    :cond_3
    iget-boolean v2, p0, Lnet/sf/saxon/tree/tiny/e;->h:Z

    if-nez v2, :cond_5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 10
    iget v2, p0, Lnet/sf/saxon/tree/tiny/e;->g:I

    if-ltz v2, :cond_7

    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/e;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v3, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v3, v3, v0

    if-ne v3, v2, :cond_7

    add-int/lit8 v3, v2, -0x1

    .line 11
    iput v3, p0, Lnet/sf/saxon/tree/tiny/e;->g:I

    if-gtz v2, :cond_4

    .line 12
    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/e;->f:Lnet/sf/saxon/om/NodeInfo;

    return-object v1

    .line 13
    :cond_5
    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/e;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v2, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v2, v2, v0

    if-nez v2, :cond_6

    .line 14
    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/e;->f:Lnet/sf/saxon/om/NodeInfo;

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 15
    :cond_7
    iget-boolean v2, p0, Lnet/sf/saxon/tree/tiny/e;->l:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/e;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v3, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x11

    if-ne v3, v4, :cond_a

    .line 16
    invoke-virtual {v2, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    .line 17
    invoke-virtual {v2}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->getTextNode()Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    move-result-object v3

    .line 18
    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/e;->k:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 19
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/e;->k:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    iput-object v2, p0, Lnet/sf/saxon/tree/tiny/e;->j:Lnet/sf/saxon/om/NodeInfo;

    .line 21
    :cond_8
    iput-object v3, p0, Lnet/sf/saxon/tree/tiny/e;->f:Lnet/sf/saxon/om/NodeInfo;

    return-object v3

    .line 22
    :cond_9
    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/e;->k:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    iput-object v2, p0, Lnet/sf/saxon/tree/tiny/e;->f:Lnet/sf/saxon/om/NodeInfo;

    return-object v2

    .line 24
    :cond_a
    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/e;->i:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {v2, v0}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 25
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/e;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/e;->f:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    .line 26
    :cond_b
    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/e;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v2, v2, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v2, v2, v0

    if-nez v2, :cond_3

    .line 27
    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/e;->f:Lnet/sf/saxon/om/NodeInfo;

    return-object v1
.end method
