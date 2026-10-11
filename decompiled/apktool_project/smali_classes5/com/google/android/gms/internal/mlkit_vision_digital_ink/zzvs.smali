.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zza:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzc:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;

    return-void
.end method

.method public static zza(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvq;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;)V

    return-object v1
.end method

.method public static zzb(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;)V

    return-object v0
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    const-string v0, "%s: submitting request to add in-progress download future with key: %s"

    const-string v1, "DownloadFutureMap"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzm(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvo;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvo;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    const-string v0, "%s: submitting request for in-progress download future with key: %s"

    const-string v1, "DownloadFutureMap"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzm(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;->zzb(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zze(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;->zza(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zza:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p2, "DownloadFutureMap"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: Failed to add download future (%s) to map"

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zza:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvr;->zzb(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DownloadFutureMap"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s: Failed to remove download future (%s) from map"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzj(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    const-string v0, "%s: submitting request to remove in-progress download future with key: %s"

    const-string v1, "DownloadFutureMap"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzm(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvs;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwt;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
