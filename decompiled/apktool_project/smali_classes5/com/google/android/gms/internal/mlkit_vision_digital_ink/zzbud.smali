.class public Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbud;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method


# virtual methods
.method public final zzB()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtp;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbud;
    .locals 3

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzd:I

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzw()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzB()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzl()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;->zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    if-ne v1, v2, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzh()V

    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzv()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    return-object p0
.end method

.method public final bridge synthetic zzv()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbud;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzy()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbud;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    move-result-object p0

    return-object p0
.end method
