.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field zzb:Ljava/util/concurrent/Future;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Ljava/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzart;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzart;->zzb:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzart;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzart;->zzb:Ljava/util/concurrent/Future;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Ljava/util/concurrent/Future;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzart;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzart;->zzb:Ljava/util/concurrent/Future;

    return-void
.end method
