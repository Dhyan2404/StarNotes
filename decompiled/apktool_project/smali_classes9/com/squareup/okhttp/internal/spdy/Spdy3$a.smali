.class public final Lcom/squareup/okhttp/internal/spdy/Spdy3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Lokio/BufferedSource;

.field public final f:Z

.field public final g:Lcom/sunia/HTREnginev2/gsj;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    new-instance v0, Lcom/sunia/HTREnginev2/gsj;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/gsj;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->g:Lcom/sunia/HTREnginev2/gsj;

    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->f:Z

    return-void
.end method

.method public static varargs f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final H(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x4

    if-ne p3, p2, :cond_2

    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->f:Z

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-ne p0, p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-interface {p1, v1, p2, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_PING length: %d != 4"

    invoke-static {p1, p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final I(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x8

    if-ne p3, p2, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromSpdy3Rst(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p1, p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_RST_STREAM length: %d != 8"

    invoke-static {p1, p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final M(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    if-ne p3, v1, :cond_2

    new-instance p3, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {p3}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v5, v3

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v3, v6

    invoke-virtual {p3, v3, v5, v4}, Lcom/squareup/okhttp/internal/spdy/Settings;->u(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    and-int/2addr p2, p0

    if-eqz p2, :cond_1

    move v1, p0

    :cond_1
    invoke-interface {p1, v1, p3}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V

    return-void

    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    invoke-static {p1, p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->g:Lcom/sunia/HTREnginev2/gsj;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gsj;->c()V

    return-void
.end method

.method public final e0(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v5, v0, v1

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->g:Lcom/sunia/HTREnginev2/gsj;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {p0, p3}, Lcom/sunia/HTREnginev2/gsj;->f(I)Ljava/util/List;

    move-result-object v7

    const/4 p0, 0x1

    and-int/2addr p2, p0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v4, p0

    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    return-void
.end method

.method public final f0(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int v6, v0, v2

    and-int v7, v1, v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readShort()S

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->g:Lcom/sunia/HTREnginev2/gsj;

    add-int/lit8 p3, p3, -0xa

    invoke-virtual {p0, p3}, Lcom/sunia/HTREnginev2/gsj;->f(I)Ljava/util/List;

    move-result-object v8

    and-int/lit8 p0, p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    sget-object v9, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    return-void
.end method

.method public final g0(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x8

    if-ne p3, p2, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    and-int/2addr p0, p3

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-interface {p1, p2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IJ)V

    return-void

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "windowSizeIncrement was 0"

    invoke-static {p1, p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_WINDOW_UPDATE length: %d != 8"

    invoke-static {p1, p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final j(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x8

    if-ne p3, p2, :cond_1

    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    const p3, 0x7fffffff

    and-int/2addr p2, p3

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    invoke-static {p0}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromSpdyGoAway(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object p3

    if-eqz p3, :cond_0

    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-interface {p1, p2, p3, p0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lokio/ByteString;)V

    return-void

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p1, p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TYPE_GOAWAY length: %d != 8"

    invoke-static {p1, p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const/high16 v5, -0x1000000

    and-int/2addr v5, v2

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v2, v6

    if-eqz v3, :cond_2

    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    const v3, 0xffff

    and-int/2addr v1, v3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    int-to-long v0, v2

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    return v4

    :pswitch_1
    invoke-virtual {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->g0(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    return v4

    :pswitch_2
    invoke-virtual {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->w(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    return v4

    :pswitch_3
    invoke-virtual {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->j(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    return v4

    :pswitch_4
    invoke-virtual {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->H(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    return v4

    :pswitch_5
    invoke-virtual {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->M(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    return v4

    :pswitch_6
    invoke-virtual {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->I(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    return v4

    :pswitch_7
    invoke-virtual {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e0(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    return v4

    :pswitch_8
    invoke-virtual {p0, p1, v5, v2}, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->f0(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    return v4

    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version != 3: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const v3, 0x7fffffff

    and-int/2addr v1, v3

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_3

    move v0, v4

    :cond_3
    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    return v4

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 0

    return-void
.end method

.method public final w(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->e:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    const v0, 0x7fffffff

    and-int v4, p2, v0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$a;->g:Lcom/sunia/HTREnginev2/gsj;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {p0, p3}, Lcom/sunia/HTREnginev2/gsj;->f(I)Ljava/util/List;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    sget-object v7, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    return-void
.end method
