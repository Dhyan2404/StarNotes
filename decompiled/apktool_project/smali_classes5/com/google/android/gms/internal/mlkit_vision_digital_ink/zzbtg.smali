.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbur;->zzf(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    iput-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;

    return-void
.end method

.method private final zzS(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzn()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzi()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzm()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzh()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zze()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzj()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzp()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzs(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzu()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzQ()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzf()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzk()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzg()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzo()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzl()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

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
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final zzT(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzV(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzf(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zzU(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzW(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzf(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zzV(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzc:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzc:I

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzc:I

    throw p1
.end method

.method private final zzW(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    iget v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zza:I

    iget v3, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzb:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zze(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    iget v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zza:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zza:I

    invoke-interface {p2, p1, p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;->zzh(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwh;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzz(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zza:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zza:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzA(I)V

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzX(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzj()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object p0

    throw p0
.end method

.method private final zzY(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p0, p0, 0x7

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0
.end method

.method private static final zzZ(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object p0

    throw p0
.end method

.method private static final zzaa(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    move-result-object p0

    throw p0
.end method

.method public static zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;)V

    return-object v0
.end method


# virtual methods
.method public final zzA(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void
.end method

.method public final zzB(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzZ(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzZ(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final zzC(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzo()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void
.end method

.method public final zzD(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbty;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbty;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzc()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbty;->zze(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzZ(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzc()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbty;->zze(F)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzZ(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final zzE(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzT(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0
.end method

.method public final zzF(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void
.end method

.method public final zzG(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void
.end method

.method public final zzH(Ljava/util/Map;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zze(I)I

    move-result v1

    iget-object v2, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzb:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzd:Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzc()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_3

    if-eq v4, v0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzR()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    iget-object v4, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    iget-object v5, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zzd:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzS(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v4, p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvm;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzS(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzR()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzA(I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzA(I)V

    throw p1
.end method

.method public final zzI(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzU(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0
.end method

.method public final zzJ(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzk()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzZ(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzk()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzZ(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_a

    :goto_0
    return-void
.end method

.method public final zzK(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzt()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzt()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void
.end method

.method public final zzL(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzl()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzl()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzl()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void
.end method

.method public final zzM(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzu()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzu()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzu()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzu()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void
.end method

.method public final zzN(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvb;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvb;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzp()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvb;->zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzu()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzt()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0
.end method

.method public final zzO(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuj;->zzh(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void
.end method

.method public final zzP(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzv()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzv()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvi;->zzg(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzv()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void
.end method

.method public final zzQ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzD()Z

    move-result p0

    return p0
.end method

.method public final zzR()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzc:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzE(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zza()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzb()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzc()F

    move-result p0

    return p0
.end method

.method public final zzc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    :goto_0
    if-eqz v0, :cond_2

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzc:I

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 p0, v0, 0x3

    return p0

    :cond_2
    :goto_1
    const p0, 0x7fffffff

    return p0
.end method

.method public final zzd()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    return p0
.end method

.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzf()I

    move-result p0

    return p0
.end method

.method public final zzf()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzg()I

    move-result p0

    return p0
.end method

.method public final zzg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzh()I

    move-result p0

    return p0
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzk()I

    move-result p0

    return p0
.end method

.method public final zzi()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzl()I

    move-result p0

    return p0
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p0

    return p0
.end method

.method public final zzk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzu()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzv()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzp()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzw()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object p0

    return-object p0
.end method

.method public final zzr(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzT(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzs(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwe;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzU(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzt()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzx()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzu()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzy()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzV(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    return-void
.end method

.method public final zzw(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzY(I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzW(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)V

    return-void
.end method

.method public final zzx(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsn;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsn;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzD()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsn;->zze(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzD()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsn;->zze(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzX(I)V

    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzD()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void
.end method

.method public final zzy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzp()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsz;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0
.end method

.method public final zzz(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbto;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbto;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzb()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbto;->zze(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzb()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbto;->zze(D)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result p1

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzn()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzaa(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzb()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzd()I

    move-result v0

    if-lt v0, v1, :cond_5

    :goto_0
    return-void

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbut;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbus;

    move-result-object p0

    throw p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzb()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzC()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtf;->zzm()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzb:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtg;->zzd:I

    return-void
.end method
