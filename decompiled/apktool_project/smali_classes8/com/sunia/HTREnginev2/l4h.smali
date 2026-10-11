.class public final synthetic Lcom/sunia/HTREnginev2/l4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/pay/google/action/GoogleGetProductInfoByProductIdAction;->n(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
