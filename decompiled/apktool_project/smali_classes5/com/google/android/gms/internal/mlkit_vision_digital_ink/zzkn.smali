.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzkn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzkn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzkn;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzkn;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsc;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsc;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
