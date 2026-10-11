.class public final Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;
.super Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u0013\u001a\u00020\u0007H\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;",
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;",
        "",
        "eventBus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "localConvertList",
        "",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "networkConvertList",
        "(Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "deleteTempFile",
        "it",
        "dispose",
        "handleResult",
        "uploadDocToOss",
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
.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/eventbus/EventBus;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventBus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localConvertList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConvertList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->localConvertList:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->networkConvertList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$deleteTempFile(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->deleteTempFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLocalConvertList$p(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->localConvertList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getNetworkConvertList$p(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->networkConvertList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$handleResult(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->handleResult()V

    return-void
.end method

.method public static final synthetic access$uploadDocToOss(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->uploadDocToOss(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final create$lambda$0(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->handleCancel()V

    return-void
.end method

.method private final deleteTempFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-object p1
.end method

.method private final handleResult()V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v0, "Doc covert online finished"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->create$lambda$0(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V

    return-void
.end method

.method private final uploadDocToOss(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 9
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

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v1, "convert  [upload] start"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getProgressValue()I

    move-result v4

    const/16 v3, 0x12

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_PROCESSING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->Companion:Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;->getInstance()Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getConvertType()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->ensureDocConvert(Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;)Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;

    move-result-object v1

    new-instance v8, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$uploadDocToOss$1;

    move-object v2, v8

    move-object v5, p1

    move-object v6, p0

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$uploadDocToOss$1;-><init>(IILcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-interface {v1, p1, v8}, Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;->uploadFile(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/serverconvert/convertor/OnFileTransferListener;)V

    return-object v0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->networkConvertList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$1;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$2;->INSTANCE:Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$2;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$3;->INSTANCE:Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$3;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$4;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$4;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMapIterable(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->getObserveOnMultiThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$5;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$5;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$6;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$6;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$7;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$7;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$8;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$8;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$9;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$9;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/v6f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v6f;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnDispose(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$11;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction$create$11;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    sget-object p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->Companion:Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;->getInstance()Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->releaseAll()V

    return-void
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/DocCovertOnlineAsyncAction;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method
