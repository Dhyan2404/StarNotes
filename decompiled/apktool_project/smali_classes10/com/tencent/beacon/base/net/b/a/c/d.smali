.class public Lcom/tencent/beacon/base/net/b/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[I


# instance fields
.field b:Ljava/io/OutputStream;

.field c:J

.field d:I

.field e:I

.field f:I

.field g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x200

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/beacon/base/net/b/a/c/d;->a:[I

    const/16 v0, 0x8

    :goto_0
    if-ltz v0, :cond_1

    rsub-int/lit8 v1, v0, 0x9

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    shl-int v4, v3, v2

    shl-int v1, v3, v1

    :goto_1
    if-ge v4, v1, :cond_0

    sget-object v3, Lcom/tencent/beacon/base/net/b/a/c/d;->a:[I

    shl-int/lit8 v5, v0, 0x6

    sub-int v6, v1, v4

    shl-int/lit8 v6, v6, 0x6

    ushr-int/2addr v6, v2

    add-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    .line 19
    sget-object v0, Lcom/tencent/beacon/base/net/b/a/c/d;->a:[I

    ushr-int/lit8 p0, p0, 0x2

    aget p0, v0, p0

    return p0
.end method

.method public static a([S)V
    .locals 2

    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/16 v1, 0x400

    .line 8
    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(I)I
    .locals 1

    .line 3
    sget-object v0, Lcom/tencent/beacon/base/net/b/a/c/d;->a:[I

    rsub-int p0, p0, 0x800

    ushr-int/lit8 p0, p0, 0x2

    aget p0, v0, p0

    return p0
.end method

.method public static b(II)I
    .locals 1

    .line 2
    sget-object v0, Lcom/tencent/beacon/base/net/b/a/c/d;->a:[I

    sub-int/2addr p0, p1

    neg-int p1, p1

    xor-int/2addr p0, p1

    and-int/lit16 p0, p0, 0x7ff

    ushr-int/lit8 p0, p0, 0x2

    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/c/d;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_2

    .line 3
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->d:I

    ushr-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->d:I

    ushr-int v2, p1, p2

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_0

    .line 4
    iget-wide v2, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->c:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->c:J

    :cond_0
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    shl-int/lit8 v1, v1, 0x8

    .line 5
    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->d:I

    .line 6
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/c/d;->f()V

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public a([SII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    aget-short v0, p1, p2

    .line 10
    iget v1, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->d:I

    ushr-int/lit8 v2, v1, 0xb

    mul-int/2addr v2, v0

    if-nez p3, :cond_0

    .line 11
    iput v2, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->d:I

    rsub-int p3, v0, 0x800

    ushr-int/lit8 p3, p3, 0x5

    add-int/2addr v0, p3

    int-to-short p3, v0

    .line 12
    aput-short p3, p1, p2

    goto :goto_0

    .line 13
    :cond_0
    iget-wide v3, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->c:J

    int-to-long v5, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->c:J

    sub-int/2addr v1, v2

    .line 14
    iput v1, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->d:I

    ushr-int/lit8 p3, v0, 0x5

    sub-int/2addr v0, p3

    int-to-short p3, v0

    .line 15
    aput-short p3, p1, p2

    .line 16
    :goto_0
    iget p1, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->d:I

    const/high16 p2, -0x1000000

    and-int/2addr p2, p1

    if-nez p2, :cond_1

    shl-int/lit8 p1, p1, 0x8

    .line 17
    iput p1, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->d:I

    .line 18
    invoke-virtual {p0}, Lcom/tencent/beacon/base/net/b/a/c/d;->f()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->b:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public c()J
    .locals 4

    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->e:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->g:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public d()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->g:J

    iput-wide v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->c:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->f:I

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public f()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->c:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    if-nez v2, :cond_0

    const-wide v3, 0xff000000L

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->g:J

    iget v3, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->e:I

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->g:J

    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->f:I

    :goto_0
    iget-object v1, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->b:Ljava/io/OutputStream;

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->e:I

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->c:J

    long-to-int v0, v0

    ushr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->f:I

    :cond_1
    iget v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->e:I

    iget-wide v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->c:J

    const-wide/32 v2, 0xffffff

    and-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/beacon/base/net/b/a/c/d;->c:J

    return-void

    :cond_2
    const/16 v0, 0xff

    goto :goto_0
.end method
