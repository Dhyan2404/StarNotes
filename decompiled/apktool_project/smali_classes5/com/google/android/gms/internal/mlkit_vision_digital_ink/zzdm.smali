.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdm;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbx;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdm;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdm;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;)V

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdm;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdm;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdp;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
