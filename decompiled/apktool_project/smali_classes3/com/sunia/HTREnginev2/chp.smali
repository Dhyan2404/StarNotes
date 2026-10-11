.class public final Lcom/sunia/HTREnginev2/chp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

.field public final synthetic g:Lcom/android/billingclient/api/a;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/a;Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 0

    iput-object p2, p0, Lcom/sunia/HTREnginev2/chp;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/chp;->f:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/chp;->g:Lcom/android/billingclient/api/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/chp;->g:Lcom/android/billingclient/api/a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/chp;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/a;->T0(Lcom/android/billingclient/api/a;Ljava/lang/String;)Lcom/sunia/HTREnginev2/hip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/hip;->a()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/hip;->b()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/chp;->f:Lcom/android/billingclient/api/PurchaseHistoryResponseListener;

    invoke-interface {p0, v1, v0}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    const/4 p0, 0x0

    return-object p0
.end method
