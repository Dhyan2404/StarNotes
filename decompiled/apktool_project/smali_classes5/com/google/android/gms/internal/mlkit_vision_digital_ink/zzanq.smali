.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanq;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanr;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanp;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzano;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanq;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanr;

    return-void
.end method

.method public static final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzanq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzann;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "No-op Provider"

    return-object p0
.end method
