.class public final Lcom/sunia/HTREnginev2/ahp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/android/billingclient/api/PurchasesResponseListener;

.field public final synthetic g:Lcom/android/billingclient/api/a;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/a;Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 0

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ahp;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ahp;->f:Lcom/android/billingclient/api/PurchasesResponseListener;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ahp;->g:Lcom/android/billingclient/api/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ahp;->g:Lcom/android/billingclient/api/a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ahp;->e:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/a;->w0(Lcom/android/billingclient/api/a;Ljava/lang/String;I)Lcom/android/billingclient/api/zzcv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzcv;->zzb()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ahp;->f:Lcom/android/billingclient/api/PurchasesResponseListener;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzcv;->zza()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzcv;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/ahp;->f:Lcom/android/billingclient/api/PurchasesResponseListener;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzcv;->zza()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
