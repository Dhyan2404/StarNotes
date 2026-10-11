.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

.field private static volatile zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbo;

.field private zzm:I

.field private zzn:I

.field private zzo:J

.field private zzp:J

.field private zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbd;

.field private zzr:Z

.field private zzs:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

.field private zzt:I

.field private zzu:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

.field private zzv:I

.field private zzw:J

.field private zzx:Ljava/lang/String;

.field private zzy:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

.field private zzz:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcba;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzad(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzh:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzW()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzs:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzW()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzu:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzx:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzW()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzy:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzN()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;

    return-object v0
.end method

.method public static synthetic zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    return-object v0
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzf:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzs:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzX(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzs:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzs:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzw:J

    return-wide v0
.end method

.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    add-int/lit8 v0, p1, -0x1

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez v0, :cond_2

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzal;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;-><init>()V

    return-object v0

    :cond_6
    const-string v1, "zzf"

    const-string v2, "zzg"

    const-string v3, "zzs"

    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;

    const-string v5, "zzo"

    const-string v6, "zzh"

    const-string v7, "zzi"

    const-string v8, "zzp"

    const-string v9, "zzn"

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzat;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    const-string v11, "zzq"

    const-string v12, "zzr"

    const-string v13, "zzt"

    const-string v14, "zzu"

    const-class v15, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbf;

    const-string v16, "zzv"

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzws;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v17

    const-string v18, "zzj"

    const-string v19, "zzm"

    sget-object v20, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbp;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    const-string v21, "zzl"

    const-string v22, "zzw"

    const-string v23, "zzy"

    const-string v24, "zzx"

    const-string v25, "zzk"

    const-string v26, "zzz"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    const-string v2, "\u0001\u0014\u0000\u0001\u0001\u001c\u0014\u0000\u0003\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1002\u0008\u0006\u1008\u0001\n\u1004\u0002\u000b\u1002\t\u000c\u100c\u0007\r\u1009\n\u000e\u1007\u000b\u0010\u1004\u000c\u0011\u001b\u0013\u100c\r\u0014\u1009\u0003\u0015\u100c\u0006\u0016\u1009\u0005\u0017\u1002\u000e\u0019\u001a\u001a\u1008\u000f\u001b\u1009\u0004\u001c\u1009\u0010"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzaa(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzx:Ljava/lang/String;

    return-object p0
.end method

.method public final zzk()Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzf:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
