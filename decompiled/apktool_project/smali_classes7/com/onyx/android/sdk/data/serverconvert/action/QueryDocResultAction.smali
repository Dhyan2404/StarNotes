.class public final Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;",
        "Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "docConvertEntry",
        "eventBus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "localConvertList",
        "",
        "networkConvertList",
        "(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "interrupt",
        "",
        "queryCount",
        "",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "handleResult",
        "postProcess",
        "",
        "it",
        "queryDocResult",
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
.field private final docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private interrupt:Z

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

.field private queryCount:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const-string v0, "docConvertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localConvertList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConvertList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;-><init>(Lorg/greenrobot/eventbus/EventBus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->localConvertList:Ljava/util/List;

    iput-object p4, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->networkConvertList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$handleResult(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->handleResult()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postProcess(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->postProcess(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    return-void
.end method

.method public static final synthetic access$queryDocResult(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->queryDocResult()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setInterrupt$p(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->interrupt:Z

    return-void
.end method

.method private static final create$lambda$0(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->interrupt:Z

    return p0
.end method

.method private final handleResult()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v1, "query doc result action finish..."

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->create$lambda$0(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)Z

    move-result p0

    return p0
.end method

.method private final postProcess(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;-><init>()V

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setStatus(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setTaskId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->networkConvertList:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setNetworkList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->localConvertList:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setLocalList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private final queryDocResult()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->isConvertFailed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->interrupt:Z

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->Companion:Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;->getInstance()Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getConvertType()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->ensureDocConvert(Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;)Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;->queryDocConvert(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponse;

    move-result-object v0

    const-string v2, "convert  [convert] failed!"

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    iput-boolean v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->interrupt:Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v3, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->interrupt:Z

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0

    :cond_5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponseTaskBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponseTaskBean;->getStatus()I

    move-result v3

    if-eq v3, v1, :cond_b

    const/4 v0, 0x2

    if-eq v3, v0, :cond_a

    const/4 v2, 0x3

    if-eq v3, v2, :cond_6

    goto/16 :goto_2

    :cond_6
    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v3, "doc convert processing..."

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v3, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_PROCESSING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    iget v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->queryCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->queryCount:I

    rem-int/2addr v2, v0

    const/16 v0, 0x1e

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getProgressValue()I

    move-result v2

    if-ge v2, v0, :cond_7

    iget-object v2, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getProgressValue()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setProgressValue(I)V

    :cond_7
    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getProgressValue()I

    move-result v1

    if-lt v1, v0, :cond_c

    iget v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->queryCount:I

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertConst;->INSTANCE:Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertConst;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertConst;->getOneMinutesCount()I

    move-result v2

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setProgressValue(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertConst;->getThreeMinutesTimesCount()I

    move-result v2

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setProgressValue(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertConst;->getFiveMinutesTimesCount()I

    move-result v1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setProgressValue(I)V

    goto :goto_2

    :cond_a
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v3, "doc convert failed!"

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v4, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    iput-boolean v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->interrupt:Z

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v3, "doc convert success!"

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v4, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_PROCESSING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/bean/QueryResponseTaskBean;->getTargetKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setOssDownloadKey(Ljava/lang/String;)V

    const/16 v0, 0x55

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setProgressValue(I)V

    iput-boolean v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->interrupt:Z

    const-string v0, "convert  [convert] end"

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    :cond_c
    :goto_2
    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0

    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    sget-object v3, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    iput-boolean v1, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->interrupt:Z

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->docConvertEntry:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
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

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->queryCount:I

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/action/RxBaseCovertAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction$create$1;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction$create$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction$create$2;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/mal;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/mal;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->repeatUntil(Lio/reactivex/rxjava3/functions/BooleanSupplier;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction$create$4;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction$create$4;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction$create$5;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction$create$5;-><init>(Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnError(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/action/QueryDocResultAction;->eventBus:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method
