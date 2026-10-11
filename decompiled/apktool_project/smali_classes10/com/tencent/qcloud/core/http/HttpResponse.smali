.class public final Lcom/tencent/qcloud/core/http/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final request:Lcom/tencent/qcloud/core/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "TT;>;"
        }
    .end annotation
.end field

.field final response:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/http/HttpRequest;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "TT;>;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->request:Lcom/tencent/qcloud/core/http/HttpRequest;

    iput-object p2, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    return-void
.end method

.method public static checkResponseSuccessful(Lcom/tencent/qcloud/core/http/HttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudServiceException;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpResponse;->message()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/common/QCloudServiceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpResponse;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setStatusCode(I)V

    const-string v1, "x-cos-request-id"

    invoke-virtual {p0, v1}, Lcom/tencent/qcloud/core/http/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/tencent/qcloud/core/http/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setRequestId(Ljava/lang/String;)V

    :cond_0
    throw v0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    const-string v0, "response is null"

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final bytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public code()I
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    return p0
.end method

.method public final contentLength()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {p0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public headers()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final isSuccessful()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public message()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public request()Lcom/tencent/qcloud/core/http/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->request:Lcom/tencent/qcloud/core/http/HttpRequest;

    return-object p0
.end method

.method public final string()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpResponse;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpResponse;->message()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "http code = %d, http message = %s %nheader is %s"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
