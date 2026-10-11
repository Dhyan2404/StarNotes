.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/util/concurrent/Executor;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zzc:Ljava/util/HashMap;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacw;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacw;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zzc:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zza:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacw;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zzc:Ljava/util/HashMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaba;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacw;Ljava/util/Map;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacz;[B)V

    return-object v7
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zzc:Ljava/util/HashMap;

    const-string v1, "singleproc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v2, "There is already a factory registered for the ID %s"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagg;->zzh(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zzc:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzc(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zza:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    return-object p0
.end method
