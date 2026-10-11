.class public final Lcom/android/billingclient/api/BillingClient$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public volatile a:Ljava/lang/String;

.field public volatile b:Lcom/android/billingclient/api/PendingPurchasesParams;

.field public final c:Landroid/content/Context;

.field public volatile d:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field public volatile e:Lcom/android/billingclient/api/zzco;

.field public volatile f:Lcom/sunia/HTREnginev2/fjp;

.field public volatile g:Lcom/android/billingclient/api/zzb;

.field public volatile h:Lcom/android/billingclient/api/UserChoiceBillingListener;

.field public volatile i:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile j:Z

.field public volatile k:Z

.field public volatile l:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/zzo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.google.android.play.billingclient.enableBillingOverridesTesting"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "BillingClient"

    const-string v2, "Unable to retrieve metadata value for enableBillingOverridesTesting."

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public build()Lcom/android/billingclient/api/BillingClient;
    .locals 18
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Landroid/content/Context;

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/billingclient/api/BillingClient$Builder;->d:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/billingclient/api/BillingClient$Builder;->h:Lcom/android/billingclient/api/UserChoiceBillingListener;

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClient$Builder;->j:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/billingclient/api/BillingClient$Builder;->k:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for purchases updates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingClient$Builder;->a()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/billingclient/api/h;

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/android/billingclient/api/h;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lcom/android/billingclient/api/a;

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/android/billingclient/api/a;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for Google Play Billing purchases updates when enabling User Choice Billing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, v0, Lcom/android/billingclient/api/BillingClient$Builder;->b:Lcom/android/billingclient/api/PendingPurchasesParams;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/android/billingclient/api/BillingClient$Builder;->b:Lcom/android/billingclient/api/PendingPurchasesParams;

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/android/billingclient/api/BillingClient$Builder;->d:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/billingclient/api/BillingClient$Builder;->h:Lcom/android/billingclient/api/UserChoiceBillingListener;

    if-nez v1, :cond_6

    iget-object v4, v0, Lcom/android/billingclient/api/BillingClient$Builder;->b:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object v5, v0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/billingclient/api/BillingClient$Builder;->d:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingClient$Builder;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/billingclient/api/h;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/billingclient/api/h;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/android/billingclient/api/a;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/billingclient/api/a;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_1

    :cond_6
    iget-object v12, v0, Lcom/android/billingclient/api/BillingClient$Builder;->b:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object v13, v0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Landroid/content/Context;

    iget-object v14, v0, Lcom/android/billingclient/api/BillingClient$Builder;->d:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iget-object v15, v0, Lcom/android/billingclient/api/BillingClient$Builder;->h:Lcom/android/billingclient/api/UserChoiceBillingListener;

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingClient$Builder;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/billingclient/api/h;

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lcom/android/billingclient/api/h;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/android/billingclient/api/a;

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lcom/android/billingclient/api/a;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_1

    :cond_8
    iget-object v3, v0, Lcom/android/billingclient/api/BillingClient$Builder;->b:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object v4, v0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/BillingClient$Builder;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/billingclient/api/h;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/h;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzco;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/android/billingclient/api/a;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/a;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzco;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    :goto_1
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pending purchases for one-time products must be supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableAlternativeBillingOnly()Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzf;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->j:Z

    return-object p0
.end method

.method public enableExternalOffer()Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzg;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->k:Z

    return-object p0
.end method

.method public enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    return-object p0
.end method

.method public enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0
    .param p1    # Lcom/android/billingclient/api/PendingPurchasesParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzj;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->b:Lcom/android/billingclient/api/PendingPurchasesParams;

    return-object p0
.end method

.method public enableUserChoiceBilling(Lcom/android/billingclient/api/UserChoiceBillingListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0
    .param p1    # Lcom/android/billingclient/api/UserChoiceBillingListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzk;
    .end annotation

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->h:Lcom/android/billingclient/api/UserChoiceBillingListener;

    return-object p0
.end method

.method public setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0
    .param p1    # Lcom/android/billingclient/api/PurchasesUpdatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->d:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method
