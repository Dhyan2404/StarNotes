.class public Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/MultidimensionalCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:[I

.field public f:I

.field public final g:I

.field public final synthetic h:Lorg/apache/commons/math3/util/MultidimensionalCounter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/util/MultidimensionalCounter;)V
    .locals 3

    iput-object p1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->h:Lorg/apache/commons/math3/util/MultidimensionalCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->a(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->e:[I

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->f:I

    invoke-static {p1}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->b(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->g:I

    invoke-static {p1}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->c(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result p0

    aput v1, v0, p0

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->f:I

    return p0
.end method

.method public getCount(I)I
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->e:[I

    aget p0, p0, p1

    return p0
.end method

.method public getCounts()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->e:[I

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->f:I

    iget p0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->g:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Integer;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->h:Lorg/apache/commons/math3/util/MultidimensionalCounter;

    invoke-static {v0}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->c(Lorg/apache/commons/math3/util/MultidimensionalCounter;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->e:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->h:Lorg/apache/commons/math3/util/MultidimensionalCounter;

    invoke-static {v2}, Lorg/apache/commons/math3/util/MultidimensionalCounter;->d(Lorg/apache/commons/math3/util/MultidimensionalCounter;)[I

    move-result-object v2

    aget v2, v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->e:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 7
    :cond_1
    iget v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/MultidimensionalCounter$Iterator;->next()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
