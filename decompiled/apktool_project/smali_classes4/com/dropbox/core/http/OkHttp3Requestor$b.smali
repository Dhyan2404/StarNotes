.class public Lcom/dropbox/core/http/OkHttp3Requestor$b;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttp3Requestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lokhttp3/Request$Builder;

.field public c:Lokhttp3/RequestBody;

.field public d:Lokhttp3/Call;

.field public e:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

.field public f:Z

.field public g:Z

.field public final synthetic h:Lcom/dropbox/core/http/OkHttp3Requestor;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/OkHttp3Requestor;Ljava/lang/String;Lokhttp3/Request$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->h:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    iput-object p2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->b:Lokhttp3/Request$Builder;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->c:Lokhttp3/RequestBody;

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->d:Lokhttp3/Call;

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->e:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->f:Z

    iput-boolean p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->g:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->c:Lokhttp3/RequestBody;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Request body already set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->d:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->g:Z

    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$b;->close()V

    return-void
.end method

.method public final b(Lokhttp3/RequestBody;)V
    .locals 2

    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$b;->a()V

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->c:Lokhttp3/RequestBody;

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->b:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    iget-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->h:Lcom/dropbox/core/http/OkHttp3Requestor;

    iget-object p0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->b:Lokhttp3/Request$Builder;

    invoke-virtual {p1, p0}, Lcom/dropbox/core/http/OkHttp3Requestor;->configureRequest(Lokhttp3/Request$Builder;)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->c:Lokhttp3/RequestBody;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->f:Z

    return-void
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->c:Lokhttp3/RequestBody;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$b;->upload([B)V

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->e:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$b;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->e:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;->getResponse()Lokhttp3/Response;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->h:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->a(Lcom/dropbox/core/http/OkHttp3Requestor;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->b:Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->d:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->h:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->interceptResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->b(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already aborted"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 3

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->c:Lokhttp3/RequestBody;

    instance-of v1, v0, Lcom/dropbox/core/http/OkHttp3Requestor$c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/dropbox/core/http/OkHttp3Requestor$c;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$c;->j()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/dropbox/core/http/OkHttp3Requestor$c;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$c;-><init>()V

    iget-object v1, p0, Lcom/dropbox/core/http/HttpRequestor$Uploader;->progressListener:Lcom/dropbox/core/util/IOUtil$ProgressListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/http/OkHttp3Requestor$c;->w(Lcom/dropbox/core/util/IOUtil$ProgressListener;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttp3Requestor$b;->b(Lokhttp3/RequestBody;)V

    new-instance v1, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor$c;Lcom/dropbox/core/http/OkHttp3Requestor$a;)V

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->e:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->h:Lcom/dropbox/core/http/OkHttp3Requestor;

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttp3Requestor;->a(Lcom/dropbox/core/http/OkHttp3Requestor;)Lokhttp3/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->b:Lokhttp3/Request$Builder;

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->d:Lokhttp3/Call;

    iget-object p0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$b;->e:Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;

    invoke-interface {v1, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttp3Requestor$c;->j()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public upload(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dropbox/core/http/OkHttp3Requestor$b;->b(Lokhttp3/RequestBody;)V

    return-void
.end method

.method public upload([B)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dropbox/core/http/OkHttp3Requestor$b;->b(Lokhttp3/RequestBody;)V

    return-void
.end method
