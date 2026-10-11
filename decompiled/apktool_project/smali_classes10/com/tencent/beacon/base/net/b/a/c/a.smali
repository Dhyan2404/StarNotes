.class public Lcom/tencent/beacon/base/net/b/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[S

.field b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/c/a;->b:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/c/a;->a:[S

    return-void
.end method

.method public static a([SILcom/tencent/beacon/base/net/b/a/c/c;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v4, p1, v3

    .line 5
    invoke-virtual {p2, p0, v4}, Lcom/tencent/beacon/base/net/b/a/c/c;->a([SI)I

    move-result v4

    shl-int/2addr v3, v0

    add-int/2addr v3, v4

    shl-int/2addr v4, v1

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/base/net/b/a/c/c;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/c/a;->b:I

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz v0, :cond_0

    shl-int/lit8 v3, v2, 0x1

    .line 3
    iget-object v4, p0, Lcom/tencent/beacon/base/net/b/a/c/a;->a:[S

    invoke-virtual {p1, v4, v2}, Lcom/tencent/beacon/base/net/b/a/c/c;->a([SI)I

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p0, p0, Lcom/tencent/beacon/base/net/b/a/c/a;->b:I

    shl-int p0, v1, p0

    sub-int/2addr v2, p0

    return v2
.end method

.method public a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/c/a;->a:[S

    invoke-static {p0}, Lcom/tencent/beacon/base/net/b/a/c/c;->a([S)V

    return-void
.end method

.method public b(Lcom/tencent/beacon/base/net/b/a/c/c;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    iget v4, p0, Lcom/tencent/beacon/base/net/b/a/c/a;->b:I

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/tencent/beacon/base/net/b/a/c/a;->a:[S

    invoke-virtual {p1, v4, v3}, Lcom/tencent/beacon/base/net/b/a/c/c;->a([SI)I

    move-result v4

    shl-int/2addr v3, v0

    add-int/2addr v3, v4

    shl-int/2addr v4, v1

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
