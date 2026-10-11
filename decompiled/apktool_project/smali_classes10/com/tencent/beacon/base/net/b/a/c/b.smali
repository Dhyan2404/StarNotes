.class public Lcom/tencent/beacon/base/net/b/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[S

.field b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/c/b;->b:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/c/b;->a:[S

    return-void
.end method

.method public static a([SIII)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz p2, :cond_0

    and-int/lit8 v3, p3, 0x1

    ushr-int/2addr p3, v1

    add-int v4, p1, v2

    .line 6
    aget-short v4, p0, v4

    invoke-static {v4, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(II)I

    move-result v4

    add-int/2addr v0, v4

    shl-int/2addr v2, v1

    or-int/2addr v2, v3

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a([SILcom/tencent/beacon/base/net/b/a/c/d;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, p3, :cond_0

    and-int/lit8 v3, p4, 0x1

    add-int v4, p1, v2

    .line 7
    invoke-virtual {p2, p0, v4, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    shl-int/2addr v2, v0

    or-int/2addr v2, v3

    shr-int/2addr p4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 6

    .line 4
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/c/b;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    ushr-int v4, p1, v0

    and-int/2addr v4, v2

    .line 5
    iget-object v5, p0, Lcom/tencent/beacon/base/net/b/a/c/b;->a:[S

    aget-short v5, v5, v3

    invoke-static {v5, v4}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(II)I

    move-result v5

    add-int/2addr v1, v5

    shl-int/2addr v3, v2

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return v1
.end method

.method public a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/c/b;->a:[S

    invoke-static {p0}, Lcom/tencent/beacon/base/net/b/a/c/c;->a([S)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/base/net/b/a/c/d;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/c/b;->b:I

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    ushr-int v3, p2, v0

    and-int/2addr v3, v1

    .line 3
    iget-object v4, p0, Lcom/tencent/beacon/base/net/b/a/c/b;->a:[S

    invoke-virtual {p1, v4, v2, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    shl-int/2addr v2, v1

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)I
    .locals 6

    .line 3
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/c/b;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-eqz v0, :cond_0

    and-int/lit8 v4, p1, 0x1

    ushr-int/2addr p1, v2

    .line 4
    iget-object v5, p0, Lcom/tencent/beacon/base/net/b/a/c/b;->a:[S

    aget-short v5, v5, v3

    invoke-static {v5, v4}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(II)I

    move-result v5

    add-int/2addr v1, v5

    shl-int/2addr v3, v2

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public b(Lcom/tencent/beacon/base/net/b/a/c/d;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    .line 1
    :goto_0
    iget v3, p0, Lcom/tencent/beacon/base/net/b/a/c/b;->b:I

    if-ge v1, v3, :cond_0

    and-int/lit8 v3, p2, 0x1

    .line 2
    iget-object v4, p0, Lcom/tencent/beacon/base/net/b/a/c/b;->a:[S

    invoke-virtual {p1, v4, v2, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    shl-int/2addr v2, v0

    or-int/2addr v2, v3

    shr-int/2addr p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
