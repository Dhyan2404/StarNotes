.class public Lcom/tencent/beacon/base/net/b/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field b:Ljava/io/InputStream;

.field c:I

.field d:Z

.field e:I

.field public f:I

.field public g:I

.field public h:I

.field i:I

.field j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->a:[B

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->f:I

    iget p0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->h:I

    add-int/2addr v1, p0

    add-int/2addr v1, p1

    aget-byte p0, v0, v1

    return p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->a:[B

    return-void
.end method

.method public a(III)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->i:I

    .line 3
    iput p2, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->j:I

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    .line 4
    iget-object p3, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->a:[B

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->g:I

    if-eq p3, p1, :cond_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/a/b;->a()V

    .line 6
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->g:I

    .line 7
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->a:[B

    .line 8
    :cond_1
    iget p1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->g:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->e:I

    return-void
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->b:Ljava/io/InputStream;

    return-void
.end method

.method public b()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->k:I

    iget p0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->h:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public b(III)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->h:I

    add-int/2addr v0, p1

    add-int v1, v0, p3

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->k:I

    if-le v1, v2, :cond_0

    sub-int p3, v2, v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 3
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->f:I

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->h:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->a:[B

    add-int v2, v0, p1

    aget-byte v3, v1, v2

    sub-int/2addr v2, p2

    aget-byte v1, v1, v2

    if-ne v3, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public b(I)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->f:I

    .line 7
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->c:I

    .line 8
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->h:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->h:I

    .line 9
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->k:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->k:I

    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->f:I

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->h:I

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->k:I

    iput-boolean v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->d:Z

    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/a/b;->f()V

    return-void
.end method

.method public d()V
    .locals 5

    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->f:I

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->h:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->i:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->k:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->a:[B

    add-int v4, v1, v2

    aget-byte v4, v3, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->f:I

    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->h:I

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->c:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->f:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->e:I

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/a/b;->d()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/a/b;->f()V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->f:I

    rsub-int/lit8 v1, v0, 0x0

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->k:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->b:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->a:[B

    add-int/2addr v0, v2

    invoke-virtual {v3, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->k:I

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->c:I

    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->f:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->e:I

    if-le v0, v2, :cond_2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->c:I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->d:Z

    return-void

    :cond_3
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->k:I

    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->h:I

    iget v2, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->j:I

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->c:I

    goto :goto_0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/base/net/b/a/a/b;->b:Ljava/io/InputStream;

    return-void
.end method
