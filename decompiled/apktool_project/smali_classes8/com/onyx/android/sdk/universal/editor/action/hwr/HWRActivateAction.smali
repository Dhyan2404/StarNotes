.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u0000 52\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u00015B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u00083\u00104J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0008\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000b\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\tH\u0002J\u0008\u0010\r\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00102\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u00101\u00a8\u00066"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "productKey",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "getSDKActivatedOption",
        "m",
        "",
        "n",
        "l",
        "q",
        "p",
        "",
        "error",
        "o",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "e",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "hwrBundle",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "f",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "recognizerType",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setEditorBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "editorBundle",
        "h",
        "Ljava/lang/String;",
        "engine",
        "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
        "i",
        "Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;",
        "record",
        "Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;",
        "j",
        "Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;",
        "config",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "k",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "input",
        "",
        "J",
        "millis",
        "<init>",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V",
        "Companion",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$Companion;

    const-string v0, "device_fisrt_activated"

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hwrBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recognizerType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->f:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-static {p2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->h:Ljava/lang/String;

    new-instance p1, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->i:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    new-instance p1, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->j:Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    new-instance p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->k:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->millisOfNow()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->l:J

    return-void
.end method

.method public static final synthetic access$commitActivateRecord(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->l()V

    return-void
.end method

.method public static final synthetic access$createActivateObservable(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getKEY_SDK_FIRST_ACTIVATED$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$initRecognizer(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->n()V

    return-void
.end method

.method public static final synthetic access$notifySDKFinishFirstActivation(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->o(Z)V

    return-void
.end method

.method public static final synthetic access$notifySDKStartFirstActivation(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->p()V

    return-void
.end method

.method public static final synthetic access$notifyTrialActivated(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->q()V

    return-void
.end method

.method public static final synthetic access$setConfig$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->j:Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    return-void
.end method

.method public static final synthetic access$setRecord$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->i:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getSDKActivatedOption(Ljava/lang/String;)Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "productKey"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->m:Ljava/lang/String;

    filled-new-array {p0, v0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final l()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/account/CloudAccountService;

    invoke-interface {v1}, Lcom/onyx/android/sdk/data/account/CloudAccountService;->commitHWRActivationLog()Lretrofit2/Call;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetResponse$default(Lcom/onyx/android/sdk/data/utils/RetrofitExt;Lretrofit2/Call;ZILjava/lang/Object;)Lcom/onyx/android/sdk/data/account/bean/DataResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/DataResponse;->getServerTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->l:J

    return-void
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->f:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->needActivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->f:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-static {v0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->isEngineActivated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getHwrObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$g;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$g;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->isEngineExceedDeviceLimit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$h;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$i;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$j;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$k;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$l;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$m;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getHwrObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$n;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCloudObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$o;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$c;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$d;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$e;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v0, "Exceed Max Device Limit"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0
.end method

.method public final n()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->k:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->f:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setRecognizerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->k:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->j:Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setAppId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->k:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->j:Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;->getProductKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setProductKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->k:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setUserOpenId(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->k:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->initHWRInputByEngine(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->e:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->f:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->k:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->initRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    const-class v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;

    const-string v3, "Init HWR Recognizer Fail"

    invoke-virtual {v1, v2, v3, v0}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/HWREngineInitFailedEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/HWREngineInitFailedEvent;-><init>()V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    throw v0
.end method

.method public final o(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/HWRFinishSDKFirstActivationEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/HWRFinishSDKFirstActivationEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->j:Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;->getProductKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->getSDKActivatedOption(Ljava/lang/String;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/HWRFinishSDKFirstActivationEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/HWRFinishSDKFirstActivationEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_2
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    :cond_3
    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->j:Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;->getProductKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->getSDKActivatedOption(Ljava/lang/String;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/HWRStartSDKFirstActivationEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/HWRStartSDKFirstActivationEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->getHWREngineActivationState(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/HWRTrialActivatedEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/HWRTrialActivatedEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method
