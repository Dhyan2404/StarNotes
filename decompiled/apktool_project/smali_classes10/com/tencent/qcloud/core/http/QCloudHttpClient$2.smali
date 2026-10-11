.class Lcom/tencent/qcloud/core/http/QCloudHttpClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Dns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/QCloudHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qcloud/core/http/QCloudHttpClient;


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$2;->this$0:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$2;->this$0:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-static {v0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->access$100(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$2;->this$0:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-static {v0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->access$100(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$2;->this$0:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-static {v1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->access$200(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qcloud/core/http/QCloudHttpClient$QCloudDnsFetch;

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$QCloudDnsFetch;->fetch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :cond_3
    const/4 v1, 0x0

    const-string v2, "QCloudHttp"

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    :try_start_1
    sget-object v3, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v3, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v3, "system dns failed, retry cache dns records."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$2;->this$0:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-static {v3}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->access$300(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    :try_start_2
    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$2;->this$0:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-static {p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->access$400(Lcom/tencent/qcloud/core/http/QCloudHttpClient;)Lcom/tencent/qcloud/core/http/ConnectionRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->getDnsRecord(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string p0, "Not found dns in cache records."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_a

    invoke-static {}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->getInstance()Lcom/tencent/qcloud/core/http/ConnectionRepository;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->insertDnsRecordCache(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_a
    new-instance p0, Ljava/net/UnknownHostException;

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/net/UnknownHostException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not resolve host name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
