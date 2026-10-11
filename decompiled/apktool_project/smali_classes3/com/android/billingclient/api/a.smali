.class public Lcom/android/billingclient/api/a;
.super Lcom/android/billingclient/api/BillingClient;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:Lcom/android/billingclient/api/PendingPurchasesParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public C:Z

.field public D:Ljava/util/concurrent/ExecutorService;

.field public volatile E:Lcom/google/android/gms/internal/play_billing/zzev;

.field public final F:Ljava/lang/Long;

.field public final a:Ljava/lang/Object;

.field public volatile b:I

.field public final c:Ljava/lang/String;

.field public final d:Landroid/os/Handler;

.field public volatile e:Lcom/sunia/HTREnginev2/cqp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Landroid/content/Context;

.field public g:Lcom/sunia/HTREnginev2/fjp;

.field public volatile h:Lcom/google/android/gms/internal/play_billing/zzan;

.field public volatile i:Lcom/android/billingclient/api/b;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/billingclient/api/PendingPurchasesParams;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/android/billingclient/api/zzbm;

    invoke-direct {v3}, Lcom/android/billingclient/api/zzbm;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p3

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/android/billingclient/api/a;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V
    .locals 7
    .param p6    # Lcom/android/billingclient/api/UserChoiceBillingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/sunia/HTREnginev2/fjp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    const/4 p5, 0x0

    iput p5, p0, Lcom/android/billingclient/api/a;->b:I

    new-instance p7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p8

    invoke-direct {p7, p8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p7, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    iput p5, p0, Lcom/android/billingclient/api/a;->l:I

    new-instance p5, Ljava/util/Random;

    .line 4
    invoke-direct {p5}, Ljava/util/Random;-><init>()V

    invoke-virtual {p5}, Ljava/util/Random;->nextLong()J

    move-result-wide p7

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    iput-object p5, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    iput-object p4, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p6

    move-object v5, p4

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/android/billingclient/api/a;->a(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/UserChoiceBillingListener;Ljava/lang/String;Lcom/sunia/HTREnginev2/fjp;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/a;->b:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    iput v0, p0, Lcom/android/billingclient/api/a;->l:I

    new-instance v0, Ljava/util/Random;

    .line 7
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    iput-object p1, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    return-void
.end method

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

    .line 8
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/a;->b:I

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/a;->l:I

    new-instance p1, Ljava/util/Random;

    .line 9
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    .line 10
    invoke-static {}, Lcom/android/billingclient/api/a;->H()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc()Lcom/google/android/gms/internal/play_billing/zzks;

    move-result-object p2

    .line 13
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p3, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    .line 14
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzks;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzks;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p1, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzku;

    .line 17
    new-instance p3, Lcom/sunia/HTREnginev2/gjp;

    invoke-direct {p3, p1, p2}, Lcom/sunia/HTREnginev2/gjp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzku;)V

    iput-object p3, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    iget-object p0, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V
    .locals 9
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

    .line 36
    invoke-static {}, Lcom/android/billingclient/api/a;->H()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v6, p5

    .line 37
    invoke-direct/range {v0 .. v8}, Lcom/android/billingclient/api/a;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/sunia/HTREnginev2/fjp;Ljava/util/concurrent/ExecutorService;)V
    .locals 7
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

    const/4 v4, 0x0

    .line 32
    invoke-static {}, Lcom/android/billingclient/api/a;->H()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/a;->b:I

    new-instance p5, Landroid/os/Handler;

    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p6

    invoke-direct {p5, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p5, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/a;->l:I

    new-instance p1, Ljava/util/Random;

    .line 34
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    iput-object v5, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    .line 35
    invoke-virtual/range {v0 .. v6}, Lcom/android/billingclient/api/a;->b(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/zzb;Ljava/lang/String;Lcom/sunia/HTREnginev2/fjp;)V

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

    .line 19
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/a;->b:I

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/a;->l:I

    new-instance p1, Ljava/util/Random;

    .line 20
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    .line 21
    invoke-static {}, Lcom/android/billingclient/api/a;->H()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    .line 22
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc()Lcom/google/android/gms/internal/play_billing/zzks;

    move-result-object p3

    .line 24
    invoke-static {}, Lcom/android/billingclient/api/a;->H()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p4, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    .line 25
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/zzks;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p1, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    .line 27
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzku;

    .line 28
    new-instance p4, Lcom/sunia/HTREnginev2/gjp;

    invoke-direct {p4, p1, p3}, Lcom/sunia/HTREnginev2/gjp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzku;)V

    iput-object p4, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    const-string p1, "BillingClient"

    const-string p3, "Billing client should have a valid listener but the provided is null."

    .line 29
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sunia/HTREnginev2/cqp;

    iget-object v1, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    move-object v0, p1

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/sunia/HTREnginev2/cqp;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;)V

    iput-object p1, p0, Lcom/android/billingclient/api/a;->e:Lcom/sunia/HTREnginev2/cqp;

    iput-object p2, p0, Lcom/android/billingclient/api/a;->B:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object p0, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic A(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->k:Z

    return-void
.end method

.method public static bridge synthetic A0(Lcom/android/billingclient/api/a;IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic B(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->j:Z

    return-void
.end method

.method public static bridge synthetic B0(Lcom/android/billingclient/api/a;I)V
    .locals 0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/a;->M0(I)V

    return-void
.end method

.method public static bridge synthetic C(Lcom/android/billingclient/api/a;Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/a;->K(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    return-void
.end method

.method public static bridge synthetic D(Lcom/android/billingclient/api/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/a;->O(I)V

    return-void
.end method

.method public static bridge synthetic E(Lcom/android/billingclient/api/a;)I
    .locals 0

    iget p0, p0, Lcom/android/billingclient/api/a;->b:I

    return p0
.end method

.method public static bridge synthetic F0(Lcom/android/billingclient/api/a;)I
    .locals 0

    iget p0, p0, Lcom/android/billingclient/api/a;->l:I

    return p0
.end method

.method public static H()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    :try_start_0
    const-class v0, Lcom/android/billingclient/ktx/BuildConfig;

    const-string v1, "VERSION_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "7.1.1"

    return-object v0
.end method

.method public static bridge synthetic N0(Lcom/android/billingclient/api/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic Q0(Lcom/android/billingclient/api/a;)Landroid/os/Handler;
    .locals 0

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic R0(Lcom/android/billingclient/api/a;)Lcom/sunia/HTREnginev2/cqp;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->e:Lcom/sunia/HTREnginev2/cqp;

    return-object p0
.end method

.method public static final S(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "CLOSED"

    return-object p0

    :cond_0
    const-string p0, "CONNECTED"

    return-object p0

    :cond_1
    const-string p0, "CONNECTING"

    return-object p0

    :cond_2
    const-string p0, "DISCONNECTED"

    return-object p0
.end method

.method public static bridge synthetic T0(Lcom/android/billingclient/api/a;Ljava/lang/String;)Lcom/sunia/HTREnginev2/hip;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/a;->D0(Ljava/lang/String;)Lcom/sunia/HTREnginev2/hip;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic U0(Lcom/android/billingclient/api/a;)Lcom/sunia/HTREnginev2/fjp;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    return-object p0
.end method

.method public static bridge synthetic W0(Lcom/android/billingclient/api/a;)Lcom/android/billingclient/api/BillingResult;
    .locals 0

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic Z0(Lcom/android/billingclient/api/a;)Lcom/google/android/gms/internal/play_billing/zzan;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    return-object p0
.end method

.method public static bridge synthetic b1(Lcom/android/billingclient/api/a;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    return-object p0
.end method

.method public static bridge synthetic c1(Lcom/android/billingclient/api/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic f0(Lcom/android/billingclient/api/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->Q()V

    return-void
.end method

.method public static synthetic h(Lcom/android/billingclient/api/a;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 6

    const-wide/16 v1, 0x7530

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p1

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h1(Lcom/android/billingclient/api/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 2
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-interface {p5, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double p1, p1

    new-instance p5, Lcom/android/billingclient/api/zzaf;

    invoke-direct {p5, p0, p3}, Lcom/android/billingclient/api/zzaf;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double/2addr p1, v0

    double-to-long p1, p1

    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "BillingClient"

    const-string p2, "Async task throws exception!"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/android/billingclient/api/a;I)V
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/a;->l:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->p:Z

    return-void
.end method

.method public static bridge synthetic l(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->q:Z

    return-void
.end method

.method public static bridge synthetic m(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->r:Z

    return-void
.end method

.method public static bridge synthetic n(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->s:Z

    return-void
.end method

.method public static bridge synthetic o(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->t:Z

    return-void
.end method

.method public static bridge synthetic p(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->u:Z

    return-void
.end method

.method public static bridge synthetic q(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->v:Z

    return-void
.end method

.method public static bridge synthetic r(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->w:Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->x:Z

    return-void
.end method

.method public static bridge synthetic t(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->y:Z

    return-void
.end method

.method public static bridge synthetic u(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->z:Z

    return-void
.end method

.method public static bridge synthetic u0(Lcom/android/billingclient/api/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/billingclient/api/a;->y:Z

    return p0
.end method

.method public static bridge synthetic v(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->A:Z

    return-void
.end method

.method public static bridge synthetic v0(Lcom/android/billingclient/api/a;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/billingclient/api/a;->b:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic w(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->m:Z

    return-void
.end method

.method public static bridge synthetic w0(Lcom/android/billingclient/api/a;Ljava/lang/String;I)Lcom/android/billingclient/api/zzcv;
    .locals 0

    const/16 p2, 0x9

    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/a;->W(Ljava/lang/String;I)Lcom/android/billingclient/api/zzcv;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->n:Z

    return-void
.end method

.method public static bridge synthetic x0(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 0

    const/16 p3, 0x61

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/a;->G0(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void
.end method

.method public static bridge synthetic y(Lcom/android/billingclient/api/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->o:Z

    return-void
.end method

.method public static bridge synthetic y0(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 0

    const/16 p3, 0x49

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/a;->I0(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void
.end method

.method public static bridge synthetic z(Lcom/android/billingclient/api/a;Lcom/google/android/gms/internal/play_billing/zzan;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    return-void
.end method

.method public static bridge synthetic z0(Lcom/android/billingclient/api/a;IILcom/android/billingclient/api/BillingResult;)V
    .locals 0

    const/4 p2, 0x6

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    return-void
.end method


# virtual methods
.method public final C0()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    return-object p0
.end method

.method public final D0(Ljava/lang/String;)Lcom/sunia/HTREnginev2/hip;
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "Querying purchase history, item type: "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "BillingClient"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, v1, Lcom/android/billingclient/api/a;->o:Z

    iget-boolean v3, v1, Lcom/android/billingclient/api/a;->w:Z

    iget-object v4, v1, Lcom/android/billingclient/api/a;->B:Lcom/android/billingclient/api/PendingPurchasesParams;

    invoke-virtual {v4}, Lcom/android/billingclient/api/PendingPurchasesParams;->a()Z

    move-result v4

    iget-object v5, v1, Lcom/android/billingclient/api/a;->B:Lcom/android/billingclient/api/PendingPurchasesParams;

    invoke-virtual {v5}, Lcom/android/billingclient/api/PendingPurchasesParams;->b()Z

    move-result v5

    iget-object v6, v1, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    iget-object v7, v1, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v6, v7

    move-wide v7, v8

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/play_billing/zze;->zzd(ZZZZLjava/lang/String;J)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    move-object v14, v3

    :cond_0
    iget-boolean v4, v1, Lcom/android/billingclient/api/a;->m:Z

    if-nez v4, :cond_1

    const-string v0, "BillingClient"

    const-string v1, "getPurchaseHistory is not supported on current device"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/HTREnginev2/hip;

    sget-object v1, Lcom/android/billingclient/api/i;->q:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v0, v1, v3}, Lcom/sunia/HTREnginev2/hip;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object v0

    :cond_1
    const/16 v4, 0x3b

    :try_start_0
    iget-object v5, v1, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v10, v1, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_2

    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const-string v2, "Service reset to null"

    const/16 v5, 0x77

    invoke-virtual {v1, v0, v5, v2, v3}, Lcom/android/billingclient/api/a;->U(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/hip;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v11, 0x6

    iget-object v5, v1, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p1

    move-object v15, v2

    invoke-interface/range {v10 .. v15}, Lcom/google/android/gms/internal/play_billing/zzan;->zzh(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v5, "BillingClient"

    const-string v6, "getPurchaseHistory()"

    invoke-static {v4, v5, v6}, Lcom/android/billingclient/api/j;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/sunia/HTREnginev2/ijp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/ijp;->a()Lcom/android/billingclient/api/BillingResult;

    move-result-object v6

    sget-object v7, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    const/16 v8, 0xb

    if-eq v6, v7, :cond_3

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/ijp;->b()I

    move-result v0

    invoke-virtual {v1, v0, v8, v6}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    new-instance v0, Lcom/sunia/HTREnginev2/hip;

    invoke-direct {v0, v6, v3}, Lcom/sunia/HTREnginev2/hip;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object v0

    :cond_3
    const-string v5, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_5

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Purchase record found for sku : "

    const-string v15, "BillingClient"

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    new-instance v13, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    invoke-direct {v13, v11, v12}, Lcom/android/billingclient/api/PurchaseHistoryRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v13}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getPurchaseToken()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v10, "BillingClient"

    const-string v11, "BUG: empty/null token!"

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    :cond_4
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Got an exception trying to decode the purchase!"

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x33

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/a;->U(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/hip;

    move-result-object v0

    return-object v0

    :cond_5
    if-eqz v10, :cond_6

    const/16 v5, 0x1a

    sget-object v6, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v1, v5, v8, v6}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    :cond_6
    const-string v5, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Continuation token: "

    const-string v6, "BillingClient"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/hip;

    sget-object v2, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v1, v2, v0}, Lcom/sunia/HTREnginev2/hip;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    const-string v2, "Got exception trying to get purchase history"

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/a;->U(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/hip;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    const-string v2, "Got exception trying to get purchase history"

    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/a;->U(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/hip;

    move-result-object v0

    return-object v0
.end method

.method public final E0()Lcom/android/billingclient/api/BillingResult;
    .locals 3

    const-string v0, "BillingClient"

    const-string v1, "Service connection is valid. No need to re-initialize."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzc()Lcom/google/android/gms/internal/play_billing/zzkb;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzkb;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzkb;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlx;->zzc()Lcom/google/android/gms/internal/play_billing/zzlv;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzlv;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzlv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzkb;->zzm(Lcom/google/android/gms/internal/play_billing/zzlv;)Lcom/google/android/gms/internal/play_billing/zzkb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkd;

    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/a;->L(Lcom/google/android/gms/internal/play_billing/zzkd;)V

    sget-object p0, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    return-object p0
.end method

.method public final F()Lcom/android/billingclient/api/BillingResult;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iget-object v2, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    :try_start_0
    aget v3, v0, v1

    iget v4, p0, Lcom/android/billingclient/api/a;->b:I

    if-ne v4, v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final G(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final G0(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x19

    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;->onExternalOfferInformationDialogResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public final H0(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 2
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "BillingClient"

    const-string v1, "getBillingConfig got an exception."

    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0xd

    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p1, p2, p0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void
.end method

.method public final declared-synchronized I()Ljava/util/concurrent/ExecutorService;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/a;->D:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/play_billing/zze;->zza:I

    new-instance v1, Lcom/sunia/HTREnginev2/wgp;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wgp;-><init>(Lcom/android/billingclient/api/a;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/a;->D:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/a;->D:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final I0(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x10

    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;->onAlternativeBillingOnlyInformationDialogResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public final J(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "BillingClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consuming purchase with token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x77

    const-string v5, "Service has been reset to null."

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/billingclient/api/a;->b0(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/a;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/billingclient/api/a;->o:Z

    iget-object v3, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_1

    invoke-static {v6, v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    :cond_1
    const/16 v2, 0x9

    invoke-interface {v1, v2, v0, p1, v6}, Lcom/google/android/gms/internal/play_billing/zzan;->zze(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "BillingClient"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzan;->zza(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    if-nez v1, :cond_3

    const-string v0, "BillingClient"

    const-string v1, "Successfully consumed purchase."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3, p1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v4, 0x17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error consuming purchase with token. Response code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/billingclient/api/a;->b0(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object v6, v0

    const-string v5, "Error consuming purchase!"

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x1d

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/billingclient/api/a;->b0(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    move-object v6, v0

    const-string v5, "Error consuming purchase!"

    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x1d

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/billingclient/api/a;->b0(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final J0(IILjava/lang/Exception;)V
    .locals 2
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "BillingClient"

    const-string v1, "showInAppMessages error."

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    invoke-static {p3}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p3

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->zzc()Lcom/google/android/gms/internal/play_billing/zzke;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzke;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzke;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzke;

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/play_billing/zzke;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjz;->zzc()Lcom/google/android/gms/internal/play_billing/zzjx;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzjx;->zza(Lcom/google/android/gms/internal/play_billing/zzke;)Lcom/google/android/gms/internal/play_billing/zzjx;

    const/16 p2, 0x1e

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzjx;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzjx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "BillingLogger"

    const-string p3, "Unable to create logging payload"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/fjp;->c(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    return-void
.end method

.method public final K(Lcom/google/android/gms/internal/play_billing/zzjz;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    iget p0, p0, Lcom/android/billingclient/api/a;->l:I

    invoke-interface {v0, p1, p0}, Lcom/sunia/HTREnginev2/fjp;->f(Lcom/google/android/gms/internal/play_billing/zzjz;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingClient"

    const-string v0, "Unable to log."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final K0(IILcom/android/billingclient/api/BillingResult;)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/billingclient/api/zzcg;->zzb(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/a;->K(Lcom/google/android/gms/internal/play_billing/zzjz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingClient"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final L(Lcom/google/android/gms/internal/play_billing/zzkd;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    iget p0, p0, Lcom/android/billingclient/api/a;->l:I

    invoke-interface {v0, p1, p0}, Lcom/sunia/HTREnginev2/fjp;->d(Lcom/google/android/gms/internal/play_billing/zzkd;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingClient"

    const-string v0, "Unable to log."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/billingclient/api/zzcg;->zzc(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzjz;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/a;->K(Lcom/google/android/gms/internal/play_billing/zzjz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingClient"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final M(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_0
    new-instance v3, Lcom/sunia/HTREnginev2/chp;

    invoke-direct {v3, p0, p1, p2}, Lcom/sunia/HTREnginev2/chp;-><init>(Lcom/android/billingclient/api/a;Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    const-wide/16 v4, 0x7530

    new-instance v6, Lcom/android/billingclient/api/zzal;

    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/zzal;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public final M0(I)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->zzd(I)Lcom/google/android/gms/internal/play_billing/zzkd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/a;->L(Lcom/google/android/gms/internal/play_billing/zzkd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingClient"

    const-string v0, "Unable to log."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final N(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/16 v1, 0x9

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid product type."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/i;->h:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x32

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance v2, Lcom/sunia/HTREnginev2/ahp;

    invoke-direct {v2, p0, p1, p2}, Lcom/sunia/HTREnginev2/ahp;-><init>(Lcom/android/billingclient/api/a;Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    const-wide/16 v3, 0x7530

    new-instance v5, Lcom/android/billingclient/api/zzac;

    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzac;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final O(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/a;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "BillingClient"

    iget v2, p0, Lcom/android/billingclient/api/a;->b:I

    invoke-static {v2}, Lcom/android/billingclient/api/a;->S(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/billingclient/api/a;->S(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting clientState from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/billingclient/api/a;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic O0(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p4, 0x5

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    sget-object p0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 p1, 0x77

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzn(Lcom/android/billingclient/api/BillingResult;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/zzan;->zzg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p0}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    sget-object p1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p0}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized P()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/a;->D:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/billingclient/api/a;->D:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/android/billingclient/api/a;->E:Lcom/google/android/gms/internal/play_billing/zzev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic P0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x5

    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    sget-object p0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 p1, 0x77

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzn(Lcom/android/billingclient/api/BillingResult;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x3

    iget-object p0, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zzan;->zzf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p0}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    sget-object p1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-static {p0}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzo(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final Q()V
    .locals 5

    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/a;->i:Lcom/android/billingclient/api/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/a;->i:Lcom/android/billingclient/api/b;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    iput-object v1, p0, Lcom/android/billingclient/api/a;->i:Lcom/android/billingclient/api/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    const-string v3, "BillingClient"

    const-string v4, "There was an exception while unbinding service!"

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-object v1, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    iput-object v1, p0, Lcom/android/billingclient/api/a;->i:Lcom/android/billingclient/api/b;

    goto :goto_0

    :catchall_1
    move-exception v2

    iput-object v1, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    iput-object v1, p0, Lcom/android/billingclient/api/a;->i:Lcom/android/billingclient/api/b;

    throw v2

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final R()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/billingclient/api/a;->w:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->B:Lcom/android/billingclient/api/PendingPurchasesParams;

    invoke-virtual {p0}, Lcom/android/billingclient/api/PendingPurchasesParams;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final S0(Lcom/android/billingclient/api/QueryProductDetailsParams;)Lcom/sunia/HTREnginev2/gip;
    .locals 22
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/QueryProductDetailsParams;->zzb()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/QueryProductDetailsParams;->zza()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v10, :cond_f

    add-int/lit8 v12, v2, 0x14

    if-le v12, v10, :cond_0

    move v3, v10

    goto :goto_1

    :cond_0
    move v3, v12

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v9, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    invoke-virtual {v6}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zza()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, v1, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    const-string v3, "playBillingLibraryVersion"

    invoke-virtual {v6, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v1, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, v1, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    if-nez v3, :cond_2

    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const-string v2, "Service has been reset to null."

    const/16 v3, 0x77

    invoke-virtual {v1, v0, v3, v2, v14}, Lcom/android/billingclient/api/a;->T(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/gip;

    move-result-object v0

    return-object v0

    :cond_2
    iget-boolean v2, v1, Lcom/android/billingclient/api/a;->x:Z

    const/4 v5, 0x1

    if-eq v5, v2, :cond_3

    const/16 v2, 0x11

    goto :goto_3

    :cond_3
    const/16 v2, 0x14

    :goto_3
    move v7, v2

    iget-object v2, v1, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/a;->R()Z

    move-result v2

    iget-object v11, v1, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/android/billingclient/api/a;->G(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/android/billingclient/api/a;->G(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/android/billingclient/api/a;->G(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/android/billingclient/api/a;->G(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    iget-object v13, v1, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    move-object/from16 v16, v15

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    invoke-static {v13, v11, v14, v15}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    const-string v11, "enablePendingPurchases"

    invoke-virtual {v13, v11, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "SKU_DETAILS_RESPONSE_FORMAT"

    const-string v14, "PRODUCT_DETAILS"

    invoke-virtual {v13, v11, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const-string v2, "enablePendingPurchaseForSubscriptions"

    invoke-virtual {v13, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_4
    if-ge v15, v14, :cond_6

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    const/4 v5, 0x1

    xor-int/lit8 v20, v21, 0x1

    or-int v17, v17, v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zzb()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v4

    const-string v4, "first_party"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products."

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/play_billing/zzbe;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v18, 0x1

    :cond_5
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v19

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    if-eqz v17, :cond_7

    const-string v4, "SKU_OFFER_ID_TOKEN_LIST"

    invoke-virtual {v13, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "SKU_SERIALIZED_DOCID_LIST"

    invoke-virtual {v13, v2, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_8
    if-eqz v18, :cond_9

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "accountName"

    invoke-virtual {v13, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object v2, v3

    move v3, v7

    move-object/from16 v4, v16

    move-object v5, v8

    move-object v7, v13

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zzan;->zzl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v2, :cond_a

    const-string v0, "queryProductDetailsAsync got empty product details response."

    sget-object v2, Lcom/android/billingclient/api/i;->C:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/billingclient/api/a;->T(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/gip;

    move-result-object v0

    return-object v0

    :cond_a
    const-string v3, "DETAILS_LIST"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x6

    if-nez v3, :cond_c

    const-string v0, "BillingClient"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const-string v3, "BillingClient"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_b

    invoke-static {v0, v2}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x17

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v0, v5}, Lcom/android/billingclient/api/a;->T(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/gip;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v5, 0x0

    invoke-static {v4, v2}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const/16 v2, 0x2d

    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/android/billingclient/api/a;->T(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/gip;

    move-result-object v0

    return-object v0

    :cond_c
    const-string v3, "DETAILS_LIST"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_e

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_d

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_3
    new-instance v6, Lcom/android/billingclient/api/ProductDetails;

    invoke-direct {v6, v5}, Lcom/android/billingclient/api/ProductDetails;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Got product details: "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "BillingClient"

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v2, "Error trying to decode SkuDetails."

    invoke-static {v4, v2}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    const/16 v3, 0x2f

    const-string v4, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/a;->T(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/gip;

    move-result-object v0

    return-object v0

    :cond_d
    move v2, v12

    goto/16 :goto_0

    :cond_e
    const-string v0, "queryProductDetailsAsync got null response list"

    sget-object v2, Lcom/android/billingclient/api/i;->C:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/billingclient/api/a;->T(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/gip;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    const-string v2, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x2b

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/a;->T(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/gip;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    const/16 v4, 0x2b

    const-string v2, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/a;->T(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/gip;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v1, ""

    new-instance v2, Lcom/sunia/HTREnginev2/gip;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v0}, Lcom/sunia/HTREnginev2/gip;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method public final T(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/gip;
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "BillingClient"

    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p3, 0x7

    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    new-instance p0, Lcom/sunia/HTREnginev2/gip;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, p1, p3}, Lcom/sunia/HTREnginev2/gip;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public final U(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/hip;
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "BillingClient"

    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p3, 0xb

    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    new-instance p0, Lcom/sunia/HTREnginev2/hip;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/hip;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p0
.end method

.method public final V(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;
    .locals 1
    .param p5    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 p1, 0x9

    invoke-static {p5}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const-string p0, "BillingClient"

    invoke-static {p0, p4, p5}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lcom/android/billingclient/api/zzcv;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/billingclient/api/zzcv;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object p0
.end method

.method public final V0()Lcom/sunia/HTREnginev2/fjp;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    return-object p0
.end method

.method public final W(Ljava/lang/String;I)Lcom/android/billingclient/api/zzcv;
    .locals 16

    move-object/from16 v7, p0

    const-string v0, "Querying owned items, item type: "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BillingClient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v8, v7, Lcom/android/billingclient/api/a;->o:Z

    iget-boolean v9, v7, Lcom/android/billingclient/api/a;->w:Z

    iget-object v1, v7, Lcom/android/billingclient/api/a;->B:Lcom/android/billingclient/api/PendingPurchasesParams;

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams;->a()Z

    move-result v10

    iget-object v1, v7, Lcom/android/billingclient/api/a;->B:Lcom/android/billingclient/api/PendingPurchasesParams;

    invoke-virtual {v1}, Lcom/android/billingclient/api/PendingPurchasesParams;->b()Z

    move-result v11

    iget-object v1, v7, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    iget-object v12, v7, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/play_billing/zze;->zzd(ZZZZLjava/lang/String;J)Landroid/os/Bundle;

    move-result-object v8

    const/4 v1, 0x0

    move-object v5, v1

    :cond_0
    :try_start_0
    iget-object v1, v7, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, v7, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    :try_start_2
    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x9

    const/16 v4, 0x77

    const-string v5, "Service has been reset to null"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/a;->V(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v1, v7, Lcom/android/billingclient/api/a;->o:Z

    const/16 v9, 0x9

    const/4 v10, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, v7, Lcom/android/billingclient/api/a;->w:Z

    if-eq v10, v1, :cond_2

    move v3, v9

    goto :goto_0

    :cond_2
    const/16 v1, 0x13

    move v3, v1

    :goto_0
    iget-object v1, v7, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object/from16 v4, p1

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzan;->zzj(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v4, p1

    goto :goto_1

    :cond_3
    iget-object v1, v7, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    move-object/from16 v4, p1

    invoke-interface {v2, v3, v1, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const-string v2, "BillingClient"

    const-string v3, "getPurchase()"

    invoke-static {v1, v2, v3}, Lcom/android/billingclient/api/j;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/sunia/HTREnginev2/ijp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/ijp;->a()Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    sget-object v5, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    if-eq v3, v5, :cond_4

    const/16 v0, 0x9

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/ijp;->b()I

    move-result v4

    const-string v5, "Purchase bundle invalid"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/a;->V(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v2, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    move v11, v6

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Sku is owned: "

    const-string v10, "BillingClient"

    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    new-instance v10, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v10, v12, v13}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v10}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v11, "BillingClient"

    const-string v12, "BUG: empty/null token!"

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_5
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const/4 v10, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v6, v0

    const-string v5, "Got an exception trying to decode the purchase!"

    const/16 v2, 0x9

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x33

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/a;->V(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    move-result-object v0

    return-object v0

    :cond_6
    if-eqz v11, :cond_7

    const/16 v2, 0x1a

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v7, v2, v9, v3}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    :cond_7
    const-string v2, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Continuation token: "

    const-string v3, "BillingClient"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/billingclient/api/zzcv;

    sget-object v2, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    invoke-direct {v1, v2, v0}, Lcom/android/billingclient/api/zzcv;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    move-object v6, v0

    const-string v5, "Got exception trying to get purchases try to reconnect"

    const/16 v2, 0x9

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x34

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/a;->V(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    move-object v6, v0

    const-string v5, "Got exception trying to get purchases try to reconnect"

    const/16 v2, 0x9

    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x34

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/billingclient/api/a;->V(ILcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcv;

    move-result-object v0

    return-object v0
.end method

.method public final X(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/ujp;
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "BillingClient"

    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p3, 0x8

    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    new-instance p0, Lcom/sunia/HTREnginev2/ujp;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/sunia/HTREnginev2/ujp;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public final X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/android/billingclient/api/zzp;

    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/zzp;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method public final Y(Lcom/android/billingclient/api/BillingResult;II)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Unable to create logging payload"

    const-string v3, "BillingLogger"

    const/4 v4, 0x5

    if-eqz v0, :cond_0

    sget v0, Lcom/android/billingclient/api/zzcg;->zza:I

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjz;->zzc()Lcom/google/android/gms/internal/play_billing/zzjx;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->zzc()Lcom/google/android/gms/internal/play_billing/zzke;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzke;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/play_billing/zzke;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/play_billing/zzke;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzke;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzjx;->zza(Lcom/google/android/gms/internal/play_billing/zzke;)Lcom/google/android/gms/internal/play_billing/zzjx;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzjx;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzjx;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlb;->zzc()Lcom/google/android/gms/internal/play_billing/zzky;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzky;->zza(I)Lcom/google/android/gms/internal/play_billing/zzky;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzlb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzjx;->zzm(Lcom/google/android/gms/internal/play_billing/zzlb;)Lcom/google/android/gms/internal/play_billing/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v3, v2, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/a;->K(Lcom/google/android/gms/internal/play_billing/zzjz;)V

    return-void

    :cond_0
    sget p1, Lcom/android/billingclient/api/zzcg;->zza:I

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkd;->zzc()Lcom/google/android/gms/internal/play_billing/zzkb;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/play_billing/zzkb;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzkb;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzlb;->zzc()Lcom/google/android/gms/internal/play_billing/zzky;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzky;->zza(I)Lcom/google/android/gms/internal/play_billing/zzky;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzlb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzkb;->zza(Lcom/google/android/gms/internal/play_billing/zzlb;)Lcom/google/android/gms/internal/play_billing/zzkb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkd;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v3, v2, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/a;->L(Lcom/google/android/gms/internal/play_billing/zzkd;)V

    return-void
.end method

.method public final Y0(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/sunia/HTREnginev2/ujp;
    .locals 16
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_b

    add-int/lit8 v5, v4, 0x14

    if-le v5, v2, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    move v6, v5

    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v8, p2

    invoke-interface {v8, v4, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ITEM_ID_LIST"

    invoke-virtual {v13, v4, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, v1, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    const-string v6, "playBillingLibraryVersion"

    invoke-virtual {v13, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v6, v1, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v9, v1, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    if-nez v9, :cond_1

    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const-string v2, "Service has been reset to null."

    const/16 v3, 0x77

    invoke-virtual {v1, v0, v3, v2, v6}, Lcom/android/billingclient/api/a;->X(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/ujp;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v7, v1, Lcom/android/billingclient/api/a;->p:Z

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget v7, v1, Lcom/android/billingclient/api/a;->l:I

    iget-object v10, v1, Lcom/android/billingclient/api/a;->B:Lcom/android/billingclient/api/PendingPurchasesParams;

    invoke-virtual {v10}, Lcom/android/billingclient/api/PendingPurchasesParams;->a()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/a;->R()Z

    move-result v12

    iget-object v14, v1, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const/16 v6, 0x9

    if-lt v7, v6, :cond_2

    invoke-static {v15, v14, v3, v4}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    :cond_2
    const/4 v3, 0x1

    if-lt v7, v6, :cond_3

    if-eqz v10, :cond_3

    const-string v4, "enablePendingPurchases"

    invoke-virtual {v15, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    if-eqz v12, :cond_4

    const-string v4, "enablePendingPurchaseForSubscriptions"

    invoke-virtual {v15, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    const/16 v10, 0xa

    move-object/from16 v12, p1

    move-object v14, v15

    invoke-interface/range {v9 .. v14}, Lcom/google/android/gms/internal/play_billing/zzan;->zzl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v6, p1

    goto :goto_2

    :cond_5
    iget-object v3, v1, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v6, p1

    invoke-interface {v9, v4, v3, v6, v13}, Lcom/google/android/gms/internal/play_billing/zzan;->zzk(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    if-nez v3, :cond_6

    const-string v0, "querySkuDetailsAsync got null sku details list"

    sget-object v2, Lcom/android/billingclient/api/i;->C:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/billingclient/api/a;->X(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/ujp;

    move-result-object v0

    return-object v0

    :cond_6
    const-string v4, "DETAILS_LIST"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x6

    if-nez v4, :cond_8

    const-string v0, "BillingClient"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const-string v2, "BillingClient"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_7

    invoke-static {v0, v2}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSkuDetails() failed. Response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/billingclient/api/a;->X(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/ujp;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v4, 0x0

    invoke-static {v7, v2}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const/16 v2, 0x2d

    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/billingclient/api/a;->X(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/ujp;

    move-result-object v0

    return-object v0

    :cond_8
    const-string v4, "DETAILS_LIST"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :try_start_3
    new-instance v10, Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {v10, v9}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Got sku details: "

    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "BillingClient"

    invoke-static {v11, v9}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "Error trying to decode SkuDetails."

    invoke-static {v7, v2}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    const/16 v3, 0x2f

    const-string v4, "Got a JSON exception trying to decode SkuDetails."

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/a;->X(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/ujp;

    move-result-object v0

    return-object v0

    :cond_9
    move v4, v5

    goto/16 :goto_0

    :cond_a
    const-string v0, "querySkuDetailsAsync got null response list"

    sget-object v2, Lcom/android/billingclient/api/i;->C:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/billingclient/api/a;->X(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/ujp;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    const-string v2, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    const/16 v4, 0x2b

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/a;->X(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/ujp;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    const/16 v4, 0x2b

    const-string v2, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/billingclient/api/a;->X(Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)Lcom/sunia/HTREnginev2/ujp;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v1, ""

    new-instance v2, Lcom/sunia/HTREnginev2/ujp;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v0}, Lcom/sunia/HTREnginev2/ujp;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method public final Z(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 2
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "BillingClient"

    const-string v1, "Error in acknowledge purchase!"

    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/UserChoiceBillingListener;Ljava/lang/String;Lcom/sunia/HTREnginev2/fjp;)V
    .locals 7
    .param p4    # Lcom/android/billingclient/api/UserChoiceBillingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/sunia/HTREnginev2/fjp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc()Lcom/google/android/gms/internal/play_billing/zzks;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p5, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p5, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzks;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzks;

    if-eqz p6, :cond_0

    iput-object p6, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzku;

    new-instance p6, Lcom/sunia/HTREnginev2/gjp;

    invoke-direct {p6, p5, p1}, Lcom/sunia/HTREnginev2/gjp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzku;)V

    iput-object p6, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    :goto_0
    if-nez p2, :cond_1

    const-string p1, "BillingClient"

    const-string p5, "Billing client should have a valid listener but the provided is null."

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/sunia/HTREnginev2/cqp;

    iget-object v1, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    move-object v0, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sunia/HTREnginev2/cqp;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;)V

    iput-object p1, p0, Lcom/android/billingclient/api/a;->e:Lcom/sunia/HTREnginev2/cqp;

    iput-object p3, p0, Lcom/android/billingclient/api/a;->B:Lcom/android/billingclient/api/PendingPurchasesParams;

    if-eqz p4, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->C:Z

    return-void
.end method

.method public final a0(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0xe

    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;->onAlternativeBillingOnlyAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public final declared-synchronized a1()Lcom/google/android/gms/internal/play_billing/zzev;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/a;->E:Lcom/google/android/gms/internal/play_billing/zzev;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzfb;->zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/play_billing/zzev;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/a;->E:Lcom/google/android/gms/internal/play_billing/zzev;

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/a;->E:Lcom/google/android/gms/internal/play_billing/zzev;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid purchase token."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/i;->j:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/a;->o:Z

    if-nez v0, :cond_2

    sget-object p1, Lcom/android/billingclient/api/i;->b:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x1b

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_2
    new-instance v2, Lcom/android/billingclient/api/zzt;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/billingclient/api/zzt;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)V

    const-wide/16 v3, 0x7530

    new-instance v5, Lcom/android/billingclient/api/zzu;

    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzu;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    :cond_3
    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/zzb;Ljava/lang/String;Lcom/sunia/HTREnginev2/fjp;)V
    .locals 7
    .param p4    # Lcom/android/billingclient/api/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/sunia/HTREnginev2/fjp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzku;->zzc()Lcom/google/android/gms/internal/play_billing/zzks;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p5, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zzks;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzks;

    iget-object p5, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzks;->zzm(J)Lcom/google/android/gms/internal/play_billing/zzks;

    if-eqz p6, :cond_0

    iput-object p6, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzku;

    new-instance p6, Lcom/sunia/HTREnginev2/gjp;

    invoke-direct {p6, p5, p1}, Lcom/sunia/HTREnginev2/gjp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzku;)V

    iput-object p6, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    :goto_0
    if-nez p2, :cond_1

    const-string p1, "BillingClient"

    const-string p5, "Billing client should have a valid listener but the provided is null."

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/sunia/HTREnginev2/cqp;

    iget-object v1, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    move-object v0, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sunia/HTREnginev2/cqp;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/sunia/HTREnginev2/fjp;)V

    iput-object p1, p0, Lcom/android/billingclient/api/a;->e:Lcom/sunia/HTREnginev2/cqp;

    iput-object p3, p0, Lcom/android/billingclient/api/a;->B:Lcom/android/billingclient/api/PendingPurchasesParams;

    if-eqz p4, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/android/billingclient/api/a;->C:Z

    iget-object p0, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public final b0(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p6    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "BillingClient"

    invoke-static {v0, p5, p6}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p5, 0x4

    invoke-static {p6}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p4, p5, p3, p6}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/a;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p0

    return p0
.end method

.method public final c0(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0xf

    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p1, p2, p0}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->onAlternativeBillingOnlyTokenResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    return-void
.end method

.method public consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/android/billingclient/api/zzag;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/billingclient/api/zzag;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    const-wide/16 v3, 0x7530

    new-instance v5, Lcom/android/billingclient/api/zzah;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/billingclient/api/zzah;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public createAlternativeBillingOnlyReportingDetailsAsync(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V
    .locals 9
    .annotation build Lcom/android/billingclient/api/zzf;
    .end annotation

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->c0(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/a;->y:Z

    if-nez v0, :cond_1

    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support alternative billing only."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/i;->E:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x42

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->c0(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void

    :cond_1
    new-instance v3, Lcom/android/billingclient/api/zzx;

    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzx;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V

    const-wide/16 v4, 0x7530

    new-instance v6, Lcom/android/billingclient/api/zzy;

    invoke-direct {v6, p0, p1}, Lcom/android/billingclient/api/zzy;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->c0(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public createExternalOfferReportingDetailsAsync(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V
    .locals 9
    .annotation build Lcom/android/billingclient/api/zzg;
    .end annotation

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->d0(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/a;->z:Z

    if-nez v0, :cond_1

    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support external offer."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/i;->x:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x67

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->d0(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void

    :cond_1
    new-instance v3, Lcom/android/billingclient/api/zzaa;

    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzaa;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V

    const-wide/16 v4, 0x7530

    new-instance v6, Lcom/android/billingclient/api/zzaj;

    invoke-direct {v6, p0, p1}, Lcom/android/billingclient/api/zzaj;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->d0(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public final d(J)V
    .locals 1

    new-instance v0, Lcom/android/billingclient/api/zzbm;

    invoke-direct {v0, p1, p2}, Lcom/android/billingclient/api/zzbm;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/a;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public final d0(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x18

    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p1, p2, p0}, Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;->onExternalOfferReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/ExternalOfferReportingDetails;)V

    return-void
.end method

.method public final synthetic d1(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x1c

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    sget-object p2, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x77

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/android/billingclient/api/a;->Z(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    iget-object v4, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-static {v7, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v2, p2, v7}, Lcom/google/android/gms/internal/play_billing/zzan;->zzd(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p2, "BillingClient"

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p2

    const-string v0, "BillingClient"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-object v1

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    sget-object v2, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/android/billingclient/api/a;->Z(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-object v1

    :catch_1
    move-exception p2

    sget-object v2, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/android/billingclient/api/a;->Z(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-object v1
.end method

.method public final synthetic e(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x5b

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    sget-object v2, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x77

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/a;->e0(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/sunia/HTREnginev2/fip;

    iget-object v6, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    iget v7, p0, Lcom/android/billingclient/api/a;->l:I

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/sunia/HTREnginev2/fip;-><init>(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/sunia/HTREnginev2/fjp;ILcom/android/billingclient/api/zzbl;)V

    const/16 v6, 0x16

    invoke-interface {v3, v6, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzs(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzak;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/a;->e0(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/a;->e0(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    :goto_0
    return-object v1
.end method

.method public final e0(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x17

    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->onExternalOfferAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public final synthetic e1(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/a;->J(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public endConnection()V
    .locals 5

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/a;->M0(I)V

    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/a;->e:Lcom/sunia/HTREnginev2/cqp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/billingclient/api/a;->e:Lcom/sunia/HTREnginev2/cqp;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/cqp;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "BillingClient"

    const-string v3, "There was an exception while shutting down broadcast manager while ending connection!"

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :cond_0
    :goto_0
    :try_start_2
    const-string v1, "BillingClient"

    const-string v2, "Unbinding from service."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->Q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_3
    const-string v2, "BillingClient"

    const-string v3, "There was an exception while unbinding from the service while ending connection!"

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_1
    const/4 v1, 0x3

    :try_start_4
    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->P()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_2
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/a;->O(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_2
    move-exception v2

    :try_start_6
    const-string v3, "BillingClient"

    const-string v4, "There was an exception while shutting down the executor service while ending connection!"

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :goto_3
    :try_start_7
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/android/billingclient/api/a;->O(I)V

    throw v2

    :catchall_4
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final synthetic f(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x4a

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    sget-object p2, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 p3, 0x77

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/billingclient/api/a;->I0(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/android/billingclient/api/c;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v6, p3, v1}, Lcom/android/billingclient/api/c;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzbl;)V

    const/16 p2, 0x15

    invoke-interface {v3, p2, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzo(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzac;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    sget-object p3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/billingclient/api/a;->I0(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p2

    sget-object p3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/billingclient/api/a;->I0(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    :goto_0
    return-object v1
.end method

.method public final synthetic f1(Lcom/android/billingclient/api/BillingConfigResponseListener;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x3e

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    sget-object v2, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x77

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/a;->H0(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-static {v7, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    new-instance v4, Lcom/android/billingclient/api/d;

    iget-object v5, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    iget v6, p0, Lcom/android/billingclient/api/a;->l:I

    invoke-direct {v4, p1, v5, v6, v1}, Lcom/android/billingclient/api/d;-><init>(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/sunia/HTREnginev2/fjp;ILcom/android/billingclient/api/zzbl;)V

    const/16 v5, 0x12

    invoke-interface {v3, v5, v2, v7, v4}, Lcom/google/android/gms/internal/play_billing/zzan;->zzp(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzae;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/a;->H0(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/a;->H0(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    :goto_0
    return-object v1
.end method

.method public final synthetic g(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x62

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    sget-object p2, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 p3, 0x77

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/billingclient/api/a;->G0(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/android/billingclient/api/e;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v6, p3, v1}, Lcom/android/billingclient/api/e;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzbl;)V

    const/16 p2, 0x16

    invoke-interface {v3, p2, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzq(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzag;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    sget-object p3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/billingclient/api/a;->G0(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p2

    sget-object p3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/billingclient/api/a;->G0(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    :goto_0
    return-object v1
.end method

.method public final synthetic g0(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method public final synthetic g1(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x76

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    const/16 p1, 0x77

    :try_start_2
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/billingclient/api/a;->J0(IILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/android/billingclient/api/f;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v6, p3, v2}, Lcom/android/billingclient/api/f;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzbl;)V

    const/16 p2, 0xc

    invoke-interface {v4, p2, v3, p1, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzt(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzap;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const/4 p2, 0x6

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/billingclient/api/a;->J0(IILjava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/billingclient/api/a;->J0(IILjava/lang/Exception;)V

    :goto_0
    return-object v2
.end method

.method public getBillingConfigAsync(Lcom/android/billingclient/api/GetBillingConfigParams;Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .locals 9
    .annotation build Lcom/android/billingclient/api/zzh;
    .end annotation

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result p1

    const-string v0, "BillingClient"

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-nez p1, :cond_0

    const-string p1, "Service disconnected."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/billingclient/api/a;->v:Z

    if-nez p1, :cond_1

    const-string p1, "Current client doesn\'t support get billing config."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/i;->A:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void

    :cond_1
    new-instance v3, Lcom/android/billingclient/api/zzv;

    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzv;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    const-wide/16 v4, 0x7530

    new-instance v6, Lcom/android/billingclient/api/zzw;

    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/zzw;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    :cond_2
    return-void
.end method

.method public final getConnectionState()I
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/billingclient/api/a;->b:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic h0(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/a;->e:Lcom/sunia/HTREnginev2/cqp;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/cqp;->d()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->e:Lcom/sunia/HTREnginev2/cqp;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/cqp;->d()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_0
    const-string p0, "BillingClient"

    const-string p1, "No valid listener is set in BroadcastManager"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic i0(Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic i1(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x46

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    sget-object v2, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x77

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/a;->c0(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/sunia/HTREnginev2/xhp;

    iget-object v6, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    iget v7, p0, Lcom/android/billingclient/api/a;->l:I

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/sunia/HTREnginev2/xhp;-><init>(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/sunia/HTREnginev2/fjp;ILcom/android/billingclient/api/zzbl;)V

    const/16 v6, 0x15

    invoke-interface {v3, v6, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzm(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzy;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/a;->c0(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/a;->c0(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    :goto_0
    return-object v1
.end method

.method public isAlternativeBillingOnlyAvailableAsync(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V
    .locals 9
    .annotation build Lcom/android/billingclient/api/zzf;
    .end annotation

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->a0(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/a;->y:Z

    if-nez v0, :cond_1

    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support alternative billing only."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/i;->E:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x42

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->a0(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void

    :cond_1
    new-instance v3, Lcom/android/billingclient/api/zzad;

    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzad;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V

    const-wide/16 v4, 0x7530

    new-instance v6, Lcom/android/billingclient/api/zzae;

    invoke-direct {v6, p0, p1}, Lcom/android/billingclient/api/zzae;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->a0(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public isExternalOfferAvailableAsync(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V
    .locals 9
    .annotation build Lcom/android/billingclient/api/zzg;
    .end annotation

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->e0(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/a;->z:Z

    if-nez v0, :cond_1

    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support external offer."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/i;->x:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x67

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->e0(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void

    :cond_1
    new-instance v3, Lcom/android/billingclient/api/zzap;

    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzap;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V

    const-wide/16 v4, 0x7530

    new-instance v6, Lcom/android/billingclient/api/zzaq;

    invoke-direct {v6, p0, p1}, Lcom/android/billingclient/api/zzaq;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/billingclient/api/a;->e0(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public final isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x5

    if-nez v2, :cond_1

    sget-object v1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/billingclient/api/a;->M0(I)V

    :goto_0
    return-object v1

    :cond_1
    sget v2, Lcom/android/billingclient/api/i;->H:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/4 v13, 0x4

    const/16 v15, 0xa

    const/16 v14, 0x9

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "subscriptions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "priceChangeConfirmation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "lll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "kkk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "jjj"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v7

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "iii"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v8

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "hhh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v15

    goto :goto_2

    :sswitch_7
    const-string v2, "ggg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v14

    goto :goto_2

    :sswitch_8
    const-string v2, "fff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v9

    goto :goto_2

    :sswitch_9
    const-string v2, "eee"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v10

    goto :goto_2

    :sswitch_a
    const-string v2, "ddd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :sswitch_b
    const-string v2, "ccc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v11

    goto :goto_2

    :sswitch_c
    const-string v2, "bbb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v12

    goto :goto_2

    :sswitch_d
    const-string v2, "aaa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v13

    goto :goto_2

    :sswitch_e
    const-string v2, "subscriptionsUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const/16 v3, 0x13

    packed-switch v2, :pswitch_data_0

    const-string v2, "BillingClient"

    const-string v3, "Unsupported feature: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/billingclient/api/i;->z:Lcom/android/billingclient/api/BillingResult;

    const/16 v2, 0x22

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_0
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->A:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/android/billingclient/api/i;->y:Lcom/android/billingclient/api/BillingResult;

    :goto_3
    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_1
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->z:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/android/billingclient/api/i;->x:Lcom/android/billingclient/api/BillingResult;

    :goto_4
    const/16 v2, 0x67

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_2
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->y:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_5

    :cond_5
    sget-object v1, Lcom/android/billingclient/api/i;->E:Lcom/android/billingclient/api/BillingResult;

    :goto_5
    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_3
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->x:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_6

    :cond_6
    sget-object v1, Lcom/android/billingclient/api/i;->D:Lcom/android/billingclient/api/BillingResult;

    :goto_6
    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_4
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->v:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_7

    :cond_7
    sget-object v1, Lcom/android/billingclient/api/i;->B:Lcom/android/billingclient/api/BillingResult;

    :goto_7
    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_5
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->v:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_8

    :cond_8
    sget-object v1, Lcom/android/billingclient/api/i;->A:Lcom/android/billingclient/api/BillingResult;

    :goto_8
    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_6
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->u:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_9

    :cond_9
    sget-object v1, Lcom/android/billingclient/api/i;->v:Lcom/android/billingclient/api/BillingResult;

    :goto_9
    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_7
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->t:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_a

    :cond_a
    sget-object v1, Lcom/android/billingclient/api/i;->t:Lcom/android/billingclient/api/BillingResult;

    :goto_a
    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2, v14}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_8
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->t:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_b

    :cond_b
    sget-object v1, Lcom/android/billingclient/api/i;->t:Lcom/android/billingclient/api/BillingResult;

    :goto_b
    invoke-virtual {v0, v1, v3, v9}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_9
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->r:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_c

    :cond_c
    sget-object v1, Lcom/android/billingclient/api/i;->u:Lcom/android/billingclient/api/BillingResult;

    :goto_c
    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_a
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->s:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_d

    :cond_d
    sget-object v1, Lcom/android/billingclient/api/i;->s:Lcom/android/billingclient/api/BillingResult;

    :goto_d
    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_b
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->q:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_e

    :cond_e
    sget-object v1, Lcom/android/billingclient/api/i;->w:Lcom/android/billingclient/api/BillingResult;

    :goto_e
    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_c
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->n:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_f

    :cond_f
    sget-object v1, Lcom/android/billingclient/api/i;->r:Lcom/android/billingclient/api/BillingResult;

    :goto_f
    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_d
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->k:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_10

    :cond_10
    sget-object v1, Lcom/android/billingclient/api/i;->p:Lcom/android/billingclient/api/BillingResult;

    :goto_10
    invoke-virtual {v0, v1, v15, v12}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    :pswitch_e
    iget-boolean v1, v0, Lcom/android/billingclient/api/a;->j:Z

    if-eqz v1, :cond_11

    sget-object v1, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    goto :goto_11

    :cond_11
    sget-object v1, Lcom/android/billingclient/api/i;->o:Lcom/android/billingclient/api/BillingResult;

    :goto_11
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/billingclient/api/a;->Y(Lcom/android/billingclient/api/BillingResult;II)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1928a0a1 -> :sswitch_e
        0x17841 -> :sswitch_d
        0x17c22 -> :sswitch_c
        0x18003 -> :sswitch_b
        0x183e4 -> :sswitch_a
        0x187c5 -> :sswitch_9
        0x18ba6 -> :sswitch_8
        0x18f87 -> :sswitch_7
        0x19368 -> :sswitch_6
        0x19749 -> :sswitch_5
        0x19b2a -> :sswitch_4
        0x19f0b -> :sswitch_3
        0x1a2ec -> :sswitch_2
        0xc5ff92e -> :sswitch_1
        0x7674caf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isReady()Z
    .locals 4

    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/a;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/billingclient/api/a;->i:Lcom/android/billingclient/api/b;

    if-eqz p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic j0(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/a;->c0(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void
.end method

.method public final synthetic j1(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x5e

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    sget-object v2, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x77

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/a;->d0(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/sunia/HTREnginev2/yhp;

    iget-object v6, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    iget v7, p0, Lcom/android/billingclient/api/a;->l:I

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/sunia/HTREnginev2/yhp;-><init>(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/sunia/HTREnginev2/fjp;ILcom/android/billingclient/api/zzbl;)V

    const/16 v6, 0x16

    invoke-interface {v3, v6, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzn(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzaa;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/a;->d0(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/a;->d0(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    :goto_0
    return-object v1
.end method

.method public final synthetic k0(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/a;->d0(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void
.end method

.method public final synthetic k1(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x45

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/a;->h:Lcom/google/android/gms/internal/play_billing/zzan;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    sget-object v2, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x77

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/billingclient/api/a;->a0(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zze(Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/sunia/HTREnginev2/dip;

    iget-object v6, p0, Lcom/android/billingclient/api/a;->g:Lcom/sunia/HTREnginev2/fjp;

    iget v7, p0, Lcom/android/billingclient/api/a;->l:I

    invoke-direct {v5, p1, v6, v7, v1}, Lcom/sunia/HTREnginev2/dip;-><init>(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/sunia/HTREnginev2/fjp;ILcom/android/billingclient/api/zzbl;)V

    const/16 v6, 0x15

    invoke-interface {v3, v6, v2, v4, v5}, Lcom/google/android/gms/internal/play_billing/zzan;->zzr(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzai;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/android/billingclient/api/i;->k:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/a;->a0(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1, v3, v0, v2}, Lcom/android/billingclient/api/a;->a0(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    :goto_0
    return-object v1
.end method

.method public final synthetic l0(Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 32

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "proxyPackageVersion"

    const-string v9, "BUY_INTENT"

    iget-object v2, v8, Lcom/android/billingclient/api/a;->e:Lcom/sunia/HTREnginev2/cqp;

    const/4 v10, 0x2

    if-eqz v2, :cond_3d

    iget-object v2, v8, Lcom/android/billingclient/api/a;->e:Lcom/sunia/HTREnginev2/cqp;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/cqp;->d()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v2

    if-eqz v2, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v8, v10, v10, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzg()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzh()Ljava/util/List;

    move-result-object v3

    const/4 v11, 0x0

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/play_billing/zzcx;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/SkuDetails;

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/play_billing/zzcx;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v7

    :goto_0
    const-string v12, "subs"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/16 v13, 0x9

    const-string v14, "BillingClient"

    if-eqz v12, :cond_3

    iget-boolean v12, v8, Lcom/android/billingclient/api/a;->j:Z

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "Current client doesn\'t support subscriptions."

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/i;->o:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {v8, v13, v10, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :cond_3
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->i()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-boolean v12, v8, Lcom/android/billingclient/api/a;->m:Z

    if-eqz v12, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "Current client doesn\'t support extra params for buy intent."

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/i;->i:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x12

    invoke-virtual {v8, v1, v10, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :cond_5
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x1

    if-le v12, v15, :cond_7

    iget-boolean v12, v8, Lcom/android/billingclient/api/a;->t:Z

    if-eqz v12, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "Current client doesn\'t support multi-item purchases."

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/i;->t:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x13

    invoke-virtual {v8, v1, v10, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    iget-boolean v12, v8, Lcom/android/billingclient/api/a;->u:Z

    if-eqz v12, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "Current client doesn\'t support purchases with ProductDetails."

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/i;->v:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x14

    invoke-virtual {v8, v1, v10, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :cond_9
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->a()Lcom/android/billingclient/api/BillingResult;

    move-result-object v12

    sget-object v13, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    if-eq v12, v13, :cond_a

    const/16 v0, 0x78

    invoke-virtual {v8, v0, v10, v12}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v8, v12}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v12

    :cond_a
    iget-boolean v12, v8, Lcom/android/billingclient/api/a;->m:Z

    if-eqz v12, :cond_35

    iget-boolean v12, v8, Lcom/android/billingclient/api/a;->o:Z

    iget-boolean v13, v8, Lcom/android/billingclient/api/a;->w:Z

    iget-object v10, v8, Lcom/android/billingclient/api/a;->B:Lcom/android/billingclient/api/PendingPurchasesParams;

    invoke-virtual {v10}, Lcom/android/billingclient/api/PendingPurchasesParams;->a()Z

    move-result v10

    iget-object v11, v8, Lcom/android/billingclient/api/a;->B:Lcom/android/billingclient/api/PendingPurchasesParams;

    invoke-virtual {v11}, Lcom/android/billingclient/api/PendingPurchasesParams;->b()Z

    move-result v11

    iget-boolean v15, v8, Lcom/android/billingclient/api/a;->C:Z

    move-object/from16 v18, v9

    iget-object v9, v8, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    iget-object v0, v8, Lcom/android/billingclient/api/a;->F:Ljava/lang/Long;

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v8, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v9, v6, v7}, Lcom/google/android/gms/internal/play_billing/zze;->zzc(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zza()I

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zza()I

    move-result v6

    const-string v7, "prorationMode"

    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzc()Ljava/lang/String;

    move-result-object v6

    const-string v7, "accountId"

    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzd()Ljava/lang/String;

    move-result-object v6

    const-string v7, "obfuscatedProfileId"

    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzp()Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "isOfferPersonalizedByDeveloper"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_e
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    new-instance v7, Ljava/util/ArrayList;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "skusToReplace"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zze()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zze()Ljava/lang/String;

    move-result-object v6

    const-string v7, "oldSkuPurchaseToken"

    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string v7, "oldSkuPurchaseId"

    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzf()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzf()Ljava/lang/String;

    move-result-object v7

    const-string v9, "originalExternalTransactionId"

    invoke-virtual {v1, v9, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string v7, "paymentsPurchaseParams"

    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    if-eqz v12, :cond_14

    if-eqz v10, :cond_14

    const-string v6, "enablePendingPurchases"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_14
    const/4 v7, 0x1

    :goto_5
    if-eqz v13, :cond_15

    if-eqz v11, :cond_15

    const-string v6, "enablePendingPurchaseForSubscriptions"

    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    if-eqz v15, :cond_16

    const-string v6, "enableAlternativeBilling"

    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzh()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/play_billing/zza;

    invoke-direct {v7}, Lcom/google/android/gms/internal/play_billing/zza;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfn;->zza()Lcom/google/android/gms/internal/play_billing/zzfm;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzh()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/google/android/gms/internal/play_billing/zzb;

    invoke-direct {v9}, Lcom/google/android/gms/internal/play_billing/zzb;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/google/android/gms/internal/play_billing/zzc;

    invoke-direct {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzo()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/play_billing/zzfm;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/play_billing/zzfm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/zzhg;->zzf()Lcom/google/android/gms/internal/play_billing/zzhk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfv;->zzh()[B

    move-result-object v0

    const-string v6, "subscriptionProductReplacementParamsList"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v6, "additionalSkuTypes"

    const-string v7, "additionalSkus"

    const-string v9, "SKU_SERIALIZED_DOCID_LIST"

    const-string v10, "skuDetailsTokens"

    const-string v11, "SKU_OFFER_ID_TOKEN_LIST"

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_18

    move-object/from16 v29, v5

    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_18
    move-object/from16 v29, v5

    :goto_7
    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/SkuDetails;->zzc()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v30, v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/SkuDetails;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/SkuDetails;->zza()I

    move-result v31

    invoke-virtual/range {v28 .. v28}, Lcom/android/billingclient/api/SkuDetails;->zze()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v17, 0x1

    xor-int/lit8 v5, v5, 0x1

    or-int v24, v24, v5

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    or-int v25, v25, v4

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v31, :cond_19

    move/from16 v4, v17

    goto :goto_8

    :cond_19
    const/4 v4, 0x0

    :goto_8
    or-int v26, v26, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    or-int v27, v27, v4

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p0

    move-object/from16 v5, v29

    move-object/from16 v4, v30

    goto :goto_6

    :cond_1a
    move-object/from16 v30, v4

    move-object/from16 v29, v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1b
    if-eqz v24, :cond_1c

    invoke-virtual {v1, v11, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1c
    if-eqz v25, :cond_1d

    const-string v0, "SKU_OFFER_ID_LIST"

    invoke-virtual {v1, v0, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1d
    if-eqz v26, :cond_1e

    const-string v0, "SKU_OFFER_TYPE_LIST"

    invoke-virtual {v1, v0, v12}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1e
    if-eqz v27, :cond_1f

    invoke-virtual {v1, v9, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_2a

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x1

    :goto_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_20

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v8}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v8}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_20
    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_c

    :cond_21
    move-object/from16 v30, v4

    move-object/from16 v29, v5

    move-object/from16 v22, v14

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_27

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    invoke-virtual {v14}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->a()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_22

    move-object/from16 v23, v6

    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_22
    move-object/from16 v23, v6

    :goto_b
    invoke-virtual {v14}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zzb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->b()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_24

    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->b()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_24

    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails;->b()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_23
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_24

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->a()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_23

    invoke-virtual {v15}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->a()Ljava/lang/String;

    move-result-object v6

    :cond_24
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_25

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    if-lez v13, :cond_26

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    invoke-virtual {v6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    invoke-virtual {v6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v23

    goto/16 :goto_a

    :cond_27
    move-object/from16 v23, v6

    invoke-virtual {v1, v11, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v5, "AUTO_PAY_BALANCE_THRESHOLD_LIST"

    invoke-virtual {v1, v5, v12}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_28

    invoke-virtual {v1, v10, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_28
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v1, v7, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v0, v23

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2a
    :goto_c
    invoke-virtual {v1, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v8, p0

    if-eqz v0, :cond_2c

    iget-boolean v0, v8, Lcom/android/billingclient/api/a;->r:Z

    if-eqz v0, :cond_2b

    goto :goto_d

    :cond_2b
    sget-object v0, Lcom/android/billingclient/api/i;->u:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v8, v1, v2, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :cond_2c
    :goto_d
    const-string v0, "skuPackageName"

    if-eqz v30, :cond_2d

    invoke-virtual/range {v30 .. v30}, Lcom/android/billingclient/api/SkuDetails;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual/range {v30 .. v30}, Lcom/android/billingclient/api/SkuDetails;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    const/4 v7, 0x1

    goto :goto_f

    :cond_2d
    if-eqz v29, :cond_2e

    invoke-virtual/range {v29 .. v29}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual/range {v29 .. v29}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2e
    const/4 v7, 0x0

    :goto_f
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "accountName"

    invoke-virtual {v1, v0, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v0, "Activity\'s intent is null."

    move-object/from16 v10, v22

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_30
    move-object/from16 v10, v22

    const-string v2, "PROXY_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "proxyPackage"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v8, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, v21

    :try_start_1
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    :catch_0
    move-object/from16 v2, v21

    :catch_1
    const-string v0, "package not found"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :goto_10
    iget-boolean v0, v8, Lcom/android/billingclient/api/a;->u:Z

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    const/16 v0, 0x11

    :goto_11
    move v3, v0

    goto :goto_12

    :cond_32
    iget-boolean v0, v8, Lcom/android/billingclient/api/a;->s:Z

    if-eqz v0, :cond_33

    if-eqz v7, :cond_33

    const/16 v0, 0xf

    goto :goto_11

    :cond_33
    iget-boolean v0, v8, Lcom/android/billingclient/api/a;->o:Z

    if-eqz v0, :cond_34

    const/16 v3, 0x9

    goto :goto_12

    :cond_34
    const/4 v0, 0x6

    goto :goto_11

    :goto_12
    new-instance v11, Lcom/android/billingclient/api/zzar;

    move-object v0, v1

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzar;-><init>(Lcom/android/billingclient/api/a;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)V

    const-wide/16 v12, 0x1388

    const/4 v14, 0x0

    iget-object v15, v8, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v16

    invoke-static/range {v11 .. v16}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_13

    :cond_35
    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v18, v9

    move-object v9, v11

    move-object v10, v14

    new-instance v1, Lcom/android/billingclient/api/zzq;

    invoke-direct {v1, v8, v6, v7}, Lcom/android/billingclient/api/zzq;-><init>(Lcom/android/billingclient/api/a;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    iget-object v5, v8, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_13
    if-nez v0, :cond_36

    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/i;->d:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x19

    const/4 v2, 0x2

    invoke-virtual {v8, v1, v2, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-virtual {v8, v0}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :cond_36
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1, v10}, Lcom/google/android/gms/internal/play_billing/zze;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v10}, Lcom/google/android/gms/internal/play_billing/zze;->zzh(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to buy item, Error response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/android/billingclient/api/i;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v1, :cond_37

    :goto_14
    const/4 v3, 0x1

    const/4 v7, 0x1

    goto :goto_15

    :cond_37
    :try_start_3
    const-string v0, "LOG_REASON"

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_38

    goto :goto_14

    :cond_38
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_39

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzkg;->zza(I)I

    move-result v7

    const/4 v3, 0x1

    goto :goto_15

    :cond_39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type for bundle log reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_14

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to get log reason from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_14

    :goto_15
    if-ne v7, v3, :cond_3a

    const/16 v7, 0x17

    :cond_3a
    if-nez v1, :cond_3b

    :goto_16
    move-object v11, v9

    :goto_17
    const/4 v1, 0x2

    goto :goto_18

    :cond_3b
    :try_start_5
    const-string v0, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_17

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get additional log details from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :goto_18
    invoke-virtual {v8, v7, v1, v2, v11}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v2

    :cond_3c
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/billingclient/api/ProxyBillingActivity;

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    sget-object v0, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    return-object v0

    :catch_2
    move-exception v0

    const-string v1, "Exception while launching billing flow. Try to reconnect"

    invoke-static {v10, v1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-virtual {v8, v2, v3, v1, v0}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v1

    :catch_3
    move-exception v0

    const-string v1, "Time out while launching billing flow. Try to reconnect"

    invoke-static {v10, v1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-virtual {v8, v2, v3, v1, v0}, Lcom/android/billingclient/api/a;->L0(IILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/android/billingclient/api/a;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    return-object v1

    :cond_3d
    move v3, v10

    sget-object v0, Lcom/android/billingclient/api/i;->F:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0xc

    invoke-virtual {v8, v1, v3, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    return-object v0
.end method

.method public final synthetic m0(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/a;->a0(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void
.end method

.method public final synthetic n0(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/a;->e0(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void
.end method

.method public final synthetic o0(Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, p0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic p0(Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/16 v2, 0xb

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/billingclient/api/PurchaseHistoryResponseListener;->onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic q0(Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzco;->zzl()Lcom/google/android/gms/internal/play_billing/zzco;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, p0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/a;->u:Z

    if-nez v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Querying product details is not supported."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/i;->v:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x14

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, p0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance v2, Lcom/android/billingclient/api/zzam;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/billingclient/api/zzam;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    const-wide/16 v3, 0x7530

    new-instance v5, Lcom/android/billingclient/api/zzan;

    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzan;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1, p0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final queryPurchaseHistoryAsync(Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/a;->M(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void
.end method

.method public final queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/a;->M(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void
.end method

.method public final queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/a;->N(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public final queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/a;->N(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkuType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams;->getSkusList()Ljava/util/List;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "BillingClient"

    if-eqz p1, :cond_1

    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/i;->g:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x31

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_1
    if-nez v6, :cond_2

    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/i;->f:Lcom/android/billingclient/api/BillingResult;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_2
    new-instance p1, Lcom/android/billingclient/api/zzz;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/billingclient/api/zzz;-><init>(Lcom/android/billingclient/api/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    const-wide/16 v4, 0x7530

    new-instance v6, Lcom/android/billingclient/api/zzab;

    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/zzab;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->C0()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public final synthetic r0(Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/billingclient/api/SkuDetailsResponseListener;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic s0(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/a;->I0(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void
.end method

.method public showAlternativeBillingOnlyInformationDialog(Landroid/app/Activity;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)Lcom/android/billingclient/api/BillingResult;
    .locals 9
    .annotation build Lcom/android/billingclient/api/zzf;
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/16 v1, 0x10

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/a;->y:Z

    if-nez v0, :cond_1

    const-string p1, "BillingClient"

    const-string p2, "Current Play Store version doesn\'t support alternative billing only."

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/i;->E:Lcom/android/billingclient/api/BillingResult;

    const/16 p2, 0x42

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/android/billingclient/api/zzaw;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/billingclient/api/zzaw;-><init>(Lcom/android/billingclient/api/a;Landroid/os/Handler;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V

    new-instance v3, Lcom/android/billingclient/api/zzr;

    invoke-direct {v3, p0, p2, p1, v2}, Lcom/android/billingclient/api/zzr;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)V

    const-wide/16 v4, 0x7530

    new-instance v6, Lcom/android/billingclient/api/zzs;

    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/zzs;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V

    iget-object v7, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const/16 p2, 0x19

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    return-object p1

    :cond_2
    sget-object p0, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Please provide a valid activity."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public showExternalOfferInformationDialog(Landroid/app/Activity;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)Lcom/android/billingclient/api/BillingResult;
    .locals 9
    .annotation build Lcom/android/billingclient/api/zzg;
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const/16 v1, 0x19

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/a;->z:Z

    if-nez v0, :cond_1

    const-string p1, "BillingClient"

    const-string p2, "Current Play Store version doesn\'t support external offer."

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/i;->x:Lcom/android/billingclient/api/BillingResult;

    const/16 p2, 0x67

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    new-instance v2, Lcom/android/billingclient/api/zzax;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/billingclient/api/zzax;-><init>(Lcom/android/billingclient/api/a;Landroid/os/Handler;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)V

    new-instance v3, Lcom/android/billingclient/api/zzai;

    invoke-direct {v3, p0, p2, p1, v2}, Lcom/android/billingclient/api/zzai;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)V

    const-wide/16 v4, 0x7530

    new-instance v6, Lcom/android/billingclient/api/zzak;

    invoke-direct {v6, p0, p2}, Lcom/android/billingclient/api/zzak;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)V

    iget-object v7, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->F()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-virtual {p0, v1, v1, p1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    return-object p1

    :cond_2
    sget-object p0, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Please provide a valid activity."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final showInAppMessages(Landroid/app/Activity;Lcom/android/billingclient/api/InAppMessageParams;Lcom/android/billingclient/api/InAppMessageResponseListener;)Lcom/android/billingclient/api/BillingResult;
    .locals 8

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v0

    const-string v1, "BillingClient"

    if-nez v0, :cond_0

    const-string p0, "Service disconnected."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/a;->q:Z

    if-nez v0, :cond_1

    const-string p0, "Current client doesn\'t support showing in-app messages."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/billingclient/api/i;->w:Lcom/android/billingclient/api/BillingResult;

    return-object p0

    :cond_1
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "KEY_WINDOW_TOKEN"

    invoke-static {v0, v3, v1}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    const-string v3, "KEY_DIMEN_LEFT"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v1, v2, Landroid/graphics/Rect;->top:I

    const-string v3, "KEY_DIMEN_TOP"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v1, v2, Landroid/graphics/Rect;->right:I

    const-string v3, "KEY_DIMEN_RIGHT"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    const-string v2, "KEY_DIMEN_BOTTOM"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    const-string v2, "playBillingLibraryVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/billingclient/api/InAppMessageParams;->a()Ljava/util/ArrayList;

    move-result-object p2

    const-string v1, "KEY_CATEGORY_IDS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p2, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    new-instance v1, Lcom/android/billingclient/api/zzav;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/billingclient/api/zzav;-><init>(Lcom/android/billingclient/api/a;Landroid/os/Handler;Lcom/android/billingclient/api/InAppMessageResponseListener;)V

    new-instance v2, Lcom/android/billingclient/api/zzao;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/billingclient/api/zzao;-><init>(Lcom/android/billingclient/api/a;Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/ResultReceiver;)V

    const-wide/16 v3, 0x1388

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/billingclient/api/a;->d:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->I()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/a;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    sget-object p0, Lcom/android/billingclient/api/i;->l:Lcom/android/billingclient/api/BillingResult;

    return-object p0
.end method

.method public startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 9

    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->E0()Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    monitor-exit v0

    goto/16 :goto_2

    :cond_0
    iget v1, p0, Lcom/android/billingclient/api/a;->b:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "BillingClient"

    const-string v3, "Client is already in the process of connecting to billing service."

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/billingclient/api/i;->e:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x25

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    monitor-exit v0

    :goto_0
    move-object p0, v1

    goto/16 :goto_2

    :cond_1
    iget v1, p0, Lcom/android/billingclient/api/a;->b:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const-string v1, "BillingClient"

    const-string v3, "Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x26

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    monitor-exit v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/billingclient/api/a;->O(I)V

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->Q()V

    const-string v1, "BillingClient"

    const-string v4, "Starting in-app billing setup."

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/billingclient/api/b;

    const/4 v4, 0x0

    invoke-direct {v1, p0, p1, v4}, Lcom/android/billingclient/api/b;-><init>(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/zzbl;)V

    iput-object v1, p0, Lcom/android/billingclient/api/a;->i:Lcom/android/billingclient/api/b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/16 v6, 0x29

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/16 v6, 0x28

    if-eqz v1, :cond_7

    iget-object v7, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v8, "com.android.vending"

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v1, :cond_6

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/a;->c:Ljava/lang/String;

    const-string v6, "playBillingLibraryVersion"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget v6, p0, Lcom/android/billingclient/api/a;->b:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->E0()Lcom/android/billingclient/api/BillingResult;

    move-result-object p0

    monitor-exit v0

    goto :goto_2

    :cond_3
    iget v6, p0, Lcom/android/billingclient/api/a;->b:I

    if-eq v6, v3, :cond_4

    const-string v1, "BillingClient"

    const-string v3, "Client state no longer CONNECTING, returning service disconnected."

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/billingclient/api/i;->m:Lcom/android/billingclient/api/BillingResult;

    const/16 v3, 0x75

    invoke-virtual {p0, v3, v2, v1}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    monitor-exit v0

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/billingclient/api/a;->i:Lcom/android/billingclient/api/b;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/billingclient/api/a;->f:Landroid/content/Context;

    invoke-virtual {v0, v1, v6, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "BillingClient"

    const-string v0, "Service was bonded successfully."

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v4

    goto :goto_2

    :cond_5
    const-string v0, "BillingClient"

    const-string v1, "Connection to Billing service is blocked."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x27

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_6
    const-string v0, "BillingClient"

    const-string v1, "The device doesn\'t have valid Play Store."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v0, "BillingClient"

    const-string v1, "The device doesn\'t have valid Play Store."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/billingclient/api/a;->O(I)V

    const-string v0, "BillingClient"

    const-string v1, "Billing service unavailable on device."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/i;->c:Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, v6, v2, v0}, Lcom/android/billingclient/api/a;->K0(IILcom/android/billingclient/api/BillingResult;)V

    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_9

    invoke-interface {p1, p0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    :cond_9
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final synthetic t0(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)V
    .locals 3

    sget-object v0, Lcom/android/billingclient/api/i;->n:Lcom/android/billingclient/api/BillingResult;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/a;->G0(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;ILjava/lang/Exception;)V

    return-void
.end method
