.class abstract Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

.field private final zzb:Ljava/util/UUID;

.field private final zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Ljava/lang/Thread;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;->zzc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;->zzc()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;->zzb:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;->zzc:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;->zzb:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    return-object p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;->zzb:Ljava/util/UUID;

    return-object p0
.end method
