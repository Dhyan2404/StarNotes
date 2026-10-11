.class public final Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000bH\u0014R\u001a\u0010\u0004\u001a\u00020\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "()V",
        "autoThrowException",
        "getAutoThrowException",
        "()Z",
        "setAutoThrowException",
        "(Z)V",
        "checkNetwork",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private autoThrowException:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->Companion:Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->autoThrowException:Z

    return-void
.end method

.method public static final synthetic access$checkNetwork(Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;)Z
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->checkNetwork()Z

    move-result p0

    return p0
.end method

.method private final checkNetwork()Z
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->autoThrowException:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const-string v0, "Network Check Fail"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction$create$1;-><init>(Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getAutoThrowException()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->autoThrowException:Z

    return p0
.end method

.method public final setAutoThrowException(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/account/action/NetworkCheckAction;->autoThrowException:Z

    return-void
.end method
