.class public Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->H0(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lcom/squareup/okhttp/internal/spdy/Ping;

.field public final synthetic i:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;


# direct methods
.method public varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;->i:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iput-boolean p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;->e:Z

    iput p5, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;->f:I

    iput p6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;->g:I

    iput-object p7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;->h:Lcom/squareup/okhttp/internal/spdy/Ping;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;->i:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;->e:Z

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;->f:I

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;->g:I

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$c;->h:Lcom/squareup/okhttp/internal/spdy/Ping;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->s0(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
