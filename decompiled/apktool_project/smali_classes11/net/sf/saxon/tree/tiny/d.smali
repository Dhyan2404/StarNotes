.class public final Lnet/sf/saxon/tree/tiny/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Lnet/sf/saxon/om/AtomizedValueIterator;


# instance fields
.field public final e:Lnet/sf/saxon/tree/tiny/TinyTree;

.field public f:I

.field public final g:I

.field public h:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

.field public i:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/d;->i:Z

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/d;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iput p3, p0, Lnet/sf/saxon/tree/tiny/d;->g:I

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/d;->h:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    iget p2, p2, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    iget-object v1, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v1, v1, p2

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v0, :cond_0

    iget-object p1, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget p1, p1, p2

    const p2, 0xfffff

    and-int/2addr p1, p2

    if-eq p1, p3, :cond_1

    :cond_0
    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/d;->i:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    iget v0, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    iget-boolean v1, p0, Lnet/sf/saxon/tree/tiny/d;->i:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v0

    :cond_0
    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/d;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v5, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aget v1, v5, v1

    if-ge v1, v0, :cond_1

    return v2

    :cond_1
    iget-object v5, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v5, v5, v1

    and-int/lit8 v5, v5, 0xf

    if-ne v5, v3, :cond_0

    iget-object v4, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v4, v5

    iget v5, p0, Lnet/sf/saxon/tree/tiny/d;->g:I

    if-ne v4, v5, :cond_0

    return v3

    :cond_2
    const/4 p0, -0x1

    if-eq v0, p0, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/d;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 8

    .line 2
    iget-boolean v0, p0, Lnet/sf/saxon/tree/tiny/d;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    .line 4
    :cond_0
    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/d;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v5, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    iget v6, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    aget v5, v5, v6

    iput v5, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    if-ge v5, v0, :cond_1

    .line 5
    iput v3, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/d;->i:Z

    return-object v1

    .line 7
    :cond_1
    iget-object v6, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget v6, v6, v5

    const v7, 0xfffff

    and-int/2addr v6, v7

    iget v7, p0, Lnet/sf/saxon/tree/tiny/d;->g:I

    if-ne v6, v7, :cond_0

    iget-object v4, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    if-ne v0, v3, :cond_3

    return-object v1

    .line 9
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lnet/sf/saxon/tree/tiny/d;->i:Z

    .line 10
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/d;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget v1, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    .line 11
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/d;->h:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->setParentNode(Lnet/sf/saxon/tree/tiny/TinyNodeImpl;)V

    return-object v0
.end method

.method public nextAtomizedValue()Lnet/sf/saxon/om/AtomicSequence;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/tree/tiny/d;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    :cond_0
    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/d;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v5, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    iget v6, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    aget v5, v5, v6

    iput v5, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    if-ge v5, v0, :cond_1

    iput v3, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/d;->i:Z

    return-object v1

    :cond_1
    iget-object v6, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->q:[I

    aget v6, v6, v5

    const v7, 0xfffff

    and-int/2addr v6, v7

    iget v7, p0, Lnet/sf/saxon/tree/tiny/d;->g:I

    if-ne v6, v7, :cond_0

    iget-object v4, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_2
    iget v0, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    if-ne v0, v3, :cond_3

    return-object v1

    :cond_3
    :goto_0
    iput-boolean v2, p0, Lnet/sf/saxon/tree/tiny/d;->i:Z

    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/d;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/d;->f:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getTypedValueOfElement(I)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
