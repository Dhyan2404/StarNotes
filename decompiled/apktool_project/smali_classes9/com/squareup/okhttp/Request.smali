.class public final Lcom/squareup/okhttp/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/Request$Builder;
    }
.end annotation


# instance fields
.field public final a:Lcom/squareup/okhttp/HttpUrl;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/squareup/okhttp/Headers;

.field public final d:Lcom/squareup/okhttp/RequestBody;

.field public final e:Ljava/lang/Object;

.field public volatile f:Ljava/net/URL;

.field public volatile g:Ljava/net/URI;

.field public volatile h:Lcom/squareup/okhttp/CacheControl;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Request$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->a(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->a:Lcom/squareup/okhttp/HttpUrl;

    .line 4
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->b(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->c(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->c:Lcom/squareup/okhttp/Headers;

    .line 6
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->d(Lcom/squareup/okhttp/Request$Builder;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->d:Lcom/squareup/okhttp/RequestBody;

    .line 7
    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->e(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/squareup/okhttp/Request$Builder;->e(Lcom/squareup/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p0, Lcom/squareup/okhttp/Request;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/okhttp/Request$Builder;Lcom/squareup/okhttp/Request$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Request;-><init>(Lcom/squareup/okhttp/Request$Builder;)V

    return-void
.end method

.method public static synthetic a(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Headers;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->c:Lcom/squareup/okhttp/Headers;

    return-object p0
.end method

.method public static synthetic b(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/HttpUrl;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->a:Lcom/squareup/okhttp/HttpUrl;

    return-object p0
.end method

.method public static synthetic c(Lcom/squareup/okhttp/Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/RequestBody;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->d:Lcom/squareup/okhttp/RequestBody;

    return-object p0
.end method

.method public static synthetic e(Lcom/squareup/okhttp/Request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->e:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public body()Lcom/squareup/okhttp/RequestBody;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->d:Lcom/squareup/okhttp/RequestBody;

    return-object p0
.end method

.method public cacheControl()Lcom/squareup/okhttp/CacheControl;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/Request;->h:Lcom/squareup/okhttp/CacheControl;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->c:Lcom/squareup/okhttp/Headers;

    invoke-static {v0}, Lcom/squareup/okhttp/CacheControl;->parse(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->h:Lcom/squareup/okhttp/CacheControl;

    :goto_0
    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->c:Lcom/squareup/okhttp/Headers;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public headers()Lcom/squareup/okhttp/Headers;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/Request;->c:Lcom/squareup/okhttp/Headers;

    return-object p0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/squareup/okhttp/Request;->c:Lcom/squareup/okhttp/Headers;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public httpUrl()Lcom/squareup/okhttp/HttpUrl;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->a:Lcom/squareup/okhttp/HttpUrl;

    return-object p0
.end method

.method public isHttps()Z
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->a:Lcom/squareup/okhttp/HttpUrl;

    invoke-virtual {p0}, Lcom/squareup/okhttp/HttpUrl;->isHttps()Z

    move-result p0

    return p0
.end method

.method public method()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->b:Ljava/lang/String;

    return-object p0
.end method

.method public newBuilder()Lcom/squareup/okhttp/Request$Builder;
    .locals 2

    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/Request$Builder;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Request$a;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/Request;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/Request;->a:Lcom/squareup/okhttp/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/Request;->e:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uri()Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->g:Ljava/net/URI;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->a:Lcom/squareup/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->g:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public url()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/Request;->f:Ljava/net/URL;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/Request;->a:Lcom/squareup/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Request;->f:Ljava/net/URL;

    :goto_0
    return-object v0
.end method

.method public urlString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/Request;->a:Lcom/squareup/okhttp/HttpUrl;

    invoke-virtual {p0}, Lcom/squareup/okhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
