.class public Lcom/dropbox/core/http/OkHttp3Requestor$c;
.super Lokhttp3/RequestBody;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttp3Requestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/OkHttp3Requestor$c$a;
    }
.end annotation


# instance fields
.field public final e:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

.field public f:Lcom/dropbox/core/util/IOUtil$ProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    new-instance v0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;-><init>()V

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$c;->e:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    return-void
.end method

.method public static synthetic f(Lcom/dropbox/core/http/OkHttp3Requestor$c;)Lcom/dropbox/core/util/IOUtil$ProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$c;->f:Lcom/dropbox/core/util/IOUtil$ProgressListener;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$c;->e:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public j()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$c;->e:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public w(Lcom/dropbox/core/util/IOUtil$ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$c;->f:Lcom/dropbox/core/util/IOUtil$ProgressListener;

    return-void
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/dropbox/core/http/OkHttp3Requestor$c$a;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/http/OkHttp3Requestor$c$a;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor$c;Lokio/Sink;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$c;->e:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->writeTo(Lokio/BufferedSink;)V

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$c;->close()V

    return-void
.end method
