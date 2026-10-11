.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

.field private static volatile zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:Z

.field private zzj:J

.field private zzk:Ljava/lang/String;

.field private zzl:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzad(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzk:Ljava/lang/String;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzN()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    return-object v0
.end method

.method public static synthetic zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    return-object v0
.end method

.method public static zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    return-object v0
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    return-void
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;Z)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzi:Z

    return-void
.end method

.method public static synthetic zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzj:J

    return-void
.end method

.method public static synthetic zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzk:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzp(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzl:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzl:I

    return p0
.end method

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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_2

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    sput-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzed;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbx;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzf"

    const-string v1, "zzg"

    const-string v2, "zzh"

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v3

    const-string v4, "zzi"

    const-string v5, "zzj"

    const-string v6, "zzk"

    const-string v7, "zzl"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    const-string p2, "\u0001\u0006\u0000\u0001\u0004\u000b\u0006\u0000\u0000\u0000\u0004\u1008\u0000\u0005\u100c\u0001\u0008\u1007\u0002\t\u1002\u0003\n\u1008\u0004\u000b\u1004\u0005"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzaa(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzj:J

    return-wide v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzh:I

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzds;

    :cond_0
    return-object p0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzk:Ljava/lang/String;

    return-object p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzq()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;->zzi:Z

    return p0
.end method
