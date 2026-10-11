.class final Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->createGetListObjectObservable(Lcom/alibaba/sdk/android/oss/OSS;Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "listObjectsResult",
        "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $listObjectsRequest:Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;

.field final synthetic $result:[Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

.field final synthetic $summaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;Ljava/util/List;Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$2;->$result:[Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$2;->$summaries:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$2;->$listObjectsRequest:Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)V
    .locals 2
    .param p1    # Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listObjectsResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$2;->$result:[Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$2;->$summaries:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->getObjectSummaries()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$2;->$listObjectsRequest:Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;->getNextMarker()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$createGetListObjectObservable$2;->accept(Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;)V

    return-void
.end method
