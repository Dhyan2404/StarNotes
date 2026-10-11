.class public final Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002Jd\u0010\u0003\u001a\u00020\u00042\u001e\u0008\u0002\u0010\u0005\u001a\u0018\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u00082\u001e\u0008\u0002\u0010\t\u001a\u0018\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\u0006j\u0008\u0012\u0004\u0012\u00020\n`\u00082\u0012\u0008\u0002\u0010\u000b\u001a\u000c\u0012\u0004\u0012\u00020\u00040\u000cj\u0002`\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;",
        "",
        "()V",
        "checkNetwork",
        "",
        "doOnNext",
        "Lkotlin/Function1;",
        "",
        "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;",
        "doOnError",
        "",
        "doFinally",
        "Lkotlin/Function0;",
        "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;",
        "showTimeoutMessage",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;->checkNetwork$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic checkNetwork$default(Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion$checkNetwork$1;->INSTANCE:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion$checkNetwork$1;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion$checkNetwork$2;->INSTANCE:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion$checkNetwork$2;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion$checkNetwork$3;->INSTANCE:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion$checkNetwork$3;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;->checkNetwork(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method

.method private static final checkNetwork$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final checkNetwork(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Z)V
    .locals 6
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    const-string p0, "doOnNext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "doOnError"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "doFinally"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance p0, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$sam$io_reactivex_rxjava3_functions_Consumer$0;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$sam$io_reactivex_rxjava3_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$sam$io_reactivex_rxjava3_functions_Consumer$0;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$sam$io_reactivex_rxjava3_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/qtj;

    invoke-direct {p1, p3}, Lcom/sunia/HTREnginev2/qtj;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doFinally(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-instance v3, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion$checkNetwork$4;

    invoke-direct {v3, p4}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion$checkNetwork$4;-><init>(Z)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
