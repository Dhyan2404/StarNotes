.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasa;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzi;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasa;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->zzd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasa;-><init>()V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasa;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa$zzi;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqa;->cancel(Z)Z

    return-void
.end method
