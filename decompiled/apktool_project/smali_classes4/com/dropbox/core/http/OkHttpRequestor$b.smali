.class public Lcom/dropbox/core/http/OkHttpRequestor$b;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/squareup/okhttp/Request$Builder;

.field public c:Lcom/squareup/okhttp/RequestBody;

.field public d:Lcom/squareup/okhttp/Call;

.field public e:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

.field public f:Z

.field public g:Z

.field public final synthetic h:Lcom/dropbox/core/http/OkHttpRequestor;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/OkHttpRequestor;Ljava/lang/String;Lcom/squareup/okhttp/Request$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->h:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    iput-object p2, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->b:Lcom/squareup/okhttp/Request$Builder;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->c:Lcom/squareup/okhttp/RequestBody;

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->d:Lcom/squareup/okhttp/Call;

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->e:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->f:Z

    iput-boolean p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->g:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->c:Lcom/squareup/okhttp/RequestBody;

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

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->d:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->g:Z

    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttpRequestor$b;->close()V

    return-void
.end method

.method public final b(Lcom/squareup/okhttp/RequestBody;)V
    .locals 2

    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttpRequestor$b;->a()V

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->c:Lcom/squareup/okhttp/RequestBody;

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->b:Lcom/squareup/okhttp/Request$Builder;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    iget-object p1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->h:Lcom/dropbox/core/http/OkHttpRequestor;

    iget-object p0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->b:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {p1, p0}, Lcom/dropbox/core/http/OkHttpRequestor;->configureRequest(Lcom/squareup/okhttp/Request$Builder;)V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->c:Lcom/squareup/okhttp/RequestBody;

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

    iput-boolean v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->f:Z

    return-void
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->c:Lcom/squareup/okhttp/RequestBody;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor$b;->upload([B)V

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->e:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttpRequestor$b;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->e:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;->getResponse()Lcom/squareup/okhttp/Response;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->h:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttpRequestor;->a(Lcom/dropbox/core/http/OkHttpRequestor;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->b:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->d:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->h:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor;->interceptResponse(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttpRequestor;->b(Lcom/squareup/okhttp/Headers;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

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

    iget-object v0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->c:Lcom/squareup/okhttp/RequestBody;

    instance-of v1, v0, Lcom/dropbox/core/http/OkHttpRequestor$c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/dropbox/core/http/OkHttpRequestor$c;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpRequestor$c;->j()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/dropbox/core/http/OkHttpRequestor$c;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttpRequestor$c;-><init>()V

    iget-object v1, p0, Lcom/dropbox/core/http/HttpRequestor$Uploader;->progressListener:Lcom/dropbox/core/util/IOUtil$ProgressListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/http/OkHttpRequestor$c;->w(Lcom/dropbox/core/util/IOUtil$ProgressListener;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/OkHttpRequestor$b;->b(Lcom/squareup/okhttp/RequestBody;)V

    new-instance v1, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;-><init>(Lcom/dropbox/core/http/OkHttpRequestor$a;)V

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->e:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    iget-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->h:Lcom/dropbox/core/http/OkHttpRequestor;

    invoke-static {v1}, Lcom/dropbox/core/http/OkHttpRequestor;->a(Lcom/dropbox/core/http/OkHttpRequestor;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->b:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->d:Lcom/squareup/okhttp/Call;

    iget-object p0, p0, Lcom/dropbox/core/http/OkHttpRequestor$b;->e:Lcom/dropbox/core/http/OkHttpRequestor$AsyncCallback;

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpRequestor$c;->j()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public upload(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/io/File;)Lcom/squareup/okhttp/RequestBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dropbox/core/http/OkHttpRequestor$b;->b(Lcom/squareup/okhttp/RequestBody;)V

    return-void
.end method

.method public upload([B)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dropbox/core/http/OkHttpRequestor$b;->b(Lcom/squareup/okhttp/RequestBody;)V

    return-void
.end method
