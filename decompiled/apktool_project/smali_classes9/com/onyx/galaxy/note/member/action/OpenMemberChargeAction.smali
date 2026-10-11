.class public final Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenMemberChargeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenMemberChargeAction.kt\ncom/onyx/galaxy/note/member/action/OpenMemberChargeAction\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,108:1\n214#2:109\n*S KotlinDebug\n*F\n+ 1 OpenMemberChargeAction.kt\ncom/onyx/galaxy/note/member/action/OpenMemberChargeAction\n*L\n50#1:109\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\tH\u0002R\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "o",
        "n",
        "data",
        "",
        "p",
        "q",
        "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;",
        "g",
        "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;",
        "getFeatureChargeArgs",
        "()Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;",
        "featureChargeArgs",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "h",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "loginPublishSubject",
        "<init>",
        "(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)V",
        "note_overseasRelease"
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
        "SMAP\nOpenMemberChargeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenMemberChargeAction.kt\ncom/onyx/galaxy/note/member/action/OpenMemberChargeAction\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,108:1\n214#2:109\n*S KotlinDebug\n*F\n+ 1 OpenMemberChargeAction.kt\ncom/onyx/galaxy/note/member/action/OpenMemberChargeAction\n*L\n50#1:109\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "featureChargeArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->g:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    return-void
.end method

.method public static final synthetic access$getLoginPublishSubject$p(Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;)Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->h:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$loadMemberChargeData(Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;)Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->n()Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadUserStatusObservable(Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->o()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showChargeDialog(Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->p(Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->m(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 1

    const-string v0, "$loading"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/reactivex/rxjava3/core/Observable;->empty()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "empty(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$a;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$a;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$b;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$b;-><init>(Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$c;->e:Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$c;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getCloudScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$d;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$d;-><init>(Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$e;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$e;-><init>(Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v1, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$f;->e:Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$f;

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/bhk;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/bhk;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$create$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$create$$inlined$handleTimeoutError$1;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnError(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getFeatureChargeArgs()Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->g:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    return-object p0
.end method

.method public final n()Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/galaxy/note/member/service/MemberService;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/member/service/MemberService;

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->g:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;->getFunctionFrom()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/onyx/galaxy/note/member/service/MemberService;->getMemberChargeData(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    return-object p0
.end method

.method public final o()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->h:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->q()V

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticLoginPageShowEvent;

    sget-object v2, Lcom/onyx/android/sdk/data/LoginTriggerFrom;->HOME_PROGUIDE:Lcom/onyx/android/sdk/data/LoginTriggerFrom;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/event/StatisticLoginPageShowEvent;-><init>(Lcom/onyx/android/sdk/data/LoginTriggerFrom;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Lcom/onyx/galaxy/note/utils/Navigator;->navigateToLogin$default(Lcom/onyx/galaxy/note/utils/Navigator;Lcom/onyx/android/sdk/base/extension/StringMap;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final p(Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->g:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;->ensureOperationCode()V

    sget-object v1, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;->Companion:Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->g:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    invoke-virtual {v1, p1, p0}, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog$Companion;->createChargeFeatureDialog(Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;)Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/onyx/galaxy/note/member/dialog/ChargeFeatureDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final q()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;->h:Lio/reactivex/rxjava3/subjects/PublishSubject;

    if-eqz p0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;

    invoke-direct {v3, v1, v0, p0}, Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction$subscribeActivityLife$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/fragment/app/FragmentActivity;Lcom/onyx/galaxy/note/member/action/OpenMemberChargeAction;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
