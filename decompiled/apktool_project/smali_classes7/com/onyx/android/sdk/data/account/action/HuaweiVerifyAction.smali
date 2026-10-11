.class public final Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "",
        "verifyArgs",
        "Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;",
        "(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)V",
        "create",
        "Lio/reactivex/rxjava3/core/Observable;",
        "startHuaweiVerify",
        "",
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
.field private final verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "verifyArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    return-void
.end method

.method public static final synthetic access$startHuaweiVerify(Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;->startHuaweiVerify()V

    return-void
.end method

.method private final startHuaweiVerify()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiLogoffRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiLogoffRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiLogoffRequest;->execute()V

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->logoffAccount()V

    goto :goto_0

    :sswitch_1
    const-string v1, "security"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiSecurityVerifyRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;->getCode()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiSecurityVerifyRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiSecurityVerifyRequest;->execute()V

    goto :goto_0

    :sswitch_2
    const-string v1, "bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiBindRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiBindRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiBindRequest;->execute()V

    goto :goto_0

    :sswitch_3
    const-string v1, "unbind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiUnbindRequest;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;->verifyArgs:Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiUnbindRequest;-><init>(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/request/cloud/HuaweiUnbindRequest;->execute()V

    :cond_5
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x321cc1aa -> :sswitch_3
        0x2e243d -> :sswitch_2
        0x38927740 -> :sswitch_1
        0x5cd39ffa -> :sswitch_0
    .end sparse-switch
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

    new-instance v1, Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction$create$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction$create$1;-><init>(Lcom/onyx/android/sdk/data/account/action/HuaweiVerifyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
