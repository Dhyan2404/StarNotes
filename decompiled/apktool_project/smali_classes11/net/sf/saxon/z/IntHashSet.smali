.class public Lnet/sf/saxon/z/IntHashSet;
.super Lnet/sf/saxon/z/IntSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/z/IntHashSet$a;
    }
.end annotation


# static fields
.field public static final i:I = 0x1e

.field public static final j:I = 0x40000000


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/high16 v1, -0x80000000

    .line 1
    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/z/IntHashSet;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 2
    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/z/IntHashSet;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    .line 4
    iput p2, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    .line 5
    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashSet;->e(I)V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/z/IntHashSet;)[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/z/IntHashSet;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    return p0
.end method

.method public static containsSome(Lnet/sf/saxon/z/IntSet;Lnet/sf/saxon/z/IntSet;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/z/IntEmptySet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/z/IntUniversalSet;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/z/IntComplementSet;

    if-eqz v0, :cond_2

    check-cast p1, Lnet/sf/saxon/z/IntComplementSet;

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntComplementSet;->getExclusions()Lnet/sf/saxon/z/IntSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntSet;->containsAll(Lnet/sf/saxon/z/IntSet;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_4
    return v1
.end method

.method public static varargs of([I)Lnet/sf/saxon/z/IntHashSet;
    .locals 4

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-virtual {v0, v3}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static stringify(Lnet/sf/saxon/z/IntIterator;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(I)Z
    .locals 4

    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    if-eq p1, v0, :cond_3

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashSet;->d(I)I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    aget v2, v1, v0

    iget v3, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    aput p1, v1, v0

    const/high16 p1, 0x40000000    # 2.0f

    if-gt v2, p1, :cond_1

    iget p1, p0, Lnet/sf/saxon/z/IntHashSet;->d:I

    if-ge p1, v2, :cond_0

    iget p1, p0, Lnet/sf/saxon/z/IntHashSet;->e:I

    if-gt v2, p1, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/z/IntHashSet;->e(I)V

    :cond_0
    return v3

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Too many elements (> 1073741824)"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t add the \'no data\' value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(I)I
    .locals 1

    const v0, 0x4f1bbcdd

    mul-int/2addr p1, v0

    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->f:I

    shr-int/2addr p1, v0

    iget p0, p0, Lnet/sf/saxon/z/IntHashSet;->g:I

    and-int/2addr p0, p1

    return p0
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    :goto_0
    iget v1, p0, Lnet/sf/saxon/z/IntHashSet;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    iget v2, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(I)Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashSet;->d(I)I

    move-result p1

    aget p1, v0, p1

    iget p0, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public copy()Lnet/sf/saxon/z/IntSet;
    .locals 4

    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/z/IntEmptySet;->getInstance()Lnet/sf/saxon/z/IntEmptySet;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lnet/sf/saxon/z/IntHashSet;

    iget v2, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    invoke-direct {v1, v0, v2}, Lnet/sf/saxon/z/IntHashSet;-><init>(II)V

    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->b:I

    iput v0, v1, Lnet/sf/saxon/z/IntHashSet;->b:I

    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    iput v0, v1, Lnet/sf/saxon/z/IntHashSet;->c:I

    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->d:I

    iput v0, v1, Lnet/sf/saxon/z/IntHashSet;->d:I

    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->e:I

    iput v0, v1, Lnet/sf/saxon/z/IntHashSet;->e:I

    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->f:I

    iput v0, v1, Lnet/sf/saxon/z/IntHashSet;->f:I

    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->g:I

    iput v0, v1, Lnet/sf/saxon/z/IntHashSet;->g:I

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, v1, Lnet/sf/saxon/z/IntHashSet;->h:[I

    iget-object p0, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final d(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashSet;->c(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    aget v1, v1, v0

    iget v2, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    if-eq v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lnet/sf/saxon/z/IntHashSet;->g:I

    and-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final e(I)V
    .locals 6

    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    mul-int/lit8 v3, p1, 0x4

    if-ge v0, v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v0, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget p1, p0, Lnet/sf/saxon/z/IntHashSet;->b:I

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iput v0, p0, Lnet/sf/saxon/z/IntHashSet;->b:I

    div-int/lit8 v3, v0, 0x4

    iput v3, p0, Lnet/sf/saxon/z/IntHashSet;->d:I

    const/high16 v3, 0x10000000

    iput v3, p0, Lnet/sf/saxon/z/IntHashSet;->e:I

    rsub-int/lit8 v2, v2, 0x1f

    iput v2, p0, Lnet/sf/saxon/z/IntHashSet;->f:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lnet/sf/saxon/z/IntHashSet;->g:I

    const/4 v2, 0x0

    iput v2, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    iget-object v3, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    iget v4, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([II)V

    if-eqz v3, :cond_4

    :goto_1
    if-ge v2, p1, :cond_4

    aget v0, v3, v2

    iget v4, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    if-eq v0, v4, :cond_3

    iget v4, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    add-int/2addr v4, v1

    iput v4, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    iget-object v4, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntHashSet;->d(I)I

    move-result v5

    aput v0, v4, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/z/IntSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/z/IntHashSet;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashSet;->size()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntHashSet;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->containsAll(Lnet/sf/saxon/z/IntSet;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getValues()[I
    .locals 7

    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    new-array v0, v0, [I

    iget-object v1, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget v5, v1, v3

    iget v6, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    if-eq v5, v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    aput v5, v0, v4

    move v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    const v0, 0x37ce0149

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntHashSet$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntHashSet$a;-><init>(Lnet/sf/saxon/z/IntHashSet;)V

    return-object v0
.end method

.method public mutableCopy()Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntHashSet;->d(I)I

    move-result p1

    iget-object v0, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    aget v0, v0, p1

    iget v1, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    iget v2, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    aput v2, v0, p1

    move v0, p1

    :cond_1
    sub-int/2addr v0, v1

    iget v2, p0, Lnet/sf/saxon/z/IntHashSet;->g:I

    and-int/2addr v0, v2

    iget-object v2, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    aget v2, v2, v0

    iget v3, p0, Lnet/sf/saxon/z/IntHashSet;->a:I

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v2}, Lnet/sf/saxon/z/IntHashSet;->c(I)I

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
    iget-object v2, p0, Lnet/sf/saxon/z/IntHashSet;->h:[I

    aget v3, v2, v0

    aput v3, v2, p1

    move p1, v0

    goto :goto_0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntHashSet;->c:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntHashSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/z/IntHashSet;->stringify(Lnet/sf/saxon/z/IntIterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
