.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtt;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbts;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    const/16 p0, 0x2b

    return p0
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    return-object p0
.end method

.method public final zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object p0

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    move-result-object p0

    return-object p0
.end method

.method public final zze(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxc;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    iget-object p0, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    const/4 p7, 0x0

    if-eq p0, p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzn()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzi()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzm()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    goto/16 :goto_0

    :pswitch_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzh()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    goto/16 :goto_0

    :pswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t reach here."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzj()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzp()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object p7

    goto/16 :goto_0

    :pswitch_7
    iget-object p0, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p7

    invoke-virtual {p1, p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object p1

    move-object p7, p0

    check-cast p7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result p7

    if-nez p7, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object p7

    invoke-interface {p1, p7, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {p5, p0, p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    move-object p0, p7

    :cond_0
    invoke-interface {p2, p0, p1, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzw(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    return-object p6

    :cond_1
    iget-object p0, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {p2, p0, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzs(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object p7

    goto/16 :goto_0

    :pswitch_8
    iget-object p0, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p7

    invoke-virtual {p1, p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object p1

    move-object p7, p0

    check-cast p7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzag()Z

    move-result p7

    if-nez p7, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object p7

    invoke-interface {p1, p7, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {p5, p0, p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    move-object p0, p7

    :cond_2
    invoke-interface {p2, p0, p1, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    return-object p6

    :cond_3
    iget-object p0, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {p2, p0, p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzr(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object p7

    goto :goto_0

    :pswitch_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzt()Ljava/lang/String;

    move-result-object p7

    goto :goto_0

    :pswitch_a
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzQ()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    goto :goto_0

    :pswitch_b
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzf()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    goto :goto_0

    :pswitch_c
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzk()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    goto :goto_0

    :pswitch_d
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzg()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    goto :goto_0

    :pswitch_e
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzo()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    goto :goto_0

    :pswitch_f
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzl()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    goto :goto_0

    :pswitch_10
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzb()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p7

    goto :goto_0

    :pswitch_11
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zza()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p7

    :goto_0
    iget-object p0, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_4

    const/16 p1, 0xa

    if-eq p0, p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0, p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    :cond_5
    :goto_1
    iget-object p0, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {p5, p0, p7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    return-object p6

    :cond_6
    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzg()I

    throw p7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzh()V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    iget-object p0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;->zzs(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-virtual {p4, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    iget-object p0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsw;

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsw;->zza:[B

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsw;->zzd()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzH([BIIZ)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;->zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;

    iget-object p2, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;->zzy()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzz(I)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/16 v0, 0x2b

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzE(IJ)V

    return-void

    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzC(II)V

    return-void

    :pswitch_2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzA(IJ)V

    return-void

    :pswitch_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzy(II)V

    return-void

    :pswitch_4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzr(II)V

    return-void

    :pswitch_5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzJ(II)V

    return-void

    :pswitch_6
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzd(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    return-void

    :pswitch_7
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object p2

    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzw(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    return-void

    :pswitch_8
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object p2

    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzq(ILjava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;)V

    return-void

    :pswitch_9
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzH(ILjava/lang/String;)V

    return-void

    :pswitch_a
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzb(IZ)V

    return-void

    :pswitch_b
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzk(II)V

    return-void

    :pswitch_c
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzm(IJ)V

    return-void

    :pswitch_d
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzr(II)V

    return-void

    :pswitch_e
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzL(IJ)V

    return-void

    :pswitch_f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzt(IJ)V

    return-void

    :pswitch_10
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzo(IF)V

    return-void

    :pswitch_11
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxu;->zzf(ID)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Z
    .locals 0

    instance-of p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;

    return p0
.end method
