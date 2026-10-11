.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

.field private static volatile zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzad(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    return-void
.end method

.method public static zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcam;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzN()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcam;

    return-object v0
.end method

.method public static synthetic zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    return-object v0
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcad;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzh:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcaj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzh:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcal;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzh:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    return-void
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcar;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzh:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_7

    const/4 p0, 0x2

    if-eq p1, p0, :cond_6

    const/4 p0, 0x3

    if-eq p1, p0, :cond_5

    const/4 p0, 0x4

    const/4 p2, 0x0

    if-eq p1, p0, :cond_4

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    return-object p2

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_2

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    sput-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcam;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcam;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcab;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzh"

    const-string v1, "zzg"

    const-string v2, "zzf"

    const-class v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcad;

    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcaj;

    const-class v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcal;

    const-class v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcar;

    const-class v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcah;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    const-string p2, "\u0001\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0003\u103c\u0000\u0004\u103c\u0000\u0005\u103c\u0000"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzaa(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcah;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzh:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcah;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcah;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcah;

    move-result-object p0

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcaj;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzh:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcaj;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcaj;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcaj;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcal;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzh:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcal;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcal;->zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcal;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcar;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzh:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcar;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcar;->zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcar;

    move-result-object p0

    return-object p0
.end method

.method public final zzn()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzo()Z
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzp()I
    .locals 1

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x6

    return p0
.end method
