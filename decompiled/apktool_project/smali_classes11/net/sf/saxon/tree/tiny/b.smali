.class public final Lnet/sf/saxon/tree/tiny/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/tree/iter/AxisIterator;


# instance fields
.field public final e:Lnet/sf/saxon/tree/tiny/TinyTree;

.field public f:I

.field public final g:I

.field public final h:Lnet/sf/saxon/z/IntPredicateProxy;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/tree/tiny/TinyTree;Lnet/sf/saxon/tree/tiny/TinyNodeImpl;Lnet/sf/saxon/pattern/NodeTest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/b;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p2, p2, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->nodeNr:I

    iput p2, p0, Lnet/sf/saxon/tree/tiny/b;->f:I

    iget-object v0, p1, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short p2, v0, p2

    iput p2, p0, Lnet/sf/saxon/tree/tiny/b;->g:I

    invoke-virtual {p3, p1}, Lnet/sf/saxon/pattern/NodeTest;->getMatcher(Lnet/sf/saxon/tree/tiny/NodeVectorTree;)Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/tree/tiny/b;->h:Lnet/sf/saxon/z/IntPredicateProxy;

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/tree/tiny/b;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 5

    .line 2
    :cond_0
    iget v0, p0, Lnet/sf/saxon/tree/tiny/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/tree/tiny/b;->f:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 3
    :try_start_0
    iget-object v3, p0, Lnet/sf/saxon/tree/tiny/b;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget-object v3, v3, Lnet/sf/saxon/tree/tiny/TinyTree;->m:[S

    aget-short v3, v3, v0

    iget v4, p0, Lnet/sf/saxon/tree/tiny/b;->g:I

    if-gt v3, v4, :cond_1

    .line 4
    iput v2, p0, Lnet/sf/saxon/tree/tiny/b;->f:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5
    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/tree/tiny/b;->h:Lnet/sf/saxon/z/IntPredicateProxy;

    invoke-interface {v1, v0}, Lnet/sf/saxon/z/IntPredicateProxy;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lnet/sf/saxon/tree/tiny/b;->e:Lnet/sf/saxon/tree/tiny/TinyTree;

    iget p0, p0, Lnet/sf/saxon/tree/tiny/b;->f:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/tree/tiny/TinyTree;->getNode(I)Lnet/sf/saxon/tree/tiny/TinyNodeImpl;

    move-result-object p0

    return-object p0

    .line 7
    :catch_0
    iput v2, p0, Lnet/sf/saxon/tree/tiny/b;->f:I

    return-object v1
.end method
