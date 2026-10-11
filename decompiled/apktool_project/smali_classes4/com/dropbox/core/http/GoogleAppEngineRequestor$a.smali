.class public Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/GoogleAppEngineRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/appengine/api/urlfetch/URLFetchService;

.field public final b:Ljava/io/ByteArrayOutputStream;

.field public c:Lcom/google/appengine/api/urlfetch/HTTPRequest;


# direct methods
.method public constructor <init>(Lcom/google/appengine/api/urlfetch/URLFetchService;Lcom/google/appengine/api/urlfetch/HTTPRequest;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->a:Lcom/google/appengine/api/urlfetch/URLFetchService;

    iput-object p2, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    iput-object p3, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->b:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->close()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Uploader already closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    :cond_0
    return-void
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appengine/api/urlfetch/HTTPRequest;->setPayload([B)V

    iget-object v0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->a:Lcom/google/appengine/api/urlfetch/URLFetchService;

    iget-object v1, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    invoke-interface {v0, v1}, Lcom/google/appengine/api/urlfetch/URLFetchService;->fetch(Lcom/google/appengine/api/urlfetch/HTTPRequest;)Lcom/google/appengine/api/urlfetch/HTTPResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor;->a(Lcom/google/appengine/api/urlfetch/HTTPResponse;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->close()V

    iget-object v1, p0, Lcom/dropbox/core/http/HttpRequestor$Uploader;->progressListener:Lcom/dropbox/core/util/IOUtil$ProgressListener;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->c:Lcom/google/appengine/api/urlfetch/HTTPRequest;

    invoke-virtual {p0}, Lcom/google/appengine/api/urlfetch/HTTPRequest;->getPayload()[B

    move-result-object p0

    array-length p0, p0

    int-to-long v2, p0

    invoke-interface {v1, v2, v3}, Lcom/dropbox/core/util/IOUtil$ProgressListener;->onProgress(J)V

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Uploader already closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/http/GoogleAppEngineRequestor$a;->b:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method
