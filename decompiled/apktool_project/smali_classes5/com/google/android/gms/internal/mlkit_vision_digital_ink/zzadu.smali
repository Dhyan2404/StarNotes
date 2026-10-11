.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadu;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadm;


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadk;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadk;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadk;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zzc()Ljava/util/UUID;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadj;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/Thread;)V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadk;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadk;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;
    .locals 1

    if-eqz p3, :cond_0

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzb:I

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Z)V

    return-object v0
.end method

.method public final synthetic zze()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadk;

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;
    .locals 0

    sget p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzb:I

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadu;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

    move-result-object p0

    return-object p0
.end method

.method public final zzh(Z)V
    .locals 0

    return-void
.end method

.method public final zzi(I)V
    .locals 0

    return-void
.end method
