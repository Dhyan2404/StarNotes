.class public final Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCloudFileListResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudFileListResult.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n1855#2,2:71\n*S KotlinDebug\n*F\n+ 1 CloudFileListResult.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion\n*L\n57#1:71,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J.\u0010\u0008\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u0002H\t\u0012\u0004\u0012\u00020\u00070\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "list",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "from",
        "T",
        "originResult",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "function",
        "Lkotlin/Function1;",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCloudFileListResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CloudFileListResult.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,70:1\n1855#2,2:71\n*S KotlinDebug\n*F\n+ 1 CloudFileListResult.kt\ncom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion\n*L\n57#1:71,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/util/List;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;-><init>()V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    return-object p0
.end method

.method public final from(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "originResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;->create(Ljava/util/List;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getFetchSource()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setFetchSource(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getCursor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCursor(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setMessage(Ljava/lang/String;)V

    return-object p0
.end method
