.class public Lorg/apache/commons/math3/util/Combinations$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Combinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[I>;"
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:[I

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$b;->g:Z

    iput p2, p0, Lorg/apache/commons/math3/util/Combinations$b;->e:I

    add-int/lit8 v1, p2, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/commons/math3/util/Combinations$b;->f:[I

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-lt p2, p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-gt v0, p2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$b;->f:[I

    add-int/lit8 v3, v0, -0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/util/Combinations$b;->f:[I

    add-int/lit8 v2, p2, 0x1

    aput p1, v0, v2

    add-int/lit8 p1, p2, 0x2

    aput v1, v0, p1

    iput p2, p0, Lorg/apache/commons/math3/util/Combinations$b;->h:I

    return-void

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lorg/apache/commons/math3/util/Combinations$b;->g:Z

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 8

    iget-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$b;->g:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/apache/commons/math3/util/Combinations$b;->e:I

    new-array v1, v0, [I

    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$b;->f:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/commons/math3/util/Combinations$b;->h:I

    if-lez v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$b;->f:[I

    aput v0, v2, v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/math3/util/Combinations$b;->h:I

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/util/Combinations$b;->f:[I

    aget v2, v0, v3

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x2

    aget v7, v0, v6

    if-ge v5, v7, :cond_1

    add-int/2addr v2, v3

    aput v2, v0, v3

    return-object v1

    :cond_1
    iput v6, p0, Lorg/apache/commons/math3/util/Combinations$b;->h:I

    move v0, v4

    move v2, v0

    :goto_0
    if-nez v0, :cond_3

    iget-object v2, p0, Lorg/apache/commons/math3/util/Combinations$b;->f:[I

    iget v5, p0, Lorg/apache/commons/math3/util/Combinations$b;->h:I

    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v5, -0x2

    aput v7, v2, v6

    aget v6, v2, v5

    add-int/2addr v6, v3

    add-int/lit8 v7, v5, 0x1

    aget v2, v2, v7

    if-ne v6, v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/commons/math3/util/Combinations$b;->h:I

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    move v2, v6

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/apache/commons/math3/util/Combinations$b;->h:I

    iget v5, p0, Lorg/apache/commons/math3/util/Combinations$b;->e:I

    if-le v0, v5, :cond_4

    iput-boolean v4, p0, Lorg/apache/commons/math3/util/Combinations$b;->g:Z

    return-object v1

    :cond_4
    iget-object v4, p0, Lorg/apache/commons/math3/util/Combinations$b;->f:[I

    aput v2, v4, v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/math3/util/Combinations$b;->h:I

    return-object v1

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/util/Combinations$b;->g:Z

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Combinations$b;->a()[I

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
