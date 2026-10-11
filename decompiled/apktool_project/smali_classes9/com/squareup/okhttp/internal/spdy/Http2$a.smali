.class public final Lcom/squareup/okhttp/internal/spdy/Http2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Lokio/BufferedSource;

.field public f:I

.field public g:B

.field public h:I

.field public i:I

.field public j:S


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->e:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final f()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->h:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->e:Lokio/BufferedSource;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/Http2;->d(Lokio/BufferedSource;)I

    move-result v1

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->i:I

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->f:I

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->e:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->e:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->g:B

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Http2;->b()Ljava/util/logging/Logger;

    move-result-object v2

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->h:I

    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->f:I

    iget-byte v5, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->g:B

    const/4 v6, 0x1

    invoke-static {v6, v3, v4, v1, v5}, Lcom/squareup/okhttp/internal/spdy/Http2$b;->b(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->e:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->h:I

    const/16 p0, 0x9

    if-ne v1, p0, :cond_2

    if-ne v2, v0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "TYPE_CONTINUATION streamId changed"

    invoke-static {v0, p0}, Lcom/squareup/okhttp/internal/spdy/Http2;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s != TYPE_CONTINUATION"

    invoke-static {v0, p0}, Lcom/squareup/okhttp/internal/spdy/Http2;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->i:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->e:Lokio/BufferedSource;

    iget-short v3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->j:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->j:S

    iget-byte v0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->g:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/Http2$a;->f()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->e:Lokio/BufferedSource;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    return-wide v1

    :cond_2
    iget p3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->i:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->i:I

    return-wide p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Http2$a;->e:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method
