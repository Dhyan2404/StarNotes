.class public final Lcom/squareup/okhttp/Call$c;
.super Lcom/squareup/okhttp/internal/NamedRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final e:Lcom/squareup/okhttp/Callback;

.field public final f:Z

.field public final synthetic g:Lcom/squareup/okhttp/Call;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    .line 3
    iget-object p1, p1, Lcom/squareup/okhttp/Call;->d:Lcom/squareup/okhttp/Request;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "OkHttp %s"

    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p2, p0, Lcom/squareup/okhttp/Call$c;->e:Lcom/squareup/okhttp/Callback;

    .line 5
    iput-boolean p3, p0, Lcom/squareup/okhttp/Call$c;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;ZLcom/squareup/okhttp/Call$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/Call$c;-><init>(Lcom/squareup/okhttp/Call;Lcom/squareup/okhttp/Callback;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Call;->cancel()V

    return-void
.end method

.method public b()Lcom/squareup/okhttp/Call;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    iget-object p0, p0, Lcom/squareup/okhttp/Call;->d:Lcom/squareup/okhttp/Request;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d()Lcom/squareup/okhttp/Request;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    iget-object p0, p0, Lcom/squareup/okhttp/Call;->d:Lcom/squareup/okhttp/Request;

    return-object p0
.end method

.method public e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    iget-object p0, p0, Lcom/squareup/okhttp/Call;->d:Lcom/squareup/okhttp/Request;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->tag()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public execute()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    iget-boolean v2, p0, Lcom/squareup/okhttp/Call$c;->f:Z

    invoke-static {v1, v2}, Lcom/squareup/okhttp/Call;->a(Lcom/squareup/okhttp/Call;Z)Lcom/squareup/okhttp/Response;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    iget-boolean v0, v2, Lcom/squareup/okhttp/Call;->c:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/Call$c;->e:Lcom/squareup/okhttp/Callback;

    iget-object v1, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    iget-object v1, v1, Lcom/squareup/okhttp/Call;->d:Lcom/squareup/okhttp/Request;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3}, Lcom/squareup/okhttp/Callback;->onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Call$c;->e:Lcom/squareup/okhttp/Callback;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/Callback;->onResponse(Lcom/squareup/okhttp/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move v2, v0

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    sget-object v1, Lcom/squareup/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    invoke-static {v4}, Lcom/squareup/okhttp/Call;->b(Lcom/squareup/okhttp/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/Call$c;->e:Lcom/squareup/okhttp/Callback;

    iget-object v2, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    iget-object v2, v2, Lcom/squareup/okhttp/Call;->e:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequest()Lcom/squareup/okhttp/Request;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/squareup/okhttp/Callback;->onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    invoke-static {v0}, Lcom/squareup/okhttp/Call;->c(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/Dispatcher;->c(Lcom/squareup/okhttp/Call$c;)V

    return-void

    :goto_2
    iget-object v1, p0, Lcom/squareup/okhttp/Call$c;->g:Lcom/squareup/okhttp/Call;

    invoke-static {v1}, Lcom/squareup/okhttp/Call;->c(Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/Dispatcher;->c(Lcom/squareup/okhttp/Call$c;)V

    throw v0
.end method
