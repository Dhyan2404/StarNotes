.class public final Lcom/onyx/android/sdk/data/account/action/RebindPhoneOrEmailAction;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/action/RebindPhoneOrEmailAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "",
        "rebindArgs",
        "Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;",
        "(Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;)V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "rebindPhoneOrEmail",
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
.field private final rebindArgs:Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rebindArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/action/RebindPhoneOrEmailAction;->rebindArgs:Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;

    return-void
.end method

.method public static final synthetic access$rebindPhoneOrEmail(Lcom/onyx/android/sdk/data/account/action/RebindPhoneOrEmailAction;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/RebindPhoneOrEmailAction;->rebindPhoneOrEmail()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final rebindPhoneOrEmail()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/RebindPhoneOrEmailRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/RebindPhoneOrEmailAction;->rebindArgs:Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/RebindPhoneOrEmailRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/RebindPhoneOrEmailRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;->createCloudObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/RebindPhoneOrEmailAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/action/RebindPhoneOrEmailAction$create$1;-><init>(Lcom/onyx/android/sdk/data/account/action/RebindPhoneOrEmailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
