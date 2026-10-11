.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadp;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;

.field private static final zzb:Ljava/util/UUID;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;->zzb:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadw;->zzb:Ljava/util/UUID;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadp;-><init>(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public final zzg(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t create child trace for no trace!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzh(Z)V
    .locals 0

    return-void
.end method

.method public final zzi(I)V
    .locals 0

    return-void
.end method
