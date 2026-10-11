.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzc:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzc()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzc:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object p0

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public final zze()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzS()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;->zzah()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;->zzy()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzm(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzf(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzF(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzc:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwk;->zzE(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v3

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzc()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_b

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzd()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_3

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    ushr-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzr(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;)Z

    move-result v4

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzR()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez v4, :cond_0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v6

    move-object v6, v4

    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzc()I

    move-result v8

    if-ne v8, v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzd()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzj()I

    move-result v7

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {v1, p3, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v4, :cond_7

    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;)V

    goto :goto_2

    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzp()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object v6

    goto :goto_2

    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzR()Z

    move-result v8

    if-nez v8, :cond_4

    :goto_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzd()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_a

    if-eqz v6, :cond_0

    if-eqz v4, :cond_9

    invoke-virtual {v1, v6, v4, p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;)V

    goto :goto_0

    :cond_9
    invoke-virtual {v0, v2, v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzk(Ljava/lang/Object;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    goto :goto_0

    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzn(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p0
.end method

.method public final zzi(Ljava/lang/Object;[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object p1

    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    if-ge p3, p4, :cond_a

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    const/16 v3, 0xb

    const/4 v5, 0x2

    if-eq p3, v3, :cond_3

    and-int/lit8 v3, p3, 0x7

    if-ne v3, v5, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    iget-object v3, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    ushr-int/lit8 v6, p3, 0x3

    invoke-virtual {v2, v3, v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object p3

    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    iget-object v3, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object p3

    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p3

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    iget-object v3, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v2, p3

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzi(I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p3

    :goto_1
    move-object v2, v8

    goto :goto_0

    :cond_2
    invoke-static {p3, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzp(I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v3, v0

    :goto_2
    if-ge v4, p4, :cond_8

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v4

    iget v6, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    ushr-int/lit8 v7, v6, 0x3

    and-int/lit8 v8, v6, 0x7

    if-eq v7, v5, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object v6

    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    iget-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object v6

    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v4

    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    iget-object v7, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v8, v5, :cond_7

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zza([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v4

    iget-object v3, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzc:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    goto :goto_2

    :cond_6
    if-nez v8, :cond_7

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzj([BILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    iget-object v6, p5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {v2, v6, v7, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_7
    :goto_3
    const/16 v7, 0xc

    if-eq v6, v7, :cond_8

    invoke-static {v6, p2, v4, p4, p5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsm;->zzp(I[BIILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsl;)I

    move-result v4

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v5

    invoke-virtual {v1, p3, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxd;->zzj(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object p0

    throw p0
.end method

.method public final zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzg()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzg()Z

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzf()Z

    instance-of v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuw;

    const/16 v4, 0x2b

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zza()I

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuw;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object v1

    invoke-interface {p2, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzx(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zza()I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v4, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzx(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Found invalid MessageSet item."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;)V

    return-void
.end method

.method public final zzk(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvy;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzm()Z

    move-result p0

    return p0
.end method
