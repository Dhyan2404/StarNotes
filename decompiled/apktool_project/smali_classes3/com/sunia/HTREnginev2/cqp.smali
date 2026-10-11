.class public final Lcom/sunia/HTREnginev2/cqp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field public final c:Lcom/android/billingclient/api/zzb;

.field public final d:Lcom/android/billingclient/api/UserChoiceBillingListener;

.field public final e:Lcom/sunia/HTREnginev2/fjp;

.field public final f:Lcom/sunia/HTREnginev2/bpp;

.field public final g:Lcom/sunia/HTREnginev2/bpp;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cqp;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cqp;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/cqp;->c:Lcom/android/billingclient/api/zzb;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/cqp;->d:Lcom/android/billingclient/api/UserChoiceBillingListener;

    iput-object p6, p0, Lcom/sunia/HTREnginev2/cqp;->e:Lcom/sunia/HTREnginev2/fjp;

    new-instance p1, Lcom/sunia/HTREnginev2/bpp;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/sunia/HTREnginev2/bpp;-><init>(Lcom/sunia/HTREnginev2/cqp;Z)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cqp;->f:Lcom/sunia/HTREnginev2/bpp;

    new-instance p1, Lcom/sunia/HTREnginev2/bpp;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sunia/HTREnginev2/bpp;-><init>(Lcom/sunia/HTREnginev2/cqp;Z)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cqp;->g:Lcom/sunia/HTREnginev2/bpp;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/zzb;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cqp;->c:Lcom/android/billingclient/api/zzb;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sunia/HTREnginev2/cqp;)Lcom/sunia/HTREnginev2/fjp;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cqp;->e:Lcom/sunia/HTREnginev2/fjp;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cqp;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sunia/HTREnginev2/cqp;)Lcom/android/billingclient/api/UserChoiceBillingListener;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cqp;->d:Lcom/android/billingclient/api/UserChoiceBillingListener;

    return-object p0
.end method


# virtual methods
.method public final d()Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cqp;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cqp;->f:Lcom/sunia/HTREnginev2/bpp;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/cqp;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/bpp;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cqp;->g:Lcom/sunia/HTREnginev2/bpp;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cqp;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/bpp;->c(Landroid/content/Context;)V

    return-void
.end method

.method public final g(Z)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/cqp;->h:Z

    iget-object p1, p0, Lcom/sunia/HTREnginev2/cqp;->g:Lcom/sunia/HTREnginev2/bpp;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/cqp;->a:Landroid/content/Context;

    invoke-virtual {p1, v2, v1}, Lcom/sunia/HTREnginev2/bpp;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/cqp;->h:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/cqp;->f:Lcom/sunia/HTREnginev2/bpp;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cqp;->a:Landroid/content/Context;

    const-string v1, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    invoke-virtual {p1, p0, v0, v1}, Lcom/sunia/HTREnginev2/bpp;->b(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sunia/HTREnginev2/cqp;->f:Lcom/sunia/HTREnginev2/bpp;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cqp;->a:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/sunia/HTREnginev2/bpp;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method
