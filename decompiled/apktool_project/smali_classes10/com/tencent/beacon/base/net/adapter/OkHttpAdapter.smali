.class public Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;
.super Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;
.source "SourceFile"


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private failCount:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 3
    invoke-direct {p0}, Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;-><init>()V

    .line 4
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v2, 0x2710

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;)I
    .locals 0

    iget p0, p0, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->failCount:I

    return p0
.end method

.method public static synthetic access$002(Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->failCount:I

    return p1
.end method

.method public static synthetic access$008(Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;)I
    .locals 2

    iget v0, p0, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->failCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->failCount:I

    return v0
.end method

.method private buildBody(Lcom/tencent/beacon/base/net/call/HttpRequestEntity;)Lokhttp3/RequestBody;
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->bodyType()Lcom/tencent/beacon/base/net/BodyType;

    move-result-object p0

    sget-object v0, Lcom/tencent/beacon/base/net/adapter/e;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "multipart/form-data"

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->content()[B

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/tencent/beacon/base/net/BodyType;->httpType:Ljava/lang/String;

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->json()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/tencent/beacon/base/net/BodyType;->httpType:Ljava/lang/String;

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->formParams()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/beacon/base/net/b/d;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static create(Lokhttp3/OkHttpClient;)Lcom/tencent/beacon/base/net/adapter/AbstractNetAdapter;
    .locals 1
    .param p0    # Lokhttp3/OkHttpClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    new-instance v0, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;

    invoke-direct {p0}, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;-><init>()V

    return-object p0
.end method

.method private mapToHeaders(Ljava/util/Map;)Lokhttp3/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    new-instance p0, Lokhttp3/Headers$Builder;

    invoke-direct {p0}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public request(Lcom/tencent/beacon/base/net/call/HttpRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/HttpRequestEntity;",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "Lcom/tencent/beacon/base/net/BResponse;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->tag()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->buildBody(Lcom/tencent/beacon/base/net/call/HttpRequestEntity;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 15
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 16
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->method()Lcom/tencent/beacon/base/net/HttpMethod;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/HttpRequestEntity;->headers()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->mapToHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-nez v0, :cond_0

    const-string v1, "beacon"

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 19
    :goto_0
    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v1, Lcom/tencent/beacon/base/net/adapter/d;

    invoke-direct {v1, p0, p2, v0}, Lcom/tencent/beacon/base/net/adapter/d;-><init>(Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;Lcom/tencent/beacon/base/net/call/Callback;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public request(Lcom/tencent/beacon/base/net/call/JceRequestEntity;Lcom/tencent/beacon/base/net/call/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/beacon/base/net/call/JceRequestEntity;",
            "Lcom/tencent/beacon/base/net/call/Callback<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "jce"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getContent()[B

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getHeader()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->mapToHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getType()Lcom/tencent/beacon/base/net/RequestType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/tencent/beacon/base/net/call/JceRequestEntity;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 7
    invoke-virtual {v3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/tencent/beacon/base/net/adapter/c;

    invoke-direct {v0, p0, p2, v2}, Lcom/tencent/beacon/base/net/adapter/c;-><init>(Lcom/tencent/beacon/base/net/adapter/OkHttpAdapter;Lcom/tencent/beacon/base/net/call/Callback;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
