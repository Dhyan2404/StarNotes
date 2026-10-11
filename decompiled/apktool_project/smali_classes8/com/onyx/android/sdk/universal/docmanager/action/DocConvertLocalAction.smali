.class public final Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B3\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u0010\u001e\u001a\u00020\u0019\u0012\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001f\u0012\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001f\u00a2\u0006\u0004\u00081\u00102J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J&\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\u001e\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u001c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u001b\u0010.\u001a\u00020)8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "dispose",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "convertEntry",
        "B",
        "handleCancel",
        "r",
        "",
        "progressStatus",
        "D",
        "Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;",
        "decryptPDFArgs",
        "x",
        "",
        "path",
        "Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
        "convertArgs",
        "s",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "it",
        "C",
        "Lorg/greenrobot/eventbus/EventBus;",
        "h",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getEventBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "eventBus",
        "",
        "i",
        "Ljava/util/List;",
        "localConvertList",
        "j",
        "networkConvertList",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "k",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "convertToPDFRequest",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "l",
        "Lkotlin/Lazy;",
        "A",
        "()Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
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

.field public j:Ljava/util/List;
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

.field public k:Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final l:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lorg/greenrobot/eventbus/EventBus;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
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
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Lorg/greenrobot/eventbus/EventBus;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localConvertList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConvertList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->h:Lorg/greenrobot/eventbus/EventBus;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->i:Ljava/util/List;

    iput-object p4, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->j:Ljava/util/List;

    sget-object p1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$compositeDisposable$2;->INSTANCE:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$compositeDisposable$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->l:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$convertDocumentToPdf(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->r(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertToPDF(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->s(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$decryptPDF(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->x(Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCompositeDisposable(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->A()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleProcess(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->B(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    return-void
.end method

.method public static final synthetic access$setConvertToPDFRequest$p(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->k:Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;

    return-void
.end method

.method public static synthetic l()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->w()V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->t(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->v(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->z(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->y(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->u(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public static final t(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;)V
    .locals 1

    const-string v0, "$convertEntry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$convertArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$complete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->hasException()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;->getConvertSuccess()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ConvertArgs;->getOutputPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setDownloadLocalPath(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_SUCCESS:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->Companion:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;->onComplete()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p0

    invoke-virtual {p3, p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method public static final u(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->C(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    return-void
.end method

.method public static final v(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->handleCancel()V

    return-void
.end method

.method public static final w()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v1, "local doc convert finish!"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static final y(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;)V
    .locals 1

    const-string v0, "$convertEntry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$decryptPDFArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$complete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->hasException()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;->getDecryptDone()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getOutputFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setDownloadLocalPath(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_SUCCESS:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->Companion:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo$Companion;->onComplete()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    move-result-object p0

    invoke-virtual {p3, p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method public static final z(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$convertEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->C(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    return-void
.end method


# virtual methods
.method public final A()Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->l:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public final B(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V
    .locals 1

    const/16 v0, 0xca

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->D(ILcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    return-void
.end method

.method public final C(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_PROCESSING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->setProgressValue(I)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->B(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    return-void
.end method

.method public final D(ILcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setStatus(I)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setTaskId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->i:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setLocalList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->j:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setNetworkList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->h:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

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

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->i:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->i:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$f;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$g;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/t6f;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/t6f;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/u6f;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/u6f;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnComplete(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->k:Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;->setAbort()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->A()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public final getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->h:Lorg/greenrobot/eventbus/EventBus;

    return-object p0
.end method

.method public final handleCancel()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;-><init>()V

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->setStatus(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->h:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$a;

    invoke-direct {v2, v0, v7}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$a;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string v2, "doOnNext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$2;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v6, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;

    invoke-direct {v6, v7, p1, v3, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$3;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Ljava/lang/String;Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V

    invoke-static {v1, v2, v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v8

    new-instance v9, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$4;

    invoke-direct {v9, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;

    move-object v1, v0

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertDocumentToPdf$5;-><init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Ljava/lang/String;)V

    invoke-static {v8, v9, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$b;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$b;-><init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/reader/api/ConvertArgs;",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v2

    const-string v3, "create(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v7, Lcom/onyx/android/sdk/base/data/Size;

    sget-object v4, Lcom/onyx/android/sdk/neopdf/PdfUtils;->INSTANCE:Lcom/onyx/android/sdk/neopdf/PdfUtils;

    sget-object v5, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A4:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfCMToPx(Ljava/lang/Number;)I

    move-result v6

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/neopdf/PdfUtils;->pdfCMToPx(Ljava/lang/Number;)I

    move-result v4

    invoke-direct {v7, v6, v4}, Lcom/onyx/android/sdk/base/data/Size;-><init>(II)V

    new-instance v10, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v5

    new-instance v9, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertToPDF$convertToPDFRequest$1;

    invoke-direct {v9, v2}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertToPDF$convertToPDFRequest$1;-><init>(Ljava/lang/Object;)V

    move-object v4, v10

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->disableThrowException()V

    invoke-static {v0, v10}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    new-instance v5, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$c;

    invoke-direct {v5, v0, v10}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$c;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;)V

    invoke-virtual {v4, v5}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v11

    const-string v4, "doOnSubscribe(...)"

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/sunia/HTREnginev2/r6f;

    move-object/from16 v4, p2

    invoke-direct {v12, v1, v4, v3, v2}, Lcom/sunia/HTREnginev2/r6f;-><init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    new-instance v4, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertToPDF$3;

    invoke-direct {v4, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$convertToPDF$3;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V

    new-instance v5, Lcom/sunia/HTREnginev2/s6f;

    invoke-direct {v5, v0, v1}, Lcom/sunia/HTREnginev2/s6f;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    invoke-static {v2, v4, v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$d;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$d;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$e;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$e;-><init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "map(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final x(Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v2, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$decryptPDF$decryptPDFRequest$1;

    invoke-direct {v4, v0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$decryptPDF$decryptPDFRequest$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, p1, v4}, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->disableThrowException()V

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToReader(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$h;

    invoke-direct {v4, p0, v2}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$h;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;)V

    invoke-virtual {v3, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v5

    const-string v2, "doOnSubscribe(...)"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/sunia/HTREnginev2/p6f;

    invoke-direct {v6, p2, p1, v1, v0}, Lcom/sunia/HTREnginev2/p6f;-><init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    new-instance p1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$decryptPDF$3;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$decryptPDF$3;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/q6f;

    invoke-direct {v2, p0, p2}, Lcom/sunia/HTREnginev2/q6f;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    invoke-static {v0, p1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$i;

    invoke-direct {p1, v1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$i;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$j;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction$j;-><init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
