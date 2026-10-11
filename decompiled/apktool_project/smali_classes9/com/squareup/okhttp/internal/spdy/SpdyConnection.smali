.class public final Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h;,
        Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
    }
.end annotation


# static fields
.field public static final O:Ljava/util/concurrent/ExecutorService;

.field public static final Q:I = 0x1000000

.field public static final synthetic Z:Z


# instance fields
.field public final J:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/squareup/okhttp/Protocol;

.field public final f:Z

.field public final g:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:Z

.field public m:J

.field public final n:Ljava/util/concurrent/ExecutorService;

.field public o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/Ping;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/squareup/okhttp/internal/spdy/PushObserver;

.field public q:I

.field public r:J

.field public s:J

.field public final t:Lcom/squareup/okhttp/internal/spdy/Settings;

.field public final u:Lcom/squareup/okhttp/internal/spdy/Settings;

.field public v:Z

.field public final w:Lcom/squareup/okhttp/internal/spdy/Variant;

.field public final x:Ljava/net/Socket;

.field public final y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

.field public final z:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp SpdyConnection"

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/squareup/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->O:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->m:J

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->r:J

    .line 6
    new-instance v1, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->t:Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 7
    new-instance v2, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    iput-object v2, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->u:Lcom/squareup/okhttp/internal/spdy/Settings;

    const/4 v3, 0x0

    .line 8
    iput-boolean v3, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->v:Z

    .line 9
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->J:Ljava/util/Set;

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->a(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    iput-object v4, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->e:Lcom/squareup/okhttp/Protocol;

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->b(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/internal/spdy/PushObserver;

    move-result-object v5

    iput-object v5, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->p:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->c(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->f:Z

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->d(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    move-result-object v6

    iput-object v6, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->g:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->c(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    iput v6, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->k:I

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->c(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v4, v6, :cond_1

    .line 16
    iget v6, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->k:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->k:I

    .line 17
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->c(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v8, v7

    :cond_2
    iput v8, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->q:I

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->c(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v6

    const/4 v8, 0x7

    if-eqz v6, :cond_3

    const/high16 v6, 0x1000000

    .line 19
    invoke-virtual {v1, v8, v3, v6}, Lcom/squareup/okhttp/internal/spdy/Settings;->u(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 20
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->e(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->i:Ljava/lang/String;

    .line 21
    sget-object v6, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    const/4 v9, 0x0

    if-ne v4, v6, :cond_4

    .line 22
    new-instance v4, Lcom/squareup/okhttp/internal/spdy/Http2;

    invoke-direct {v4}, Lcom/squareup/okhttp/internal/spdy/Http2;-><init>()V

    iput-object v4, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->w:Lcom/squareup/okhttp/internal/spdy/Variant;

    .line 23
    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x3c

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v6, "OkHttp %s Push Observer"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 24
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/squareup/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v17

    move-object v10, v4

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v4, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->n:Ljava/util/concurrent/ExecutorService;

    const v1, 0xffff

    .line 25
    invoke-virtual {v2, v8, v3, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->u(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    const/4 v1, 0x5

    const/16 v4, 0x4000

    .line 26
    invoke-virtual {v2, v1, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Settings;->u(III)Lcom/squareup/okhttp/internal/spdy/Settings;

    goto :goto_1

    .line 27
    :cond_4
    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v4, v1, :cond_5

    .line 28
    new-instance v1, Lcom/squareup/okhttp/internal/spdy/Spdy3;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/spdy/Spdy3;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->w:Lcom/squareup/okhttp/internal/spdy/Variant;

    .line 29
    iput-object v9, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->n:Ljava/util/concurrent/ExecutorService;

    :goto_1
    const/high16 v1, 0x10000

    .line 30
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->j(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->s:J

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->f(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->x:Ljava/net/Socket;

    .line 32
    iget-object v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->w:Lcom/squareup/okhttp/internal/spdy/Variant;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->f(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/squareup/okhttp/internal/spdy/Variant;->newWriter(Lokio/BufferedSink;Z)Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    .line 33
    new-instance v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h;

    invoke-direct {v1, v0, v9}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$a;)V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->z:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h;

    .line 34
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 35
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)V

    return-void
.end method

.method public static synthetic H(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->z0(ILjava/util/List;Z)V

    return-void
.end method

.method public static synthetic I(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->l:Z

    return p0
.end method

.method public static synthetic M(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->l:Z

    return p1
.end method

.method public static synthetic e0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->j:I

    return p0
.end method

.method public static synthetic f(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->v0(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method public static synthetic f0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)I
    .locals 0

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->j:I

    return p1
.end method

.method public static synthetic g0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->k:I

    return p0
.end method

.method public static synthetic h0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic i0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->g:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    return-object p0
.end method

.method public static synthetic j(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->C0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic j0()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->O:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static synthetic k0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->B0(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method public static synthetic l0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->v:Z

    return p0
.end method

.method public static synthetic m0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->v:Z

    return p1
.end method

.method public static synthetic n0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/Ping;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->D0(I)Lcom/squareup/okhttp/internal/spdy/Ping;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->H0(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    return-void
.end method

.method public static synthetic p0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->A0(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic q0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/PushObserver;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->p:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    return-object p0
.end method

.method public static synthetic r0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->J:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic s0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->G0(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    return-void
.end method

.method public static synthetic t0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic w(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ILokio/BufferedSource;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y0(ILokio/BufferedSource;IZ)V

    return-void
.end method


# virtual methods
.method public final A0(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->J:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->K0(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->J:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$d;

    const-string v3, "OkHttp %s Push Request[%s]"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->i:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v4

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$d;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final B0(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$g;

    const-string v3, "OkHttp %s Push Reset[%s]"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->i:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v4

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$g;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final C0(I)Z
    .locals 1

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->e:Lcom/squareup/okhttp/Protocol;

    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final declared-synchronized D0(I)Lcom/squareup/okhttp/internal/spdy/Ping;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/spdy/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized E0(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->F0(Z)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized F0(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final G0(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    monitor-enter v0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lcom/squareup/okhttp/internal/spdy/Ping;->c()V

    :cond_0
    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->ping(ZII)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final H0(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 10

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->O:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;

    const-string v3, "OkHttp %s ping %08x%08x"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->i:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public I0(IZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {p0, p2, p1, p3}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->synReply(ZILjava/util/List;)V

    return-void
.end method

.method public J0(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method public K0(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 8

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->O:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$a;

    const-string v3, "OkHttp %s stream %d"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->i:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v4

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$a;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public L0(IJ)V
    .locals 9

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->O:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$b;

    const-string v3, "OkHttp Window Update %s stream %d"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->i:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v4

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$b;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->v0(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {p0}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->flush()V

    return-void
.end method

.method public declared-synchronized getIdleStartTimeNs()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->e:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method

.method public declared-synchronized isIdle()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->x0(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized openStreamCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lcom/squareup/okhttp/internal/spdy/Ping;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Ping;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Ping;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->l:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->q:I

    add-int/lit8 v2, v1, 0x2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->q:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->o:Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->o:Ljava/util/Map;

    :cond_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->G0(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pushStream(ILjava/util/List;Z)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;Z)",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->e:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->x0(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "protocol != HTTP_2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Client cannot push requests."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendConnectionPreface()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->connectionPreface()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->t:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->settings(Lcom/squareup/okhttp/internal/spdy/Settings;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->t:Lcom/squareup/okhttp/internal/spdy/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/Settings;->j(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    sub-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->windowUpdate(IJ)V

    :cond_0
    return-void
.end method

.method public shutdown(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->l:Z

    if-eqz v1, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->l:Z

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->j:I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    sget-object v2, Lcom/squareup/okhttp/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {p0, v1, p1, v2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public u0(J)V
    .locals 2

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->s:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->s:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public final v0(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->F0(Z)V

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->o:Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->o:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/squareup/okhttp/internal/spdy/Ping;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/squareup/okhttp/internal/spdy/Ping;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->o:Ljava/util/Map;

    move-object v0, v3

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    :try_start_2
    invoke-virtual {v5, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    if-eqz p1, :cond_2

    move-object p1, v5

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    array-length p2, v0

    :goto_4
    if-ge v2, p2, :cond_4

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/Ping;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    :try_start_3
    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    if-nez p1, :cond_5

    move-object p1, p2

    :cond_5
    :goto_5
    :try_start_4
    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->x:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    move-object p1, p0

    :goto_6
    if-nez p1, :cond_6

    return-void

    :cond_6
    throw p1

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized w0(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeData(IZLokio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {p0, p2, p1, p3, v3}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->data(ZILokio/Buffer;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->s:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v4}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->maxDataLength()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->s:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->s:J

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-interface {v4, v5, p1, p3, v2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->data(ZILokio/Buffer;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public final x0(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    xor-int/lit8 p4, p4, 0x1

    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    monitor-enter v7

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->l:Z

    if-nez v0, :cond_4

    iget v8, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->k:I

    add-int/lit8 v0, v8, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->k:I

    new-instance v9, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;-><init>(ILcom/squareup/okhttp/internal/spdy/SpdyConnection;ZZLjava/util/List;)V

    invoke-virtual {v9}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->h:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->F0(Z)V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    move v1, v6

    move v2, p4

    move v3, v8

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->synStream(ZZIILjava/util/List;)V

    goto :goto_0

    :cond_1
    iget-boolean p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->f:Z

    if-nez p4, :cond_3

    iget-object p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {p4, p1, v8, p2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->pushPromise(IILjava/util/List;)V

    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p3, :cond_2

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {p0}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->flush()V

    :cond_2
    return-object v9

    :cond_3
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "shutdown"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public final y0(ILokio/BufferedSource;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    invoke-interface {p2, v5, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$f;

    const-string v2, "OkHttp %s Push Data[%s]"

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->i:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$f;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z0(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->n:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$e;

    const-string v3, "OkHttp %s Push Headers[%s]"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->i:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v4

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$e;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
