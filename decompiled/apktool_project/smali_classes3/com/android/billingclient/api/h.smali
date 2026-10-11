.class public final Lcom/android/billingclient/api/h;
.super Lcom/android/billingclient/api/a;
.source "SourceFile"


# instance fields
.field public final G:Landroid/content/Context;

.field public volatile H:I

.field public volatile I:Lcom/google/android/gms/internal/play_billing/zzav;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile J:Lcom/android/billingclient/api/g;

.field public volatile K:Lcom/google/android/gms/internal/play_billing/zzew;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/sunia/HTREnginev2/fjp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p1, p1}, Lcom/android/billingclient/api/a;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/h;->H:I

    iput-object p2, p0, Lcom/android/billingclient/api/h;->G:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/billingclient/api/UserChoiceBillingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/sunia/HTREnginev2/fjp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/a;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/h;->H:I

    iput-object p3, p0, Lcom/android/billingclient/api/h;->G:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/billingclient/api/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/sunia/HTREnginev2/fjp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/a;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/h;->H:I

    iput-object p3, p0, Lcom/android/billingclient/api/h;->G:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzco;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/sunia/HTREnginev2/fjp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/a;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzco;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/h;->H:I

    iput-object p3, p0, Lcom/android/billingclient/api/h;->G:Landroid/content/Context;

    return-void
.end method

