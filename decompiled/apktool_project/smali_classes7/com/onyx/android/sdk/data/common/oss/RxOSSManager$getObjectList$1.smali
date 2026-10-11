.class final Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getObjectList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->getObjectList(Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/ObservableSource;",
        "",
        "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
        "oss",
        "Lcom/alibaba/sdk/android/oss/OSS;",
        "apply"
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
.field final synthetic $listObjectBean:Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;

.field final synthetic this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getObjectList$1;->this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getObjectList$1;->$listObjectBean:Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/alibaba/sdk/android/oss/OSS;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/alibaba/sdk/android/oss/OSS;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/OSS;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "oss"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getObjectList$1;->this$0:Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;

    .line 3
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getObjectList$1;->$listObjectBean:Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;

    .line 4
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->access$buildGetObjectListRequest(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;)Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;

    move-result-object v1

    .line 5
    invoke-static {v0, p1, p0, v1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->access$createGetListObjectObservable(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/alibaba/sdk/android/oss/OSS;Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/sdk/android/oss/OSS;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager$getObjectList$1;->apply(Lcom/alibaba/sdk/android/oss/OSS;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
