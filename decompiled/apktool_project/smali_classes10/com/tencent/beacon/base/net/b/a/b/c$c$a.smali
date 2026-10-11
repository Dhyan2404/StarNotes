.class Lcom/tencent/beacon/base/net/b/a/b/c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/base/net/b/a/b/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:[S

.field final synthetic b:Lcom/tencent/beacon/base/net/b/a/b/c$c;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/base/net/b/a/b/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->b:Lcom/tencent/beacon/base/net/b/a/b/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x300

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a:[S

    return-void
.end method


# virtual methods
.method public a(ZBB)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eqz p1, :cond_1

    move p1, v1

    :cond_0
    if-ltz v2, :cond_2

    shr-int v3, p2, v2

    and-int/2addr v3, v1

    shr-int v4, p3, v2

    and-int/2addr v4, v1

    .line 4
    iget-object v5, p0, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a:[S

    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v6, p1

    aget-short v5, v5, v6

    invoke-static {v5, v4}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(II)I

    move-result v5

    add-int/2addr v0, v5

    shl-int/lit8 p1, p1, 0x1

    or-int/2addr p1, v4

    add-int/lit8 v2, v2, -0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_0
    if-ltz v2, :cond_3

    shr-int p2, p3, v2

    and-int/2addr p2, v1

    .line 5
    iget-object v3, p0, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a:[S

    aget-short v3, v3, p1

    invoke-static {v3, p2}, Lcom/tencent/beacon/base/net/b/a/c/d;->b(II)I

    move-result v3

    add-int/2addr v0, v3

    shl-int/2addr p1, v1

    or-int/2addr p1, p2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a:[S

    invoke-static {p0}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([S)V

    return-void
.end method

.method public a(Lcom/tencent/beacon/base/net/b/a/c/d;B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x7

    move v2, v0

    :goto_0
    if-ltz v1, :cond_0

    shr-int v3, p2, v1

    and-int/2addr v3, v0

    .line 2
    iget-object v4, p0, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a:[S

    invoke-virtual {p1, v4, v2, v3}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    shl-int/2addr v2, v0

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/beacon/base/net/b/a/c/d;BB)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x7

    move v2, v0

    move v3, v2

    :goto_0
    if-ltz v1, :cond_2

    shr-int v4, p3, v1

    and-int/2addr v4, v0

    if-eqz v2, :cond_1

    shr-int v2, p2, v1

    and-int/2addr v2, v0

    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v3

    if-ne v2, v4, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move v5, v3

    .line 3
    :goto_1
    iget-object v6, p0, Lcom/tencent/beacon/base/net/b/a/b/c$c$a;->a:[S

    invoke-virtual {p1, v6, v5, v4}, Lcom/tencent/beacon/base/net/b/a/c/d;->a([SII)V

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
