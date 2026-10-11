.class public final Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;-><init>()V
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
        "com/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1",
        "Lcom/android/billingclient/api/BillingClientStateListener;",
        "onBillingServiceDisconnected",
        "",
        "onBillingSetupFinished",
        "billingResult",
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
.field public final synthetic a:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;->a:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;->a:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->access$failPayment(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;I)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v0, "service connect success!"

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;->a:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;

    invoke-static {p0}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->access$getProductDetails(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity$clientStateListener$1;->a:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->access$failPayment(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;I)V

    :goto_0
    return-void
.end method
