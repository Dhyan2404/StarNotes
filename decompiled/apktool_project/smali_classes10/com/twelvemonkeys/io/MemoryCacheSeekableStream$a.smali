.class public final Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;
.super Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/io/MemoryCacheSeekableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:I = 0x2000


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4

    const-wide/16 v0, 0x2000

    div-long v0, p1, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->d:J

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    return-wide v0
.end method

.method public c()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    iget-wide v2, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->h()[B

    move-result-object v0

    iget-wide v1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    const-wide/16 v3, 0x2000

    rem-long v3, v1, v3

    long-to-int v3, v3

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public d([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    iget-wide v2, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->h()[B

    move-result-object v0

    iget-wide v1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    const-wide/16 v3, 0x2000

    rem-long/2addr v1, v3

    long-to-int v1, v1

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-long v2, p3

    iget-wide v4, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->b:J

    iget-wide v6, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    add-int v3, p2, v2

    add-int v4, v1, v2

    aget-byte v4, v0, v4

    aput-byte v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    int-to-long v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    return v2
.end method

.method public e(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Seek before flush position"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->h()[B

    move-result-object v0

    iget-wide v1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    const-wide/16 v3, 0x2000

    rem-long v3, v1, v3

    long-to-int v3, v3

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    iget-wide v3, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->b:J

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    iput-wide v1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->b:J

    :cond_0
    return-void
.end method

.method public g([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->h()[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    iget-wide v2, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    long-to-int v2, v2

    rem-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->h()[B

    move-result-object v0

    :cond_0
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    aput-byte v3, v0, v2

    iget-wide v2, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    iget-wide v0, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->b:J

    cmp-long p3, p1, v0

    if-lez p3, :cond_2

    iput-wide p1, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->b:J

    :cond_2
    return-void
.end method

.method public final h()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->c:J

    iget-wide v2, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x2000

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/16 v2, 0x2000

    :try_start_0
    iget-object v3, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->a:Ljava/util/List;

    new-array v4, v2, [B

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No more memory for cache: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/2addr p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/twelvemonkeys/io/MemoryCacheSeekableStream$a;->a:Ljava/util/List;

    long-to-int v0, v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Memory cache max size exceeded"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "StreamCache flushed before read position"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
