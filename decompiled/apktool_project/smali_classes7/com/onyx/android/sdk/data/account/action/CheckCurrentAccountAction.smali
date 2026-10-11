.class public final Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "",
        "username",
        "",
        "(Ljava/lang/String;)V",
        "checkIsCurrentAccount",
        "",
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
.field private final username:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;->username:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$checkIsCurrentAccount(Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;->checkIsCurrentAccount()V

    return-void
.end method

.method private final checkIsCurrentAccount()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;->username:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getPhone()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/common/error/OnyxException;->Companion:Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;

    const v0, 0x18ed4

    const-string v1, "Verify Fail"

    invoke-virtual {p0, v1, v1, v0}, Lcom/onyx/android/sdk/base/common/error/OnyxException$Companion;->of(Ljava/lang/String;Ljava/lang/String;I)Lcom/onyx/android/sdk/base/common/error/OnyxException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction$create$1;-><init>(Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction$create$2;->INSTANCE:Lcom/onyx/android/sdk/data/account/action/CheckCurrentAccountAction$create$2;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