.method public static final A1(I)Z
    .locals 0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic H1(Lcom/android/billingclient/api/h;Lcom/google/android/gms/internal/play_billing/zzav;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/h;->I:Lcom/google/android/gms/internal/play_billing/zzav;

    return-void
.end method

.method public static bridge synthetic I1(Lcom/android/billingclient/api/h;I)V
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/h;->H:I

    return-void
.end method

.method public static bridge synthetic q1(Lcom/android/billingclient/api/h;I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/billingclient/api/h;->A1(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic s1(Lcom/android/billingclient/api/h;II)Lcom/android/billingclient/api/BillingResult;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/h;->B1(II)Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u1(Lcom/android/billingclient/api/h;IILcom/android/billingclient/api/BillingResult;)V
    .locals 0

    const/16 p2, 0x1c

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/billingclient/api/h;->D1(IILcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public static bridge synthetic v1(Lcom/android/billingclient/api/h;I)V
    .locals 0

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/h;->E1(I)V

    return-void
.end method


# virtual methods
.method public final B1(II)Lcom/android/billingclient/api/BillingResult;
    .locals 1

    const-string v0, "Billing override value was set by a license tester."

    invoke-static {p2, v0}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p2

    const/16 v0, 0x69

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/billingclient/api/h;->D1(IILcom/android/billingclient/api/BillingResult;)V

    return-object p2
.end method

.method public final C1(I)Lcom/google/android/gms/internal/play_billing/zzeu;
    .locals 2

    invoke-virtual {p0}, Lcom/android/billingclient/api/h;->r1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "BillingClientTesting"

    const-string v0, "Billing Override Service is not ready."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string v0, "Billing Override Service connection is disconnected."

    invoke-static {p1, v0}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/16 v0, 0x6a

    const/16 v1, 0x1c

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/h;->D1(IILcom/android/billingclient/api/BillingResult;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzel;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzeu;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/billingclient/api/zzbs;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzbs;-><init>(Lcom/android/billingclient/api/h;I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzv;->zza(Lcom/android/billingclient/api/zzbs;)Lcom/google/android/gms/internal/play_billing/zzeu;

    move-result-object p0

    return-object p0
.end method

.method public final D1(IILcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object p1

    const-string p2, "ApiFailure should not be null"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->V0()Lcom/sunia/HTREnginev2/fjp;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/fjp;->c(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    return-void
.end method

.method public final E1(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzkd;

    move-result-object p1

    const-string v0, "ApiSuccess should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->V0()Lcom/sunia/HTREnginev2/fjp;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/fjp;->g(Lcom/google/android/gms/internal/play_billing/zzkd;)V

    return-void
.end method

.method public final F1(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/h;->C1(I)Lcom/google/android/gms/internal/play_billing/zzeu;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/android/billingclient/api/h;->x1()Lcom/google/android/gms/internal/play_billing/zzew;

    move-result-object v2

    const-wide/16 v3, 0x6f54

    invoke-static {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzel;->zzb(Lcom/google/android/gms/internal/play_billing/zzeu;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzeu;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/pip;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/pip;-><init>(Lcom/android/billingclient/api/h;ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->a1()Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/play_billing/zzel;->zzc(Lcom/google/android/gms/internal/play_billing/zzeu;Lcom/google/android/gms/internal/play_billing/zzej;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final synthetic G1(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/a;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method

.method public final acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/billingclient/api/zzbv;

    invoke-direct {v0, p2}, Lcom/android/billingclient/api/zzbv;-><init>(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    new-instance v1, Lcom/android/billingclient/api/zzbw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzbw;-><init>(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/billingclient/api/h;->F1(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/zzbq;

    invoke-direct {v0, p2, p1}, Lcom/android/billingclient/api/zzbq;-><init>(Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    new-instance v1, Lcom/android/billingclient/api/zzbr;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzbr;-><init>(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/billingclient/api/h;->F1(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final endConnection()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/billingclient/api/h;->y1()V

    invoke-super {p0}, Lcom/android/billingclient/api/a;->endConnection()V

    return-void
.end method

.method public final synthetic l1(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/a;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void
.end method

.method public final launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 3

    new-instance v0, Lcom/android/billingclient/api/zzbx;

    invoke-direct {v0, p0}, Lcom/android/billingclient/api/zzbx;-><init>(Lcom/android/billingclient/api/h;)V

    new-instance v1, Lcom/android/billingclient/api/zzbo;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzbo;-><init>(Lcom/android/billingclient/api/h;Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/h;->C1(I)Lcom/google/android/gms/internal/play_billing/zzeu;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/billingclient/api/h;->w1(Lcom/google/android/gms/internal/play_billing/zzeu;)I

    move-result p2

    invoke-static {p2}, Lcom/android/billingclient/api/h;->A1(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/h;->B1(II)Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/BillingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p2

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x73

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/billingclient/api/h;->D1(IILcom/android/billingclient/api/BillingResult;)V

    const-string p0, "BillingClientTesting"

    const-string p1, "An internal error occurred."

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final synthetic m1(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/a;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method public final synthetic n1(Lcom/android/billingclient/api/BillingResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-void
.end method

.method public final synthetic o1(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/a;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method public final synthetic p1(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/billingclient/api/a;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method

.method public final queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/zzbn;

    invoke-direct {v0, p2}, Lcom/android/billingclient/api/zzbn;-><init>(Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    new-instance v1, Lcom/android/billingclient/api/zzbp;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzbp;-><init>(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/billingclient/api/h;->F1(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/zzbt;

    invoke-direct {v0, p2}, Lcom/android/billingclient/api/zzbt;-><init>(Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    new-instance v1, Lcom/android/billingclient/api/zzbu;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/billingclient/api/zzbu;-><init>(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/billingclient/api/h;->F1(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized r1()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/billingclient/api/h;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/h;->I:Lcom/google/android/gms/internal/play_billing/zzav;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/h;->J:Lcom/android/billingclient/api/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/billingclient/api/h;->z1()V

    invoke-super {p0, p1}, Lcom/android/billingclient/api/a;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public final synthetic t1(ILcom/google/android/gms/internal/play_billing/zzr;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/h;->I:Lcom/google/android/gms/internal/play_billing/zzav;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/h;->I:Lcom/google/android/gms/internal/play_billing/zzav;

    iget-object v1, p0, Lcom/android/billingclient/api/h;->G:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    const-string p1, "QUERY_SKU_DETAILS_ASYNC"

    goto :goto_0

    :pswitch_0
    const-string p1, "QUERY_PRODUCT_DETAILS_ASYNC"

    goto :goto_0

    :pswitch_1
    const-string p1, "START_CONNECTION"

    goto :goto_0

    :pswitch_2
    const-string p1, "IS_FEATURE_SUPPORTED"

    goto :goto_0

    :pswitch_3
    const-string p1, "CONSUME_ASYNC"

    goto :goto_0

    :pswitch_4
    const-string p1, "ACKNOWLEDGE_PURCHASE"

    goto :goto_0

    :pswitch_5
    const-string p1, "LAUNCH_BILLING_FLOW"

    :goto_0
    new-instance v2, Lcom/sunia/HTREnginev2/qip;

    invoke-direct {v2, p2}, Lcom/sunia/HTREnginev2/qip;-><init>(Lcom/google/android/gms/internal/play_billing/zzr;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/gms/internal/play_billing/zzav;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzax;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/16 v0, 0x1c

    sget-object v1, Lcom/android/billingclient/api/i;->G:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x6b

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/billingclient/api/h;->D1(IILcom/android/billingclient/api/BillingResult;)V

    const-string p0, "BillingClientTesting"

    const-string v0, "An error occurred while retrieving billing override."

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/play_billing/zzr;->zzb(Ljava/lang/Object;)Z

    :goto_1
    const-string p0, "billingOverrideService.getBillingOverride"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w1(Lcom/google/android/gms/internal/play_billing/zzeu;)I
    .locals 6

    const-string v0, "BillingClientTesting"

    const/4 v1, 0x0

    const/16 v2, 0x1c

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x6f54

    invoke-interface {p1, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    instance-of v3, p1, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/16 v3, 0x6b

    sget-object v4, Lcom/android/billingclient/api/i;->G:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/billingclient/api/h;->D1(IILcom/android/billingclient/api/BillingResult;)V

    const-string p0, "An error occurred while retrieving billing override."

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :catch_1
    move-exception p1

    const/16 v3, 0x72

    sget-object v4, Lcom/android/billingclient/api/i;->G:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/billingclient/api/h;->D1(IILcom/android/billingclient/api/BillingResult;)V

    const-string p0, "Asynchronous call to Billing Override Service timed out."

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final declared-synchronized x1()Lcom/google/android/gms/internal/play_billing/zzew;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/h;->K:Lcom/google/android/gms/internal/play_billing/zzew;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfb;->zzb(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/play_billing/zzew;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/h;->K:Lcom/google/android/gms/internal/play_billing/zzew;

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/h;->K:Lcom/google/android/gms/internal/play_billing/zzew;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y1()V
    .locals 4

    monitor-enter p0

    const/16 v0, 0x1b

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/h;->E1(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x3

    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/h;->J:Lcom/android/billingclient/api/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/billingclient/api/h;->I:Lcom/google/android/gms/internal/play_billing/zzav;

    if-eqz v1, :cond_0

    const-string v1, "BillingClientTesting"

    const-string v3, "Unbinding from Billing Override Service."

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/billingclient/api/h;->G:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/h;->J:Lcom/android/billingclient/api/g;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, Lcom/android/billingclient/api/g;

    invoke-direct {v1, p0, v2}, Lcom/android/billingclient/api/g;-><init>(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/zzcb;)V

    iput-object v1, p0, Lcom/android/billingclient/api/h;->J:Lcom/android/billingclient/api/g;

    :cond_0
    iput-object v2, p0, Lcom/android/billingclient/api/h;->I:Lcom/google/android/gms/internal/play_billing/zzav;

    iget-object v1, p0, Lcom/android/billingclient/api/h;->K:Lcom/google/android/gms/internal/play_billing/zzew;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/billingclient/api/h;->K:Lcom/google/android/gms/internal/play_billing/zzew;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/android/billingclient/api/h;->K:Lcom/google/android/gms/internal/play_billing/zzew;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BillingClientTesting"

    const-string v3, "There was an exception while ending Billing Override Service connection!"

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    :try_start_3
    iput v0, p0, Lcom/android/billingclient/api/h;->H:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    iput v0, p0, Lcom/android/billingclient/api/h;->H:I

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z1()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/h;->r1()Z

    move-result v0

    const/16 v1, 0x1a

    if-eqz v0, :cond_0

    const-string v0, "BillingClientTesting"

    const-string v2, "Billing Override Service connection is valid. No need to re-initialize."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/h;->E1(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/billingclient/api/h;->H:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "BillingClientTesting"

    const-string v1, "Client is already in the process of connecting to Billing Override Service."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/android/billingclient/api/h;->H:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const-string v0, "BillingClientTesting"

    const-string v2, "Billing Override Service Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Billing Override Service connection is disconnected."

    const/4 v2, -0x1

    invoke-static {v2, v0}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const/16 v2, 0x26

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/billingclient/api/h;->D1(IILcom/android/billingclient/api/BillingResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iput v2, p0, Lcom/android/billingclient/api/h;->H:I

    const-string v0, "BillingClientTesting"

    const-string v3, "Starting Billing Override Service setup."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/g;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/billingclient/api/g;-><init>(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/zzcb;)V

    iput-object v0, p0, Lcom/android/billingclient/api/h;->J:Lcom/android/billingclient/api/g;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.apps.play.billingtestcompanion"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/billingclient/api/h;->G:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/16 v5, 0x29

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_6

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v6, "com.google.android.apps.play.billingtestcompanion"

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x27

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/h;->G:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/billingclient/api/h;->J:Lcom/android/billingclient/api/g;

    invoke-virtual {v0, v3, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BillingClientTesting"

    const-string v1, "Billing Override Service was bonded successfully."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    const-string v0, "BillingClientTesting"

    const-string v2, "Connection to Billing Override Service is blocked."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "BillingClientTesting"

    const-string v2, "The device doesn\'t have valid Play Billing Lab."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v2, v7

    goto :goto_1

    :cond_5
    move v2, v5

    :cond_6
    :goto_1
    iput v4, p0, Lcom/android/billingclient/api/h;->H:I

    const-string v0, "BillingClientTesting"

    const-string v3, "Billing Override Service unavailable on device."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Billing Override Service unavailable on device."

    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/billingclient/api/h;->D1(IILcom/android/billingclient/api/BillingResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
