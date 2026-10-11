.class public Lcom/tencent/beacon/base/net/b/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[B

.field b:I

.field c:I

.field d:I

.field e:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->d:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->e:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->a:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 12
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->c:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    .line 14
    :cond_1
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->d:I

    return-void
.end method

.method public a(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->a:[B

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    aput-byte p1, v0, v1

    .line 21
    iget p1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->c:I

    if-lt v2, p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/a/c;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->a:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->c:I

    if-eq v0, p1, :cond_1

    .line 2
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->a:[B

    .line 3
    :cond_1
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->c:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    .line 5
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->d:I

    return-void
.end method

.method public a(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 16
    iget p1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->c:I

    add-int/2addr v0, p1

    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 17
    iget p1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->c:I

    if-lt v0, p1, :cond_1

    const/4 v0, 0x0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->a:[B

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    aput-byte v0, v1, v2

    if-lt v3, p1, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/a/c;->a()V

    :cond_2
    add-int/lit8 p2, p2, -0x1

    move v0, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/a/c;->b()V

    .line 7
    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->e:Ljava/io/OutputStream;

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->d:I

    .line 9
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    :cond_0
    return-void
.end method

.method public b(I)B
    .locals 1

    .line 3
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->b:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 4
    iget p1, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->c:I

    add-int/2addr v0, p1

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->a:[B

    aget-byte p0, p0, v0

    return p0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/a/c;->a()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/beacon/base/net/b/a/a/c;->e:Ljava/io/OutputStream;

    return-void
.end method
