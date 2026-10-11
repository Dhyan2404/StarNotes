.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzara;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:Ljava/lang/Runnable;

.field final zzb:Ljava/util/concurrent/Executor;

.field zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzara;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzara;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzara;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzara;->zza:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzara;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzara;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzara;

    return-void
.end method
