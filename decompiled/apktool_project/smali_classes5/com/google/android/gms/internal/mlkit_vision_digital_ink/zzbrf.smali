.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

.field static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;


# instance fields
.field final zzc:Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zza:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrf;->zzc:Ljava/lang/Throwable;

    return-void
.end method
