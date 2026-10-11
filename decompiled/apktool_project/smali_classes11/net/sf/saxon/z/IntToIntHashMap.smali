.class public Lnet/sf/saxon/z/IntToIntHashMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntToIntMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/z/IntToIntHashMap$a;
    }
.end annotation


# static fields
.field public static final l:I = 0x1e

.field public static final m:I = 0x40000000


# instance fields
.field public final a:D

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[I

.field public j:[I

.field public k:[Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x8

    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lnet/sf/saxon/z/IntToIntHashMap;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lnet/sf/saxon/z/IntToIntHashMap;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->b:I

    .line 5
    iput-wide p2, p0, Lnet/sf/saxon/z/IntToIntHashMap;->a:D

    .line 6
    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntToIntHashMap;->f(I)V

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/z/IntToIntHashMap;)[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->i:[I

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/z/IntToIntHashMap;)[Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->d:I

    const/high16 v1, 0x40000000    # 2.0f

    if-gt v0, v1, :cond_1

    iget v1, p0, Lnet/sf/saxon/z/IntToIntHashMap;->e:I

    if-ge v1, v0, :cond_0

    iget v1, p0, Lnet/sf/saxon/z/IntToIntHashMap;->f:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntToIntHashMap;->f(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "number of keys mapped exceeds 1073741824"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->d:I

    move v1, v0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/z/IntToIntHashMap;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(I)Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntToIntHashMap;->e(I)I

    move-result p0

    aget-boolean p0, v0, p0

    return p0
.end method

.method public final d(I)I
    .locals 1

    const v0, 0x4f1bbcdd

    mul-int/2addr p1, v0

    iget v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->g:I

    shr-int/2addr p1, v0

    iget p0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->h:I

    and-int/2addr p0, p1

    return p0
.end method

.method public final e(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntToIntHashMap;->d(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/z/IntToIntHashMap;->i:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lnet/sf/saxon/z/IntToIntHashMap;->h:I

    and-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final f(I)V
    .locals 8

    iget v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->d:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget-wide v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->a:D

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
    iget p1, p0, Lnet/sf/saxon/z/IntToIntHashMap;->c:I

    if-ne v2, p1, :cond_4

    return-void

    :cond_4
    iput v2, p0, Lnet/sf/saxon/z/IntToIntHashMap;->c:I

    double-to-int v4, v4

    iput v4, p0, Lnet/sf/saxon/z/IntToIntHashMap;->e:I

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->f:I

    rsub-int/lit8 v0, v3, 0x1f

    iput v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->g:I

    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->h:I

    iget-object v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->i:[I

    iget-object v1, p0, Lnet/sf/saxon/z/IntToIntHashMap;->j:[I

    iget-object v3, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    const/4 v4, 0x0

    iput v4, p0, Lnet/sf/saxon/z/IntToIntHashMap;->d:I

    new-array v5, v2, [I

    iput-object v5, p0, Lnet/sf/saxon/z/IntToIntHashMap;->i:[I

    new-array v5, v2, [I

    iput-object v5, p0, Lnet/sf/saxon/z/IntToIntHashMap;->j:[I

    new-array v2, v2, [Z

    iput-object v2, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    if-eqz v0, :cond_6

    :goto_3
    if-ge v4, p1, :cond_6

    aget-boolean v2, v3, v4

    if-eqz v2, :cond_5

    aget v2, v0, v4

    aget v5, v1, v4

    invoke-virtual {p0, v2, v5}, Lnet/sf/saxon/z/IntToIntHashMap;->put(II)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public get(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntToIntHashMap;->e(I)I

    move-result p1

    iget-object v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->j:[I

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->b:I

    :goto_0
    return p0
.end method

.method public getDefaultValue()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->b:I

    return p0
.end method

.method public keyIterator()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntToIntHashMap$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntToIntHashMap$a;-><init>(Lnet/sf/saxon/z/IntToIntHashMap;)V

    return-object v0
.end method

.method public put(II)V
    .locals 3

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntToIntHashMap;->e(I)I

    move-result v0

    iget-object v1, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->j:[I

    aput p2, p0, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/z/IntToIntHashMap;->i:[I

    aput p1, v2, v0

    iget-object p1, p0, Lnet/sf/saxon/z/IntToIntHashMap;->j:[I

    aput p2, p1, v0

    const/4 p1, 0x1

    aput-boolean p1, v1, v0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntToIntHashMap;->c()V

    :goto_0
    return-void
.end method

.method public remove(I)Z
    .locals 5

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntToIntHashMap;->e(I)I

    move-result p1

    iget-object v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->d:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->d:I

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    aput-boolean v1, v0, p1

    move v0, p1

    :cond_1
    sub-int/2addr v0, v2

    iget v3, p0, Lnet/sf/saxon/z/IntToIntHashMap;->h:I

    and-int/2addr v0, v3

    iget-object v3, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lnet/sf/saxon/z/IntToIntHashMap;->i:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lnet/sf/saxon/z/IntToIntHashMap;->d(I)I

    move-result v3

    if-gt v0, v3, :cond_3

    if-lt v3, p1, :cond_1

    :cond_3
    if-ge v3, p1, :cond_4

    if-lt p1, v0, :cond_1

    :cond_4
    if-ge p1, v0, :cond_5

    if-le v0, v3, :cond_1

    :cond_5
    iget-object v3, p0, Lnet/sf/saxon/z/IntToIntHashMap;->i:[I

    aget v4, v3, v0

    aput v4, v3, p1

    iget-object v3, p0, Lnet/sf/saxon/z/IntToIntHashMap;->j:[I

    aget v4, v3, v0

    aput v4, v3, p1

    iget-object v3, p0, Lnet/sf/saxon/z/IntToIntHashMap;->k:[Z

    aget-boolean v4, v3, v0

    aput-boolean v4, v3, p1

    move p1, v0

    goto :goto_0
.end method

.method public setDefaultValue(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/z/IntToIntHashMap;->b:I

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntToIntHashMap;->d:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntToIntHashMap;->keyIterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/z/IntToIntHashMap;->get(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x64

    if-lt v2, v4, :cond_0

    const-string p0, "...."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x7d

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
