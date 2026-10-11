.class Lcom/tencent/beacon/base/net/b/a/b/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/base/net/b/a/b/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:[S

.field final synthetic b:Lcom/tencent/beacon/base/net/b/a/b/b$b;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/base/net/b/a/b/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/b$b$a;->b:Lcom/tencent/beacon/base/net/b/a/b/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x300

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/b/b$b$a;->a:[S

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/beacon/base/net/b/a/c/c;)B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 2
    iget-object v2, p0, Lcom/tencent/beacon/base/net/b/a/b/b$b$a;->a:[S

    invoke-virtual {p1, v2, v0}, Lcom/tencent/beacon/base/net/b/a/c/c;->a([SI)I

    move-result v0

    or-int/2addr v0, v1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    int-to-byte p0, v0

    return p0
.end method

.method public a(Lcom/tencent/beacon/base/net/b/a/c/c;B)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    shr-int/lit8 v2, p2, 0x7

    and-int/2addr v2, v0

    shl-int/2addr p2, v0

    int-to-byte p2, p2

    .line 3
    iget-object v3, p0, Lcom/tencent/beacon/base/net/b/a/b/b$b$a;->a:[S

    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Lcom/tencent/beacon/base/net/b/a/c/c;->a([SI)I

    move-result v3

    shl-int/2addr v1, v0

    or-int/2addr v1, v3

    const/16 v4, 0x100

    if-eq v2, v3, :cond_1

    :goto_0
    if-ge v1, v4, :cond_2

    shl-int/lit8 p2, v1, 0x1

    .line 4
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/b/b$b$a;->a:[S

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/base/net/b/a/c/c;->a([SI)I

    move-result v0

    or-int v1, p2, v0

    goto :goto_0

    :cond_1
    if-lt v1, v4, :cond_0

    :cond_2
    int-to-byte p0, v1

    return p0
.end method

.method public a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/b/b$b$a;->a:[S

    invoke-static {p0}, Lcom/tencent/beacon/base/net/b/a/c/c;->a([S)V

    return-void
.end method
