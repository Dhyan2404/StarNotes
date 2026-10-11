.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrc;

.field private final zzb:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrc;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrb;->zzb:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrb;->zzb:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrc;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrc;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrc;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrb;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrc;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrc;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrc;)V

    throw v0
.end method
