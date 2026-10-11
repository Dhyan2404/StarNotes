.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxe;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zza()I

    move-result p0

    return p0
.end method

.method public final synthetic zzb(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzb()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    :cond_0
    return-object p0
.end method

.method public final synthetic zzd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    return-object p0
.end method

.method public final bridge synthetic zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final synthetic zzf()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzg(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzh()V

    return-object p1
.end method

.method public final bridge synthetic zzh(Ljava/lang/Object;II)V
    .locals 0

    shl-int/lit8 p0, p2, 0x3

    or-int/lit8 p0, p0, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzj(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic zzi(Ljava/lang/Object;IJ)V
    .locals 0

    shl-int/lit8 p0, p2, 0x3

    or-int/lit8 p0, p0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzj(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic zzj(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    shl-int/lit8 p0, p2, 0x3

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    or-int/lit8 p0, p0, 0x3

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzj(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic zzk(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V
    .locals 0

    shl-int/lit8 p0, p2, 0x3

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    or-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzj(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic zzl(Ljava/lang/Object;IJ)V
    .locals 0

    shl-int/lit8 p0, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzj(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzm(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzh()V

    return-void
.end method

.method public final synthetic zzn(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    return-void
.end method

.method public final synthetic zzo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    iput-object p2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    return-void
.end method

.method public final synthetic zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    return-void
.end method

.method public final synthetic zzq(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
