.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadp;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadm;


# instance fields
.field private final zza:Ljava/lang/Exception;

.field private final zzb:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Ljava/lang/Thread;)V

    .line 2
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadm;->zze()Ljava/lang/Exception;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;->zza:Ljava/lang/Exception;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;->zzb:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Z)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadq;->zzc()Ljava/util/UUID;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadp;-><init>(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Ljava/lang/Thread;)V

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadk;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;->zza:Ljava/lang/Exception;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;->zzb:Z

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;
    .locals 2

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;->zzb:Z

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeu;->zzb:I

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;->zzb:Z

    if-eqz p3, :cond_3

    :cond_1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;->zzb:Z

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    invoke-direct {v0, p1, p0, p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Z)V

    return-object v0
.end method

.method public final zze()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;->zza:Ljava/lang/Exception;

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaev;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;
    .locals 0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadv;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeb;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeh;

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
