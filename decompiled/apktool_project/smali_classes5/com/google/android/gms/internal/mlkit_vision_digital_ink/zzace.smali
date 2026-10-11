.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

.field public final synthetic zzd:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzace;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzace;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzace;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzace;->zzd:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzace;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzace;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzace;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzace;->zzd:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzach;

    invoke-direct {v3, v0, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzach;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method
