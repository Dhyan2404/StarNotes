.class public final Lcom/tencent/qcloud/core/http/HttpResult;
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
.field private final code:I

.field private final content:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final contentLength:J

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final request:Lcom/tencent/qcloud/core/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/http/HttpResponse;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpResponse<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->code()I

    move-result v0

    iput v0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->code:I

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->message:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/qcloud/core/http/HttpResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->headers:Ljava/util/Map;

    iput-object p2, p0, Lcom/tencent/qcloud/core/http/HttpResult;->content:Ljava/lang/Object;

    iget-object p2, p1, Lcom/tencent/qcloud/core/http/HttpResponse;->request:Lcom/tencent/qcloud/core/http/HttpRequest;

    iput-object p2, p0, Lcom/tencent/qcloud/core/http/HttpResult;->request:Lcom/tencent/qcloud/core/http/HttpRequest;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->contentLength()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/qcloud/core/http/HttpResult;->contentLength:J

    return-void
.end method


# virtual methods
.method public asException()Lcom/tencent/qcloud/core/common/QCloudServiceException;
    .locals 2

    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/HttpResult;->message:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/common/QCloudServiceException;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->code:I

    invoke-virtual {v0, p0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setStatusCode(I)V

    return-object v0
.end method

.method public code()I
    .locals 0

    iget p0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->code:I

    return p0
.end method

.method public content()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->content:Ljava/lang/Object;

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->contentLength:J

    return-wide v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->headers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

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

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public final isSuccessful()Z
    .locals 1

    iget p0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->code:I

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public message()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->message:Ljava/lang/String;

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

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpResult;->request:Lcom/tencent/qcloud/core/http/HttpRequest;

    return-object p0
.end method
