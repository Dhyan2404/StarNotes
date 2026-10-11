.class public final Lnet/sf/saxon/tree/tiny/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# static fields
.field public static final synthetic m:Z


# instance fields
.field public final e:Lnet/sf/saxon/tree/tiny/TinyTree;

.field public final f:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

.field public g:Lnet/sf/saxon/om/NodeInfo;

.field public final h:Lnet/sf/saxon/pattern/NodeTest;

.field public final i:Z

.field public j:I

.field public final k:Lnet/sf/saxon/z/IntPredicateProxy;

.field public l:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/tree/tiny/c;->j:I

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/c;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iput-object p3, p0, Lnet/sf/saxon/tree/tiny/c;->h:Lnet/sf/saxon/pattern/NodeTest;

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/c;->f:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    iput-boolean p4, p0, Lnet/sf/saxon/tree/tiny/c;->i:Z

    invoke-virtual {p3, p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/c;->k:Lnet/sf/saxon/z/IntPredicateProxy;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/c;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 6

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/c;->l:Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/c;->l:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    .line 4
    :cond_0
    iget v0, p0, Lnet/sf/saxon/tree/tiny/c;->j:I

    const/4 v2, -0x1

    if-gtz v0, :cond_5

    if-gez v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/c;->f:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    iget v0, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    .line 6
    iget-boolean v3, p0, Lnet/sf/saxon/tree/tiny/c;->i:Z

    if-eqz v3, :cond_2

    :goto_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 7
    :cond_2
    :goto_1
    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/c;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v4, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aget v4, v4, v0

    if-le v4, v0, :cond_3

    move v0, v4

    goto :goto_3

    .line 8
    :cond_3
    iget-object v0, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v0, v0, v4

    if-nez v0, :cond_4

    .line 9
    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/c;->g:Lnet/sf/saxon/om/NodeInfo;

    .line 10
    iput v2, p0, Lnet/sf/saxon/tree/tiny/c;->j:I

    return-object v1

    :cond_4
    move v0, v4

    goto :goto_1

    .line 11
    :cond_5
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/c;->g:Lnet/sf/saxon/om/NodeInfo;

    instance-of v3, v0, Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    if-eqz v3, :cond_6

    .line 12
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getParent()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    goto :goto_2

    .line 13
    :cond_6
    check-cast v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    .line 14
    :goto_2
    iget v0, v0, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    goto :goto_0

    .line 15
    :goto_3
    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/c;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v4, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v4, v4, v0

    if-nez v4, :cond_7

    .line 16
    iput-object v1, p0, Lnet/sf/saxon/tree/tiny/c;->g:Lnet/sf/saxon/om/NodeInfo;

    .line 17
    iput v2, p0, Lnet/sf/saxon/tree/tiny/c;->j:I

    return-object v1

    .line 18
    :cond_7
    iget-object v4, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v4, v4, v0

    const/16 v5, 0x11

    if-ne v4, v5, :cond_a

    .line 19
    invoke-virtual {v3, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/tree/tiny/TinyTextualElement;

    .line 20
    invoke-virtual {v3}, Lnet/sf/saxon/tree/tiny/TinyTextualElement;->getTextNode()Lnet/sf/saxon/tree/tiny/TinyTextualElement$TinyTextualElementText;

    move-result-object v3

    .line 21
    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/c;->k:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {v4, v0}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 22
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/c;->h:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v1, v3}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23
    iput-object v3, p0, Lnet/sf/saxon/tree/tiny/c;->l:Lnet/sf/saxon/om/NodeInfo;

    .line 24
    :cond_8
    iget v1, p0, Lnet/sf/saxon/tree/tiny/c;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/tree/tiny/c;->j:I

    .line 25
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/c;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/c;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    .line 26
    :cond_9
    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/c;->h:Lnet/sf/saxon/pattern/NodeTest;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/pattern/NodeTest;->test(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 27
    iget v0, p0, Lnet/sf/saxon/tree/tiny/c;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/tree/tiny/c;->j:I

    .line 28
    iput-object v3, p0, Lnet/sf/saxon/tree/tiny/c;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object v3

    .line 29
    :cond_a
    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/c;->k:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {v3, v0}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 30
    iget v1, p0, Lnet/sf/saxon/tree/tiny/c;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/tree/tiny/c;->j:I

    .line 31
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/c;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/c;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    :cond_b
    goto/16 :goto_0
.end method
