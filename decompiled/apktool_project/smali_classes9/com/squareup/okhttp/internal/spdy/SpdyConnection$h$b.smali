.class public Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h$b;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h;->a(Lcom/squareup/okhttp/internal/spdy/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/squareup/okhttp/internal/spdy/Settings;

.field public final synthetic f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h;


# direct methods
.method public varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/Settings;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h$b;->f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h$b;->e:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h$b;->f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h;->f:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->y:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    iget-object p0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$h$b;->e:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-interface {v0, p0}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->ackSettings(Lcom/squareup/okhttp/internal/spdy/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
