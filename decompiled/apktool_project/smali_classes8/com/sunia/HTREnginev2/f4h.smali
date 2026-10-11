.class public final synthetic Lcom/sunia/HTREnginev2/f4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f4h;->a:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;

    return-void
.end method


# virtual methods
.method public final onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f4h;->a:Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;->E(Lcom/onyx/android/sdk/pay/google/ui/GoogleConsumptionPayActivity;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
