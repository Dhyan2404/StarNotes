.class public final Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;",
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "convertEntry",
        "eventBus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "localConvertList",
        "",
        "networkConvertList",
        "(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "convertDoc",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
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
.field private final convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
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
.method public constructor <init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
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
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            "Lorg/greenrobot/eventbus/EventBus;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localConvertList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConvertList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;-><init>(Lorg/greenrobot/eventbus/EventBus;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->localConvertList:Ljava/util/List;

    iput-object p4, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->networkConvertList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$convertDoc(Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;)Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertDoc()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLocalConvertList$p(Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->localConvertList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getNetworkConvertList$p(Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->networkConvertList:Ljava/util/List;

    return-object p0
.end method

.method private final convertDoc()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v1, "convert  [convert] start"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getConvertType()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->isConvertFailed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->Companion:Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;->getInstance()Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getConvertType()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->ensureDocConvert(Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;)Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;->docConvert(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponse;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponseBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponseBean;->getTicket()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/DocConvertResponseBean;->getTicket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setTicket(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setProgressValue(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->localConvertList:Ljava/util/List;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->networkConvertList:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->handleProgress(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, ""

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doc async convert task failed! fileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->convertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0
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

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction$create$1;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction$create$2;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/ConvertAsyncAction;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method
