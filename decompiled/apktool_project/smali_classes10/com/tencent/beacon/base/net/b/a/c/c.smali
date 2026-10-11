.class public Lcom/tencent/beacon/base/net/b/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([S)V
    .locals 2

    const/4 v0, 0x0

    .line 22
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/16 v1, 0x400

    .line 23
    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    .line 6
    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->b:I

    sub-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1f

    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v1

    sub-int/2addr v2, v4

    .line 7
    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->b:I

    shl-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v3, v3, 0x1

    or-int/2addr v0, v3

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    shl-int/lit8 v1, v2, 0x8

    .line 8
    iget-object v2, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->c:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->b:I

    .line 9
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public a([SI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    aget-short v0, p1, p2

    .line 11
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    ushr-int/lit8 v2, v1, 0xb

    mul-int/2addr v2, v0

    .line 12
    iget v3, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->b:I

    const/high16 v4, -0x80000000

    xor-int v5, v3, v4

    xor-int/2addr v4, v2

    const/high16 v6, -0x1000000

    if-ge v5, v4, :cond_1

    .line 13
    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    rsub-int v1, v0, 0x800

    ushr-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    int-to-short v0, v0

    .line 14
    aput-short v0, p1, p2

    and-int p1, v2, v6

    if-nez p1, :cond_0

    shl-int/lit8 p1, v3, 0x8

    .line 15
    iget-object p2, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->c:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->b:I

    .line 16
    iget p1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    shl-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    sub-int/2addr v1, v2

    .line 17
    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    sub-int/2addr v3, v2

    .line 18
    iput v3, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->b:I

    ushr-int/lit8 v2, v0, 0x5

    sub-int/2addr v0, v2

    int-to-short v0, v0

    .line 19
    aput-short v0, p1, p2

    and-int p1, v1, v6

    if-nez p1, :cond_2

    shl-int/lit8 p1, v3, 0x8

    .line 20
    iget-object p2, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->c:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->b:I

    .line 21
    iget p1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    shl-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->b:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->a:I

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 4
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->b:I

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->c:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->c:Ljava/io/InputStream;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/base/net/b/a/c/c;->c:Ljava/io/InputStream;

    return-void
.end method
