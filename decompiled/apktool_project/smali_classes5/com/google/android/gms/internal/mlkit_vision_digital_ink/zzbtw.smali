.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;


# instance fields
.field final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwl;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwl;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwl;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzh()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzh()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;ILjava/lang/Object;)I
    .locals 4

    sget v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzf:I

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzL(I)I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    if-ne p0, v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Z

    add-int/2addr p1, p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long v2, v0, v0

    const/16 p0, 0x3f

    shr-long/2addr v0, p0

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v0

    goto/16 :goto_1

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p2, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p2

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v0

    goto/16 :goto_1

    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_1

    :pswitch_4
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;

    if-eqz p0, :cond_1

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;

    invoke-interface {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzF(I)I

    move-result v0

    goto/16 :goto_1

    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzF(I)I

    move-result v0

    goto/16 :goto_1

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v0

    goto/16 :goto_1

    :pswitch_6
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz p0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzC(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)I

    move-result v0

    goto/16 :goto_1

    :cond_2
    check-cast p2, [B

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzB([B)I

    move-result v0

    goto/16 :goto_1

    :pswitch_7
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    if-eqz p0, :cond_3

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzG(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;)I

    move-result v0

    goto :goto_1

    :cond_3
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzH(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)I

    move-result v0

    goto :goto_1

    :pswitch_8
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzE(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)I

    move-result v0

    goto :goto_1

    :pswitch_9
    instance-of p0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz p0, :cond_4

    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzC(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)I

    move-result v0

    goto :goto_1

    :cond_4
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzK(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto :goto_1

    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    goto :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzF(I)I

    move-result v0

    goto :goto_1

    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v0

    goto :goto_1

    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzN(J)I

    move-result v0

    goto :goto_1

    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    goto :goto_1

    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    :goto_0
    move v0, v1

    :goto_1
    add-int/2addr p1, v0

    return p1

    nop

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

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zza()I

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzg()Z

    const/16 p0, 0x2b

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    return-object v0
.end method

.method public static zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    if-eq p1, v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zza()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzv(II)V

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long v0, p1, p1

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzz(J)V

    return-void

    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p2, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzx(I)V

    return-void

    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzm(J)V

    return-void

    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzk(I)V

    return-void

    :pswitch_4
    instance-of p1, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;

    invoke-interface {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;->zza()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzo(I)V

    return-void

    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzo(I)V

    return-void

    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzx(I)V

    return-void

    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz p1, :cond_1

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    return-void

    :cond_1
    check-cast p3, [B

    array-length p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzZ([BII)V

    return-void

    :pswitch_7
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)V

    return-void

    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;->zzaj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;)V

    return-void

    :pswitch_9
    instance-of p1, p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    return-void

    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzu(Ljava/lang/String;)V

    return-void

    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzX(B)V

    return-void

    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzk(I)V

    return-void

    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzm(J)V

    return-void

    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzo(I)V

    return-void

    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzz(J)V

    return-void

    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzz(J)V

    return-void

    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzk(I)V

    return-void

    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzm(J)V

    return-void

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Z

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzv(II)V

    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;->zzaj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzv(II)V

    return-void

    nop

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

.method private static zzn(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method private final zzo(Ljava/util/Map$Entry;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzg()Z

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    instance-of v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvz;

    move-result-object p1

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;->zzai()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvt;->zzx()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    const/4 p0, 0x0

    throw p0
.end method

.method private static zzp(Ljava/util/Map$Entry;)Z
    .locals 4

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzg()Z

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;->zzal()Z

    move-result v3

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    if-eqz p0, :cond_1

    :goto_0
    return v3

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v3
.end method

.method private static final zzq(Ljava/util/Map$Entry;)I
    .locals 6

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzg()Z

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzf()Z

    instance-of v0, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    const/16 v2, 0x2b

    const/16 v3, 0x8

    const/16 v4, 0x10

    const/16 v5, 0x18

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zza()I

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    sget p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzf:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuz;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v0

    add-int/2addr v0, p0

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result p0

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v1

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v2

    add-int/2addr v3, v3

    add-int/2addr v1, v2

    add-int/2addr v3, v1

    add-int/2addr p0, v0

    add-int/2addr v3, p0

    return v3

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zza()I

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzH(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;)I

    move-result p0

    invoke-static {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v0

    add-int/2addr v0, p0

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result p0

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v1

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtm;->zzM(I)I

    move-result v2

    add-int/2addr v1, v1

    add-int/2addr p0, v2

    add-int/2addr v1, p0

    add-int/2addr v1, v0

    return v1

    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->hashCode()I

    move-result p0

    return p0
.end method

.method public final zzc()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzb()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzq(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzc()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzq(Ljava/util/Map$Entry;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzc()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzd:Z

    iput-boolean p0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzd:Z

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzg()Ljava/util/Iterator;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzd:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbux;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbux;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final zzh()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzc:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzab()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zza()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzc:Z

    :cond_2
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzo(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzc()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzo(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzg()Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuk;

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_2
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    if-nez v0, :cond_0

    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    goto :goto_1

    :pswitch_3
    instance-of v0, p2, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p2, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p2, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p2, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p2, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p2, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuy;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzd:Z

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zze(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zza()I

    const/16 v0, 0x2b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtv;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxt;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final zzl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzc:Z

    return p0
.end method

.method public final zzm()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzg(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzp(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwv;->zzc()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtw;->zzp(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
