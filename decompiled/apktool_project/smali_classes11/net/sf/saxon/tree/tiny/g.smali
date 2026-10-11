.class public final Lnet/sf/saxon/tree/tiny/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;
.implements Lnet/sf/saxon/om/AtomizedValueIterator;


# instance fields
.field public final e:Lnet/sf/saxon/tree/tiny/TinyTree;

.field public f:I

.field public final g:Lnet/sf/saxon/pattern/NodeTest;

.field public final h:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

.field public final i:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

.field public final j:Z

.field public k:Z

.field public final l:Lnet/sf/saxon/z/IntPredicateProxy;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/g;->k:Z

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/g;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iput-object p3, p0, Lnet/sf/saxon/tree/tiny/g;->g:Lnet/sf/saxon/pattern/NodeTest;

    if-nez p3, :cond_0

    sget-object v0, Lnet/sf/saxon/z/IntSetPredicate;->ALWAYS_TRUE:Lnet/sf/saxon/z/IntPredicateProxy;

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/g;->l:Lnet/sf/saxon/z/IntPredicateProxy;

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/tree/tiny/g;->l:Lnet/sf/saxon/z/IntPredicateProxy;

    :goto_0
    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/g;->h:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    iput-boolean p4, p0, Lnet/sf/saxon/tree/tiny/g;->j:Z

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lnet/sf/saxon/tree/tiny/g;->i:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    iget p1, p2, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    add-int/2addr p1, v0

    iput p1, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getParent()Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p4

    iput-object p4, p0, Lnet/sf/saxon/tree/tiny/g;->i:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    const/4 v1, -0x1

    if-nez p4, :cond_2

    iput v1, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    goto :goto_2

    :cond_2
    iget-object p4, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    iget v2, p2, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    aget p4, p4, v2

    iput p4, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    :goto_1
    iget-object p4, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    iget v2, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    aget-byte p4, p4, v2

    const/16 v3, 0xc

    if-ne p4, v3, :cond_3

    iget-object p4, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    aget p4, p4, v2

    iput p4, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    goto :goto_1

    :cond_3
    iget p1, p2, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    if-ge v2, p1, :cond_4

    iput v1, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    :cond_4
    :goto_2
    iget p1, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    if-ltz p1, :cond_5

    if-eqz p3, :cond_5

    iget-object p2, p0, Lnet/sf/saxon/tree/tiny/g;->l:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {p2, p1}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result p1

    if-nez p1, :cond_5

    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/g;->k:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    iget v0, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    iget-boolean v1, p0, Lnet/sf/saxon/tree/tiny/g;->k:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/g;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v1, v1, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/g;->g:Lnet/sf/saxon/pattern/NodeTest;

    if-nez v3, :cond_1

    :cond_0
    aget v0, v1, v0

    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/g;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v3, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v3, v3, v0

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_1
    aget v0, v1, v0

    iget v3, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    if-lt v0, v3, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/g;->l:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {v3, v0}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    :goto_0
    iget p0, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    if-ge v0, p0, :cond_3

    return v2

    :cond_3
    const/4 p0, -0x1

    if-eq v0, p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/g;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 6

    .line 2
    iget-boolean v0, p0, Lnet/sf/saxon/tree/tiny/g;->k:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    .line 3
    iget v0, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    .line 4
    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/g;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v3, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    .line 5
    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/g;->g:Lnet/sf/saxon/pattern/NodeTest;

    if-nez v4, :cond_1

    .line 6
    :cond_0
    iget v4, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    aget v4, v3, v4

    iput v4, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    .line 7
    iget-object v5, p0, Lnet/sf/saxon/tree/tiny/g;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v5, v5, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v4, v5, v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 8
    :cond_1
    iget v4, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    aget v4, v3, v4

    iput v4, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    if-lt v4, v0, :cond_2

    .line 9
    iget-object v5, p0, Lnet/sf/saxon/tree/tiny/g;->l:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {v5, v4}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    :cond_2
    :goto_0
    iget v3, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    if-ge v3, v0, :cond_3

    .line 11
    iput v2, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/g;->k:Z

    return-object v1

    .line 13
    :cond_3
    iget v0, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    if-ne v0, v2, :cond_4

    return-object v1

    :cond_4
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lnet/sf/saxon/tree/tiny/g;->k:Z

    .line 15
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/g;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object v0

    .line 16
    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/g;->i:Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->setParentNode(Lnet/sf/saxon/tree/tiny/TinyNodeImpl;)V

    return-object v0
.end method

.method public nextAtomizedValue()Lnet/sf/saxon/om/AtomicSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/tree/tiny/g;->k:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/g;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v3, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->n:[I

    iget-object v4, p0, Lnet/sf/saxon/tree/tiny/g;->g:Lnet/sf/saxon/pattern/NodeTest;

    if-nez v4, :cond_1

    :cond_0
    iget v4, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    aget v4, v3, v4

    iput v4, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    iget-object v5, p0, Lnet/sf/saxon/tree/tiny/g;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v5, v5, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v4, v5, v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_1
    iget v4, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    aget v4, v3, v4

    iput v4, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    if-lt v4, v0, :cond_2

    iget-object v5, p0, Lnet/sf/saxon/tree/tiny/g;->l:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {v5, v4}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    :goto_0
    iget v3, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    if-ge v3, v0, :cond_3

    iput v2, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/tree/tiny/g;->k:Z

    return-object v1

    :cond_3
    iget v0, p0, Lnet/sf/saxon/tree/tiny/g;->f:I

    if-ne v0, v2, :cond_4

    return-object v1

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/sf/saxon/tree/tiny/g;->k:Z

    iget-object p0, p0, Lnet/sf/saxon/tree/tiny/g;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v2, p0, Lnet/sf/saxon/tree/tiny/TinyTree;->nodeKind:[B

    aget-byte v2, v2, v0

    if-eq v2, v1, :cond_9

    const/16 v1, 0x11

    if-eq v2, v1, :cond_9

    const/4 v1, 0x3

    if-eq v2, v1, :cond_8

    const/4 v1, 0x4

    if-eq v2, v1, :cond_7

    const/4 v1, 0x7

    if-eq v2, v1, :cond_6

    const/16 v1, 0x8

    if-ne v2, v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unknown node kind on child axis"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_6
    :goto_1
    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->k(I)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {p0, v0}, Lnet/sf/saxon/tree/tiny/WhitespaceTextImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyTextImpl;->getStringValue(Lnet/sf/saxon/tree/tiny/TinyTree;I)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/StringValue;->makeUntypedAtomic(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getTypedValueOfElement(I)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
