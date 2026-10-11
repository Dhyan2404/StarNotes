.class public Lnet/sf/saxon/z/IntHashMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/z/IntHashMap$b;,
        Lnet/sf/saxon/z/IntHashMap$c;,
        Lnet/sf/saxon/z/IntHashMap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final j:I = 0x1e

.field public static final k:I = 0x40000000


# instance fields
.field public final a:D

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[I

.field public i:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x8

    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lnet/sf/saxon/z/IntHashMap;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p2, p0, Lnet/sf/saxon/z/IntHashMap;->a:D

    .line 5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashMap;->l(I)V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/z/IntHashMap;)[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntHashMap;->h:[I

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/z/IntHashMap;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/z/IntHashMap;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashMap;->i(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lnet/sf/saxon/z/IntHashMap;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntHashMap;->c:I

    return p0
.end method

.method public static synthetic e(Lnet/sf/saxon/z/IntHashMap;I)I
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashMap;->h(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/z/IntHashMap;->c:I

    :goto_0
    iget v1, p0, Lnet/sf/saxon/z/IntHashMap;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap;->k()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public copy()Lnet/sf/saxon/z/IntHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/sf/saxon/z/IntHashMap<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/z/IntHashMap;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashMap;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap;->keyIterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/z/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final f()V
    .locals 2

    iget v0, p0, Lnet/sf/saxon/z/IntHashMap;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/z/IntHashMap;->c:I

    const/high16 v1, 0x40000000    # 2.0f

    if-gt v0, v1, :cond_1

    iget v1, p0, Lnet/sf/saxon/z/IntHashMap;->d:I

    if-ge v1, v0, :cond_0

    iget v1, p0, Lnet/sf/saxon/z/IntHashMap;->e:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntHashMap;->l(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "number of keys mapped exceeds 1073741824"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(I)I
    .locals 1

    const v0, 0x4f1bbcdd

    mul-int/2addr p1, v0

    iget v0, p0, Lnet/sf/saxon/z/IntHashMap;->f:I

    shr-int/2addr p1, v0

    iget p0, p0, Lnet/sf/saxon/z/IntHashMap;->g:I

    and-int/2addr p0, p1

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashMap;->h(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final h(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashMap;->g(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/z/IntHashMap;->i(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/z/IntHashMap;->h:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lnet/sf/saxon/z/IntHashMap;->g:I

    and-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    new-array p0, p1, [Ljava/lang/Object;

    return-object p0
.end method

.method public final k()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public keyIterator()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntHashMap$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntHashMap$a;-><init>(Lnet/sf/saxon/z/IntHashMap;)V

    return-object v0
.end method

.method public keySet()Lnet/sf/saxon/z/IntSet;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntHashMap$b;

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntHashMap$b;-><init>(Lnet/sf/saxon/z/IntHashMap;)V

    return-object v0
.end method

.method public final l(I)V
    .locals 8

    iget v0, p0, Lnet/sf/saxon/z/IntHashMap;->c:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget-wide v0, p0, Lnet/sf/saxon/z/IntHashMap;->a:D

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    :goto_0
    move-wide v0, v2

    goto :goto_1

    :cond_1
    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x2

    const/4 v3, 0x1

    :goto_2
    int-to-double v4, v2

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3

    const/high16 v6, 0x40000000    # 2.0f

    if-ge v2, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_3
    iget p1, p0, Lnet/sf/saxon/z/IntHashMap;->b:I

    if-ne v2, p1, :cond_4

    return-void

    :cond_4
    iput v2, p0, Lnet/sf/saxon/z/IntHashMap;->b:I

    double-to-int v4, v4

    iput v4, p0, Lnet/sf/saxon/z/IntHashMap;->d:I

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/z/IntHashMap;->e:I

    rsub-int/lit8 v0, v3, 0x1f

    iput v0, p0, Lnet/sf/saxon/z/IntHashMap;->f:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lnet/sf/saxon/z/IntHashMap;->g:I

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashMap;->h:[I

    iget-object v1, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Lnet/sf/saxon/z/IntHashMap;->c:I

    new-array v4, v2, [I

    iput-object v4, p0, Lnet/sf/saxon/z/IntHashMap;->h:[I

    invoke-virtual {p0, v2}, Lnet/sf/saxon/z/IntHashMap;->j(I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    if-eqz v0, :cond_6

    :goto_3
    if-ge v3, p1, :cond_6

    aget-object v2, v1, v3

    invoke-virtual {p0, v2}, Lnet/sf/saxon/z/IntHashMap;->i(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    aget v2, v0, v3

    aget-object v4, v1, v3

    invoke-virtual {p0, v2, v4}, Lnet/sf/saxon/z/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lnet/sf/saxon/z/IntHashMap;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashMap;->h(I)I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/z/IntHashMap;->i(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    aput-object p2, p0, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/z/IntHashMap;->h:[I

    aput p1, v2, v0

    iget-object p1, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    aput-object p2, p1, v0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap;->f()V

    :goto_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "IntHashMap does not allow null values"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashMap;->h(I)I

    move-result p1

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/z/IntHashMap;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/z/IntHashMap;->c:I

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashMap;->k()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, p1

    move v0, p1

    :cond_1
    sub-int/2addr v0, v1

    iget v2, p0, Lnet/sf/saxon/z/IntHashMap;->g:I

    and-int/2addr v0, v2

    iget-object v2, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/z/IntHashMap;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/sf/saxon/z/IntHashMap;->h:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/z/IntHashMap;->g(I)I

    move-result v2

    if-gt v0, v2, :cond_3

    if-lt v2, p1, :cond_1

    :cond_3
    if-ge v2, p1, :cond_4

    if-lt p1, v0, :cond_1

    :cond_4
    if-ge p1, v0, :cond_5

    if-le v0, v2, :cond_1

    :cond_5
    iget-object v2, p0, Lnet/sf/saxon/z/IntHashMap;->h:[I

    aget v3, v2, v0

    aput v3, v2, p1

    iget-object v2, p0, Lnet/sf/saxon/z/IntHashMap;->i:[Ljava/lang/Object;

    aget-object v3, v2, v0

    aput-object v3, v2, p1

    move p1, v0

    goto :goto_0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntHashMap;->c:I

    return p0
.end method

.method public valueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/z/IntHashMap$c;

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntHashMap$c;-><init>(Lnet/sf/saxon/z/IntHashMap;)V

    return-object v0
.end method

.method public valueSet()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/omi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/omi;-><init>(Lnet/sf/saxon/z/IntHashMap;)V

    return-object v0
.end method
