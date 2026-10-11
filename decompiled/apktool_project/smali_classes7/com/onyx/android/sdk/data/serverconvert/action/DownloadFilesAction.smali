.class public final Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;
.super Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction<",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B7\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012H\u0016J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0002H\u0003R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;",
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "data",
        "",
        "eventBus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "localConvertList",
        "",
        "networkConvertList",
        "(Ljava/util/List;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V",
        "getData",
        "()Ljava/util/List;",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "getLocalConvertList",
        "getNetworkConvertList",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "requestSaveConvertFile",
        "convertEntry",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final localConvertList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final networkConvertList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;",
            "Lorg/greenrobot/eventbus/EventBus;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localConvertList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConvertList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->data:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->localConvertList:Ljava/util/List;

    iput-object p4, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->networkConvertList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$requestSaveConvertFile(Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->requestSaveConvertFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final requestSaveConvertFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getOssDownloadKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v6

    const-string v0, "create(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getProgressValue()I

    move-result v2

    const/16 v1, 0x5f

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->Companion:Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;->getInstance()Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getConvertType()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->ensureDocConvert(Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;)Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;

    move-result-object v7

    new-instance v8, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;

    move-object v0, v8

    move-object v3, p1

    move-object v4, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$requestSaveConvertFile$1;-><init>(IILcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-interface {v7, p1, v8}, Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;->downloadFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V

    return-object v6
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$create$1;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$create$2;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$create$3;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction$create$3;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->data:Ljava/util/List;

    return-object p0
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final getLocalConvertList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->localConvertList:Ljava/util/List;

    return-object p0
.end method

.method public final getNetworkConvertList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DownloadFilesAction;->networkConvertList:Ljava/util/List;

    return-object p0
.end method
