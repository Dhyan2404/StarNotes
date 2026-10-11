.class public interface abstract Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler$a;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler$a;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;->REFUSE_INCOMING_STREAMS:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    return-void
.end method


# virtual methods
.method public abstract receive(Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
