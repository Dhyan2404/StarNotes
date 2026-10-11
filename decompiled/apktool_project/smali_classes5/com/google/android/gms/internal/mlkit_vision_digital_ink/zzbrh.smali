.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;


# instance fields
.field final zzb:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrg;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrg;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbro;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbrh;->zzb:Ljava/lang/Throwable;

    return-void
.end method
