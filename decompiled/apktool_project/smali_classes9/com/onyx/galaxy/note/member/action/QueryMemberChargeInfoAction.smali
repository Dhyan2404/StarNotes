.class public final Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction;
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
    value = "SMAP\nQueryMemberChargeInfoAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryMemberChargeInfoAction.kt\ncom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,30:1\n214#2:31\n*S KotlinDebug\n*F\n+ 1 QueryMemberChargeInfoAction.kt\ncom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction\n*L\n22#1:31\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;",
        "g",
        "Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;",
        "featureChargeArgs",
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
        "SMAP\nQueryMemberChargeInfoAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryMemberChargeInfoAction.kt\ncom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction\n+ 2 OnyxErrorHandler.kt\ncom/onyx/android/sdk/data/common/error/OnyxErrorHandler\n*L\n1#1,30:1\n214#2:31\n*S KotlinDebug\n*F\n+ 1 QueryMemberChargeInfoAction.kt\ncom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction\n*L\n22#1:31\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction;->g:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    return-void
.end method

.method public static final synthetic access$loadMemberChargeData(Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction;)Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction;->l()Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
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

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getCloudScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction$a;-><init>(Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction$b;->e:Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction$b;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnError(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction$create$$inlined$handleTimeoutError$1;->INSTANCE:Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction$create$$inlined$handleTimeoutError$1;

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->INSTANCE:Lcom/onyx/android/sdk/data/utils/RetrofitExt;

    sget-object v1, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->INSTANCE:Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;

    const-class v2, Lcom/onyx/galaxy/note/member/service/MemberService;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/cloud/v1/ServiceFactory;->getOnyxApiV2Service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/member/service/MemberService;

    iget-object p0, p0, Lcom/onyx/galaxy/note/member/action/QueryMemberChargeInfoAction;->g:Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/member/data/FeatureChargeArgs;->getFunctionFrom()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/onyx/galaxy/note/member/service/MemberService;->getMemberChargeData(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/RetrofitExt;->executeAndGetData(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/member/data/ChargeFeatureBean;

    return-object p0
.end method
