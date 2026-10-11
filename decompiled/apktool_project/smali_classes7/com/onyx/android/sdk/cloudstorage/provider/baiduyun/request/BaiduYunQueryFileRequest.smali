.class public final Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Ljava/util/List<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaiduYunQueryFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaiduYunQueryFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n1549#2:134\n1620#2,3:135\n766#2:138\n857#2,2:139\n*S KotlinDebug\n*F\n+ 1 BaiduYunQueryFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest\n*L\n54#1:134\n54#1:135,3\n85#1:138\n85#1:139,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002J \u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\nH\u0002J&\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0014R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
        "execute",
        "",
        "",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileBean",
        "",
        "b",
        "dir",
        "searchContent",
        "d",
        "fsIds",
        "",
        "checkSuccess",
        "c",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
        "baiduYunProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBaiduYunQueryFileRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaiduYunQueryFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n1549#2:134\n1620#2,3:135\n766#2:138\n857#2,2:139\n*S KotlinDebug\n*F\n+ 1 BaiduYunQueryFileRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest\n*L\n54#1:134\n54#1:135,3\n85#1:138\n85#1:139,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "baiduYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->b(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->getFsId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const-string p0, "/"

    return-object p0

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;-><init>()V

    const-string v1, "filemetas"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setFsids(Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lorg/apache/commons/lang3/BooleanUtils;->toInteger(Z)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setDlink(I)V

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest$queryFile$map$2$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest$queryFile$map$2$1;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;->getBaiduYunClient()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/utils/BaiduYunClient;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest$queryFile$response$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest$queryFile$response$1;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/utils/BaiduYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    const-string p1, "/"

    :cond_2
    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    invoke-direct {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;-><init>()V

    const-string v3, "search"

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setPage(I)V

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setNum(I)V

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setDir(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunSearchFileRequest;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-direct {p1, v3, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunSearchFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunSearchFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move v6, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v0

    :goto_4
    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v5, p2, v1, v6, v7}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v0

    goto :goto_5

    :cond_6
    move v5, v1

    :goto_5
    if-eqz v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object p1, p2

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_9

    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;

    const-string v2, "got too more baiduyun file via name search:"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    return-object p1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->c(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 4
    :goto_0
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->c(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 6
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    if-eqz v1, :cond_5

    .line 7
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunQueryFileRequest;->b:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->getFsId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method
