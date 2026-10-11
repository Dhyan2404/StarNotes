.class public final Lcom/sunia/HTREnginev2/wsp;
.super Lcom/sunia/HTREnginev2/lfp;
.source "SourceFile"


# instance fields
.field public g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

.field public final synthetic h:Lcom/sunia/HTREnginev2/lrp;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/lrp;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzfo$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-direct {p0, p2, p3}, Lcom/sunia/HTREnginev2/lfp;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zza()I

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzfy$zzo;Z)Z
    .locals 10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoe;->zza()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    iget-object v3, p0, Lcom/sunia/HTREnginev2/lfp;->a:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbn:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzf()Z

    move-result v3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzg()Z

    move-result v4

    iget-object v5, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzh()Z

    move-result v5

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    :goto_2
    const/4 v4, 0x0

    if-eqz p4, :cond_4

    if-nez v3, :cond_4

    iget-object p1, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    iget p2, p0, Lcom/sunia/HTREnginev2/lfp;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzi()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zza()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3
    const-string p0, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    invoke-virtual {p1, p0, p2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_4
    iget-object v6, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzb()Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzf()Z

    move-result v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzk()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzh()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v6, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    iget-object v7, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long property. property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    move-result-object v4

    invoke-static {v8, v9, v4}, Lcom/sunia/HTREnginev2/lfp;->c(JLcom/google/android/gms/internal/measurement/zzfo$zzd;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/sunia/HTREnginev2/lfp;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzi()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzh()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v6, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    iget-object v7, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double property. property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zza()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    move-result-object v4

    invoke-static {v8, v9, v4}, Lcom/sunia/HTREnginev2/lfp;->b(DLcom/google/android/gms/internal/measurement/zzfo$zzd;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/sunia/HTREnginev2/lfp;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzm()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzj()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzh()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v6, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    iget-object v7, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No string or number filter defined. property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzoo;->I(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sunia/HTREnginev2/lfp;->e(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfo$zzd;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/sunia/HTREnginev2/lfp;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    iget-object v7, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {v6, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzfo$zzf;

    move-result-object v6

    iget-object v8, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v8

    invoke-static {v4, v6, v8}, Lcom/sunia/HTREnginev2/lfp;->g(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfo$zzf;Lcom/google/android/gms/measurement/internal/zzgo;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/sunia/HTREnginev2/lfp;->d(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    iget-object v7, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/d;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "User property has no value, property"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    iget-object v6, p0, Lcom/sunia/HTREnginev2/wsp;->h:Lcom/sunia/HTREnginev2/lrp;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/d;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    if-nez v4, :cond_d

    const-string v7, "null"

    goto :goto_4

    :cond_d
    move-object v7, v4

    :goto_4
    const-string v8, "Property filter result"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v4, :cond_e

    return v1

    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/lfp;->c:Ljava/lang/Boolean;

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    if-eqz p4, :cond_10

    iget-object p4, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzf()Z

    move-result p4

    if-eqz p4, :cond_11

    :cond_10
    iput-object v4, p0, Lcom/sunia/HTREnginev2/lfp;->d:Ljava/lang/Boolean;

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_15

    if-eqz v3, :cond_15

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzl()Z

    move-result p4

    if-eqz p4, :cond_15

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzd()J

    move-result-wide p3

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_12
    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzf()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzg()Z

    move-result p1

    if-nez p1, :cond_13

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_13
    iget-object p1, p0, Lcom/sunia/HTREnginev2/wsp;->g:Lcom/google/android/gms/internal/measurement/zzfo$zze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzg()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lfp;->f:Ljava/lang/Long;

    goto :goto_5

    :cond_14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lfp;->e:Ljava/lang/Long;

    :cond_15
    :goto_5
    return v2
.end method
