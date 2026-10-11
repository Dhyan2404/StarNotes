.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;)Z
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "DataFileGroupValidator"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "%s Group name missing in added group"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzf(Ljava/lang/String;Ljava/lang/Object;)I

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p0

    const-string p1, "%s Group name = %s contains \'|\'"

    invoke-static {p1, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzs()Ljava/lang/String;

    move-result-object p0

    const-string p1, "%s Owner package = %s contains \'|\'"

    invoke-static {p1, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzv()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzs()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    :goto_0
    move v6, v5

    goto :goto_1

    :cond_5
    move v6, v2

    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzz()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eqz v7, :cond_6

    xor-int/lit8 v7, v6, 0x1

    goto :goto_2

    :cond_6
    move v7, v6

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v6, :cond_7

    move v6, v5

    goto :goto_3

    :cond_7
    move v6, v2

    :goto_3
    or-int/2addr v6, v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzx()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzj()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    move v7, v2

    goto :goto_5

    :cond_9
    :goto_4
    move v7, v5

    :goto_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_13

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zza()I

    move-result v9

    if-ltz v9, :cond_13

    if-eqz v6, :cond_13

    if-eqz v7, :cond_13

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzu()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgt;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;)Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzq()Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zzc()I

    move-result v7

    if-le v7, v5, :cond_b

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Download zip folder transform cannot not be applied with other transforms. Group = %s, file id = %s"

    invoke-static {p1, v6, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_6

    :cond_b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zzf(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcar;->zzg()Ljava/lang/String;

    move-result-object v7

    const-string v9, "*"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Download zip folder transform can only have * as target. Group = %s, file id = %s"

    invoke-static {p1, v6, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_6

    :cond_c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzz()I

    move-result v6

    if-eq v6, v8, :cond_d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzv()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Download checksum must be provided. Group = %s, file id = %s"

    invoke-static {p2, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_6

    :cond_d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzw()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzgt;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_7

    :cond_e
    :goto_6
    return v2

    :cond_f
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzp()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzf()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzf()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzh()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zza()I

    move-result v9

    if-ltz v9, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzi()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzj()I

    move-result v9

    if-eq v9, v5, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzg()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbz;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbz;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbz;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbz;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcw;->zzf()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, v6, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s Delta File of Datafile details missing in added group = %s, file id = %s, delta file UrlToDownload = %s."

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    :cond_12
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzvu;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzp()Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzo()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s File detected as sideloaded, but sideloading is not enabled. group = %s, file id = %s, file url = %s"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s File details missing in added group = %s, file id = %s"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    :cond_14
    move p2, v2

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zza()I

    move-result v0

    if-ge p2, v0, :cond_17

    add-int/lit8 v0, p2, 0x1

    move v3, v0

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zza()I

    move-result v4

    if-ge v3, v4, :cond_16

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzh(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzh(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzh(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzck;->zzm()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s Repeated file id in added group = %s, file id = %s"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    return v2

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    move p2, v0

    goto :goto_8

    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzm()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;->zzg()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzm()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzdh;->zza()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long p2, v3, v6

    if-lez p2, :cond_18

    goto :goto_a

    :cond_18
    const-string p0, "%s For DOWNLOAD_FIRST_ON_WIFI_THEN_ON_ANY_NETWORK policy, the download_first_on_wifi_period_secs must be > 0"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzf(Ljava/lang/String;Ljava/lang/Object;)I

    return v2

    :cond_19
    :goto_a
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzb(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcr;->zzE()I

    move-result p0

    if-ne p0, v0, :cond_1a

    const-string p0, "%s For AllowedReaders ALL_APPS policy, the device should be migrated to new key"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzf(Ljava/lang/String;Ljava/lang/Object;)I

    return v2

    :cond_1a
    return v5
.end method

.method private static zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaak;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Invalid transform specification"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
