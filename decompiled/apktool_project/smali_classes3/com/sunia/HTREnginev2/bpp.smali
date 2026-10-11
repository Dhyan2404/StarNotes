.class public final Lcom/sunia/HTREnginev2/bpp;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public a:Z

.field public final b:Z

.field public final synthetic c:Lcom/sunia/HTREnginev2/cqp;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/cqp;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/bpp;->b:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/bpp;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/bpp;->b:Z

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    iput-boolean v2, p0, Lcom/sunia/HTREnginev2/bpp;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean p3, p0, Lcom/sunia/HTREnginev2/bpp;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    const/16 v0, 0x21

    const/4 v6, 0x1

    if-lt p3, v0, :cond_2

    iget-boolean p3, p0, Lcom/sunia/HTREnginev2/bpp;->b:Z

    if-eq v6, p3, :cond_1

    const/4 p3, 0x4

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    :goto_0
    move v5, p3

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_1
    iput-boolean v6, p0, Lcom/sunia/HTREnginev2/bpp;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/bpp;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/bpp;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "BillingBroadcastManager"

    const-string v0, "Receiver is not registered."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V
    .locals 2

    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cqp;->b(Lcom/sunia/HTREnginev2/cqp;)Lcom/sunia/HTREnginev2/fjp;

    move-result-object p0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzgw;->zza()Lcom/google/android/gms/internal/play_billing/zzgw;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjz;->zzC([BLcom/google/android/gms/internal/play_billing/zzgw;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/fjp;->c(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cqp;->b(Lcom/sunia/HTREnginev2/cqp;)Lcom/sunia/HTREnginev2/fjp;

    move-result-object p0

    const/16 p1, 0x17

    invoke-static {p1, p3, p2}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/fjp;->c(Lcom/google/android/gms/internal/play_billing/zzjz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p0, "BillingBroadcastManager"

    const-string p1, "Failed parsing Api failure."

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "BillingBroadcastManager"

    if-nez p1, :cond_0

    const-string p1, "Bundle is null."

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/cqp;->b(Lcom/sunia/HTREnginev2/cqp;)Lcom/sunia/HTREnginev2/fjp;

    move-result-object p1

    sget-object p2, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0xb

    invoke-static {v2, v1, p2}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sunia/HTREnginev2/fjp;->c(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cqp;->c(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cqp;->c(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_0
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzf(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v4, "INTENT_SOURCE"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "LAUNCH_BILLING_FLOW"

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    const-string v4, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v4, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, v3, v1}, Lcom/sunia/HTREnginev2/bpp;->d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cqp;->c(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/cqp;->a(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/zzb;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {p2}, Lcom/sunia/HTREnginev2/cqp;->e(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "AlternativeBillingListener and UserChoiceBillingListener is null."

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/cqp;->b(Lcom/sunia/HTREnginev2/cqp;)Lcom/sunia/HTREnginev2/fjp;

    move-result-object p1

    sget-object p2, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x4d

    invoke-static {v0, v1, p2}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunia/HTREnginev2/fjp;->c(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cqp;->c(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_5
    :goto_1
    const-string p2, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    :try_start_0
    iget-object p2, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/cqp;->e(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, Lcom/android/billingclient/api/UserChoiceDetails;

    invoke-direct {p2, p1}, Lcom/android/billingclient/api/UserChoiceDetails;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/cqp;->e(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/UserChoiceBillingListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/billingclient/api/UserChoiceBillingListener;->userSelectedAlternativeBilling(Lcom/android/billingclient/api/UserChoiceDetails;)V

    goto :goto_4

    :cond_6
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "products"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_8

    new-instance v6, Lcom/android/billingclient/api/zzc;

    invoke-direct {v6, v5, v0}, Lcom/android/billingclient/api/zzc;-><init>(Lorg/json/JSONObject;Lcom/android/billingclient/api/zzd;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    iget-object p2, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p2}, Lcom/sunia/HTREnginev2/cqp;->a(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/zzb;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/billingclient/api/zzb;->zza()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-object p0, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cqp;->b(Lcom/sunia/HTREnginev2/cqp;)Lcom/sunia/HTREnginev2/fjp;

    move-result-object p0

    invoke-static {v1}, Lcom/android/billingclient/api/zzcg;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzkd;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/fjp;->g(Lcom/google/android/gms/internal/play_billing/zzkd;)V

    return-void

    :catch_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error when parsing invalid user choice data: [%s]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/cqp;->b(Lcom/sunia/HTREnginev2/cqp;)Lcom/sunia/HTREnginev2/fjp;

    move-result-object p1

    sget-object p2, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x11

    invoke-static {v0, v1, p2}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunia/HTREnginev2/fjp;->c(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cqp;->c(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_a
    const-string p1, "Couldn\'t find alternative billing user choice data in bundle."

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/cqp;->b(Lcom/sunia/HTREnginev2/cqp;)Lcom/sunia/HTREnginev2/fjp;

    move-result-object p1

    sget-object p2, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x10

    invoke-static {v0, v1, p2}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunia/HTREnginev2/fjp;->c(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cqp;->c(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_b
    return-void

    :cond_c
    :goto_5
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzj(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_d

    iget-object p1, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/cqp;->b(Lcom/sunia/HTREnginev2/cqp;)Lcom/sunia/HTREnginev2/fjp;

    move-result-object p1

    invoke-static {v1}, Lcom/android/billingclient/api/zzcg;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzkd;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sunia/HTREnginev2/fjp;->g(Lcom/google/android/gms/internal/play_billing/zzkd;)V

    goto :goto_6

    :cond_d
    invoke-virtual {p0, p1, v3, v1}, Lcom/sunia/HTREnginev2/bpp;->d(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V

    :goto_6
    iget-object p0, p0, Lcom/sunia/HTREnginev2/bpp;->c:Lcom/sunia/HTREnginev2/cqp;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cqp;->c(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p0

    invoke-interface {p0, v3, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
