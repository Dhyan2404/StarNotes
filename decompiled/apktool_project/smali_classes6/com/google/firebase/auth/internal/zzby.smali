.class public final Lcom/google/firebase/auth/internal/zzby;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:I

.field public final b:Lcom/google/firebase/auth/internal/zzan;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/zzan;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/zzby;->c:Z

    .line 4
    iput v0, p0, Lcom/google/firebase/auth/internal/zzby;->a:I

    .line 5
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzby;->b:Lcom/google/firebase/auth/internal/zzan;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    new-instance p2, Lcom/sunia/HTREnginev2/oip;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/oip;-><init>(Lcom/google/firebase/auth/internal/zzby;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/internal/zzan;

    invoke-direct {v1, p1}, Lcom/google/firebase/auth/internal/zzan;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/internal/zzby;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/zzan;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/firebase/auth/internal/zzby;)Lcom/google/firebase/auth/internal/zzan;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzby;->b:Lcom/google/firebase/auth/internal/zzan;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/firebase/auth/internal/zzby;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzby;->c:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/google/firebase/auth/internal/zzby;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzby;->c()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/auth/internal/zzby;->a:I

    if-lez v0, :cond_0

    iget-boolean p0, p0, Lcom/google/firebase/auth/internal/zzby;->c:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzby;->b:Lcom/google/firebase/auth/internal/zzan;

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzan;->zzb()V

    return-void
.end method

.method public final zza(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 2
    iget v0, p0, Lcom/google/firebase/auth/internal/zzby;->a:I

    if-nez v0, :cond_0

    .line 3
    iput p1, p0, Lcom/google/firebase/auth/internal/zzby;->a:I

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzby;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzby;->b:Lcom/google/firebase/auth/internal/zzan;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzan;->zzc()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 6
    iget v0, p0, Lcom/google/firebase/auth/internal/zzby;->a:I

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzby;->b:Lcom/google/firebase/auth/internal/zzan;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzan;->zzb()V

    .line 8
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/firebase/auth/internal/zzby;->a:I

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafm;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/16 v0, 0xe10

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafm;->zzb()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 11
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzby;->b:Lcom/google/firebase/auth/internal/zzan;

    .line 12
    iput-wide v2, p1, Lcom/google/firebase/auth/internal/zzan;->b:J

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p1, Lcom/google/firebase/auth/internal/zzan;->c:J

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzby;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzby;->b:Lcom/google/firebase/auth/internal/zzan;

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzan;->zzc()V

    :cond_2
    return-void
.end method
