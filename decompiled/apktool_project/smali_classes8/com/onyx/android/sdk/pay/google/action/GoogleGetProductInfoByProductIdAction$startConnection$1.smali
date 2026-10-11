.class public final Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction$startConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction;->u(Lio/reactivex/rxjava3/subjects/ReplaySubject;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction$startConnection$1",
        "Lcom/android/billingclient/api/BillingClientStateListener;",
        "onBillingServiceDisconnected",
        "",
        "onBillingSetupFinished",
        "p0",
        "Lcom/android/billingclient/api/BillingResult;",
        "sdk-pay_overseasRelease"
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
.field public final synthetic a:Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction;

.field public final synthetic b:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction;Lio/reactivex/rxjava3/subjects/ReplaySubject;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction;",
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/pay/bean/ProductInfoBean;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction$startConnection$1;->a:Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction$startConnection$1;->b:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    iput-object p3, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction$startConnection$1;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction$startConnection$1;->a:Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction$startConnection$1;->b:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction$startConnection$1;->c:Ljava/util/List;

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction;->access$queryProduct(Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction;Lio/reactivex/rxjava3/subjects/ReplaySubject;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction$startConnection$1;->b:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
