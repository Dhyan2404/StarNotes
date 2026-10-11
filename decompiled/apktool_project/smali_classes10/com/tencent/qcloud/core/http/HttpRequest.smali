.class public Lcom/tencent/qcloud/core/http/HttpRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final calculateContentMD5:Z

.field protected final headers:Ljava/util/Map;
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

.field protected final keyTime:Ljava/lang/String;

.field protected final method:Ljava/lang/String;

.field protected final noSignHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final noSignParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final queries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final requestBody:Lokhttp3/RequestBody;

.field protected final requestBuilder:Lokhttp3/Request$Builder;

.field protected final responseBodyConverter:Lcom/tencent/qcloud/core/http/ResponseBodyConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qcloud/core/http/ResponseBodyConverter<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final tag:Ljava/lang/Object;

.field protected final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/http/HttpRequest$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpRequest$Builder<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->requestBuilder:Lokhttp3/Request$Builder;

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBuilder:Lokhttp3/Request$Builder;

    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->responseBodyConverter:Lcom/tencent/qcloud/core/http/ResponseBodyConverter;

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->responseBodyConverter:Lcom/tencent/qcloud/core/http/ResponseBodyConverter;

    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->headers:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->headers:Ljava/util/Map;

    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->queries:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->queries:Ljava/util/Map;

    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->noSignHeaderKeys:Ljava/util/Set;

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->noSignHeaders:Ljava/util/Set;

    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->noSignParamsKeys:Ljava/util/Set;

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->noSignParams:Ljava/util/Set;

    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->keyTime:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->keyTime:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->method:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->method:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->calculateContentMD5:Z

    iput-boolean v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->calculateContentMD5:Z

    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->tag:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->tag:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->tag:Ljava/lang/Object;

    :goto_0
    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->httpUrlBuilder:Lokhttp3/HttpUrl$Builder;

    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->url:Ljava/net/URL;

    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->requestBodySerializer:Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/RequestBodySerializer;->body()Lokhttp3/RequestBody;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBody:Lokhttp3/RequestBody;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBody:Lokhttp3/RequestBody;

    :goto_1
    iget-object p1, p1, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->method:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBody:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1, p0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public static synthetic access$000(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tencent/qcloud/core/http/HttpRequest;->addHeaderNameValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addHeaderNameValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static removeHeaderNameValue(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcom/tencent/qcloud/core/http/HttpRequest;->addHeaderNameValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public addOrReplaceHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest;->removeHeaderNameValue(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcom/tencent/qcloud/core/http/HttpRequest;->addHeaderNameValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->queries:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public buildRealRequest()Lokhttp3/Request;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBody:Lokhttp3/RequestBody;

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBody:Lokhttp3/RequestBody;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getKeyTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->keyTime:Ljava/lang/String;

    return-object p0
.end method

.method public getNoSignHeaders()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->noSignHeaders:Ljava/util/Set;

    return-object p0
.end method

.method public getNoSignParams()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->noSignParams:Ljava/util/Set;

    return-object p0
.end method

.method public getQCloudSelfSigner()Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getQCloudSigner()Lcom/tencent/qcloud/core/auth/QCloudSigner;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequestBody()Lokhttp3/RequestBody;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBody:Lokhttp3/RequestBody;

    return-object p0
.end method

.method public getResponseBodyConverter()Lcom/tencent/qcloud/core/http/ResponseBodyConverter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qcloud/core/http/ResponseBodyConverter<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->responseBodyConverter:Lcom/tencent/qcloud/core/http/ResponseBodyConverter;

    return-object p0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public host()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public method()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->method:Ljava/lang/String;

    return-object p0
.end method

.method public queries()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->queries:Ljava/util/Map;

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOkHttpRequestTag(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public shouldCalculateContentMD5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->calculateContentMD5:Z

    if-eqz v0, :cond_0

    const-string v0, "Content-MD5"

    invoke-virtual {p0, v0}, Lcom/tencent/qcloud/core/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qcloud/core/util/QCloudStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public url()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpRequest;->url:Ljava/net/URL;

    return-object p0
.end method
