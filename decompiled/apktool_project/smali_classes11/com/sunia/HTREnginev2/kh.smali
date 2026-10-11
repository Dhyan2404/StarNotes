.class public final Lcom/sunia/HTREnginev2/kh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;
.implements Lnet/sf/saxon/om/AtomizedValueIterator;


# instance fields
.field public final e:Lnet/sf/saxon/tree/tiny/TinyTree;

.field public final f:I

.field public final g:Lnet/sf/saxon/pattern/NodeTest;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;ILnet/sf/saxon/pattern/NodeTest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sunia/HTREnginev2/kh;->g:Lnet/sf/saxon/pattern/NodeTest;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kh;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iput p2, p0, Lcom/sunia/HTREnginev2/kh;->f:I

    iget-object p1, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->o:[I

    aget p1, p1, p2

    iput p1, p0, Lcom/sunia/HTREnginev2/kh;->h:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/sunia/HTREnginev2/kh;->i:I

    return-void
.end method


# virtual methods
.method public final moveToNext()Z
    .locals 7

    :goto_0
    iget v0, p0, Lcom/sunia/HTREnginev2/kh;->h:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kh;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget v2, v1, Lnet/sf/saxon/tree/tiny/TinyTree;->O:I

    const v3, 0x7fffffff

    if-ge v0, v2, :cond_3

    iget-object v2, v1, Lnet/sf/saxon/tree/tiny/TinyTree;->Q:[I

    aget v2, v2, v0

    iget v4, p0, Lcom/sunia/HTREnginev2/kh;->f:I

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/tiny/TinyTree;->n(I)Lnet/sf/saxon/type/SimpleType;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kh;->g:Lnet/sf/saxon/pattern/NodeTest;

    new-instance v2, Lnet/sf/saxon/om/CodedName;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/kh;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v5, v4, Lnet/sf/saxon/tree/tiny/TinyTree;->Z:[I

    iget v6, p0, Lcom/sunia/HTREnginev2/kh;->h:I

    aget v5, v5, v6

    const v6, 0xfffff

    and-int/2addr v5, v6

    const-string v6, ""

    invoke-virtual {v4}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v4

    invoke-direct {v2, v5, v6, v4}, Lnet/sf/saxon/om/CodedName;-><init>(ILjava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v0}, Lnet/sf/saxon/pattern/NodeTest;->matches(ILnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sunia/HTREnginev2/kh;->h:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sunia/HTREnginev2/kh;->h:I

    iput v0, p0, Lcom/sunia/HTREnginev2/kh;->i:I

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kh;->g:Lnet/sf/saxon/pattern/NodeTest;

    instance-of v0, v0, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v0, :cond_1

    iput v3, p0, Lcom/sunia/HTREnginev2/kh;->h:I

    :cond_1
    return v1

    :cond_2
    iget v0, p0, Lcom/sunia/HTREnginev2/kh;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sunia/HTREnginev2/kh;->h:I

    goto :goto_0

    :cond_3
    :goto_1
    iput v3, p0, Lcom/sunia/HTREnginev2/kh;->h:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/kh;->i:I

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/kh;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/kh;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sunia/HTREnginev2/kh;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lcom/sunia/HTREnginev2/kh;->i:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->m(I)Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public nextAtomizedValue()Lnet/sf/saxon/om/AtomicSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/kh;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kh;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lcom/sunia/HTREnginev2/kh;->i:I

    invoke-virtual {v0, v1, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getTypedValueOfAttribute(Lnet/sf/saxon/tree/tiny/TinyAttributeImpl;I)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method
