.class public Lcom/dropbox/core/http/StandardHttpRequestor$b;
.super Lcom/dropbox/core/http/HttpRequestor$Uploader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/StandardHttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/dropbox/core/util/ProgressOutputStream;

.field public b:Ljava/net/HttpURLConnection;

.field public final synthetic c:Lcom/dropbox/core/http/StandardHttpRequestor;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/StandardHttpRequestor;Ljava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->c:Lcom/dropbox/core/http/StandardHttpRequestor;

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;-><init>()V

    iput-object p2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->b:Ljava/net/HttpURLConnection;

    new-instance p1, Lcom/dropbox/core/util/ProgressOutputStream;

    invoke-static {p2}, Lcom/dropbox/core/http/StandardHttpRequestor;->a(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dropbox/core/util/ProgressOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->a:Lcom/dropbox/core/util/ProgressOutputStream;

    invoke-virtual {p2}, Ljava/net/URLConnection;->connect()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->b:Ljava/net/HttpURLConnection;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t abort().  Uploader already closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->b:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->b:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public finish()Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->c:Lcom/dropbox/core/http/StandardHttpRequestor;

    invoke-static {v2, v0}, Lcom/dropbox/core/http/StandardHttpRequestor;->b(Lcom/dropbox/core/http/StandardHttpRequestor;Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->b:Ljava/net/HttpURLConnection;

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->b:Ljava/net/HttpURLConnection;

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t finish().  Uploader already closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->a:Lcom/dropbox/core/util/ProgressOutputStream;

    return-object p0
.end method

.method public setProgressListener(Lcom/dropbox/core/util/IOUtil$ProgressListener;)V
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/http/StandardHttpRequestor$b;->a:Lcom/dropbox/core/util/ProgressOutputStream;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/ProgressOutputStream;->setListener(Lcom/dropbox/core/util/IOUtil$ProgressListener;)V

    return-void
.end method
