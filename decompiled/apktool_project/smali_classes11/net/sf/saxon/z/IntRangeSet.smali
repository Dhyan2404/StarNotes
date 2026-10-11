.class public Lnet/sf/saxon/z/IntRangeSet;
.super Lnet/sf/saxon/z/IntSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/z/IntRangeSet$a;
    }
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    .line 5
    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->d:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/z/IntRangeSet;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lnet/sf/saxon/z/IntRangeSet;->d:I

    .line 10
    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    .line 11
    iget v1, p1, Lnet/sf/saxon/z/IntRangeSet;->c:I

    new-array v2, v1, [I

    iput-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    .line 12
    new-array v3, v1, [I

    iput-object v3, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    .line 13
    iput v1, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    .line 14
    iget-object v3, p1, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object v1, p1, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    iget v3, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget p1, p1, Lnet/sf/saxon/z/IntRangeSet;->d:I

    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet;->d:I

    return-void
.end method

.method public constructor <init>([I[I)V
    .locals 4

    .line 17
    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lnet/sf/saxon/z/IntRangeSet;->d:I

    .line 20
    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    .line 21
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    .line 22
    iput-object p1, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    .line 23
    iput-object p2, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    .line 24
    array-length v1, p1

    iput v1, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    .line 25
    :goto_0
    iget v1, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    if-ge v0, v1, :cond_0

    .line 26
    iget v1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    aget v2, p2, v0

    aget v3, p1, v0

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array lengths differ"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lnet/sf/saxon/z/IntRangeSet;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    return p0
.end method

.method public static synthetic b(Lnet/sf/saxon/z/IntRangeSet;)[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    return-object p0
.end method

.method public static synthetic c(Lnet/sf/saxon/z/IntRangeSet;)I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    return p0
.end method

.method public static synthetic d(Lnet/sf/saxon/z/IntRangeSet;)[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    return-object p0
.end method


# virtual methods
.method public add(I)Z
    .locals 8

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->d:I

    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/z/IntRangeSet;->e(I)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    add-int/lit8 v3, v2, -0x1

    aput p1, v0, v3

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    sub-int/2addr v2, v1

    aput p1, v0, v2

    iget p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    return v1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    if-le p1, v3, :cond_2

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    add-int/2addr v3, v1

    if-ne p1, v3, :cond_1

    sub-int/2addr v0, v1

    aget p1, v2, v0

    add-int/2addr p1, v1

    aput p1, v2, v0

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntRangeSet;->e(I)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    add-int/lit8 v3, v2, -0x1

    aput p1, v0, v3

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    sub-int/2addr v2, v1

    aput p1, v0, v2

    :goto_0
    iget p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    return v1

    :cond_2
    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    if-ge p1, v4, :cond_4

    add-int/lit8 v5, v4, -0x1

    if-ne p1, v5, :cond_3

    sub-int/2addr v4, v1

    aput v4, v2, v3

    goto :goto_1

    :cond_3
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntRangeSet;->e(I)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v2, v1

    invoke-static {v0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v2, v1

    invoke-static {v0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    aput p1, v0, v3

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    aput p1, v0, v3

    :goto_1
    iget p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    return v1

    :cond_4
    move v2, v3

    :cond_5
    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    iget-object v5, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    aget v5, v5, v4

    if-ge v5, p1, :cond_6

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    aget v5, v5, v4

    if-le v5, p1, :cond_e

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    if-ne v2, v0, :cond_5

    if-lez v2, :cond_7

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    add-int/2addr v0, v1

    if-ne v0, p1, :cond_7

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_7
    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_8

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    add-int/lit8 v3, v2, 0x1

    aget v0, v0, v3

    sub-int/2addr v0, v1

    if-ne v0, p1, :cond_8

    move v2, v3

    :cond_8
    :goto_3
    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    aget v3, v0, v2

    add-int/lit8 v4, v3, 0x1

    if-ne v4, p1, :cond_a

    iget-object v4, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    add-int/lit8 v5, v2, 0x1

    aget v6, v4, v5

    sub-int/2addr v6, v1

    if-ne p1, v6, :cond_9

    aget p1, v0, v5

    aput p1, v0, v2

    add-int/lit8 p1, v2, 0x2

    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x2

    invoke-static {v4, p1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    iget v3, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, p1, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    goto :goto_4

    :cond_9
    add-int/2addr v3, v1

    aput v3, v0, v2

    :goto_4
    iget p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    return v1

    :cond_a
    iget-object v4, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    aget v5, v4, v2

    add-int/lit8 v6, v5, -0x1

    if-ne v6, p1, :cond_c

    add-int/lit8 v6, v2, -0x1

    aget v7, v0, v6

    add-int/2addr v7, v1

    if-ne p1, v7, :cond_b

    aput v3, v0, v6

    add-int/lit8 p1, v2, 0x1

    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-static {v4, p1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    iget v3, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v3, v2

    sub-int/2addr v3, v1

    invoke-static {v0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    goto :goto_5

    :cond_b
    sub-int/2addr v5, v1

    aput v5, v4, v2

    :goto_5
    iget p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    return v1

    :cond_c
    if-le p1, v3, :cond_d

    add-int/lit8 v2, v2, 0x1

    :cond_d
    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntRangeSet;->e(I)V

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    iget v4, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    aput p1, v0, v2

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    aput p1, v0, v2

    iget p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    return v1

    :cond_e
    return v3
.end method

.method public addRange(II)V
    .locals 5

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntRangeSet;->add(I)Z

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->d:I

    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lnet/sf/saxon/z/IntRangeSet;->e(I)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    add-int/lit8 v3, v2, -0x1

    aput p1, v0, v3

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    sub-int/2addr v2, v1

    aput p2, v0, v2

    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    sub-int/2addr p2, p1

    add-int/2addr p2, v1

    add-int/2addr v0, p2

    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    if-le p1, v3, :cond_3

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    add-int/2addr v3, v1

    if-ne p1, v3, :cond_2

    sub-int/2addr v0, v1

    aput p2, v2, v0

    goto :goto_0

    :cond_2
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntRangeSet;->e(I)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    add-int/lit8 v3, v2, -0x1

    aput p1, v0, v3

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    sub-int/2addr v2, v1

    aput p2, v0, v2

    :goto_0
    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    sub-int/2addr p2, p1

    add-int/2addr p2, v1

    add-int/2addr v0, p2

    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ge p2, v2, :cond_4

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntRangeSet;->e(I)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v2, v1

    invoke-static {v0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v2, v1

    invoke-static {v0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    aput p1, v0, v3

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    aput p2, p0, v3

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_1
    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    if-ge v0, v2, :cond_6

    iget-object v3, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    aget v3, v3, v0

    if-le v3, p2, :cond_5

    iget-object v3, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    if-ge v3, p1, :cond_5

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/z/IntRangeSet;->e(I)V

    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    iget v4, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-static {v2, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    aput p1, v1, v0

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    aput p2, p0, v0

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-gt p1, p2, :cond_7

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntRangeSet;->add(I)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->d:I

    return-void
.end method

.method public contains(I)Z
    .locals 5

    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-le p1, v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_2

    return v1

    :cond_2
    move v2, v1

    :cond_3
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iget-object v4, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    aget v4, v4, v3

    if-ge v4, p1, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    aget v4, v4, v3

    if-le v4, p1, :cond_5

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ne v2, v0, :cond_3

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public copy()Lnet/sf/saxon/z/IntSet;
    .locals 5

    new-instance v0, Lnet/sf/saxon/z/IntRangeSet;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntRangeSet;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    array-length v3, v2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    iput v1, v0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    iget p0, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    iput p0, v0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    return-object v0
.end method

.method public final e(I)V
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    array-length v1, v0

    if-ge v1, p1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    iget v3, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    iput-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    :cond_0
    iput p1, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/z/IntSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lnet/sf/saxon/z/IntRangeSet;

    if-eqz v0, :cond_1

    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    check-cast p1, Lnet/sf/saxon/z/IntRangeSet;

    iget v2, p1, Lnet/sf/saxon/z/IntRangeSet;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    iget-object v2, p1, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    iget-object p1, p1, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    check-cast p1, Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->containsAll(Lnet/sf/saxon/z/IntSet;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public getEndPoints()[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    return-object p0
.end method

.method public getNumberOfRanges()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    return p0
.end method

.method public getStartPoints()[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lnet/sf/saxon/z/IntRangeSet;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const v0, 0x436a89f1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    aget v2, v2, v1

    iget-object v3, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    aget v3, v3, v1

    shl-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lnet/sf/saxon/z/IntRangeSet;->d:I

    :cond_1
    iget p0, p0, Lnet/sf/saxon/z/IntRangeSet;->d:I

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMutable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntRangeSet$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntRangeSet$a;-><init>(Lnet/sf/saxon/z/IntRangeSet;)V

    return-object v0
.end method

.method public mutableCopy()Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntRangeSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "remove"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntRangeSet;->e:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/z/IntRangeSet;->c:I

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/sf/saxon/z/IntRangeSet;->a:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/sf/saxon/z/IntRangeSet;->b:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
