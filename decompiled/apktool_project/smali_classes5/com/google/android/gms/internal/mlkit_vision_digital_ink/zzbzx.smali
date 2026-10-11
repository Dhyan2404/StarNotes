.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# static fields
.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;

.field private static volatile zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;


# instance fields
.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbyc;

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbyz;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbyn;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzq;

.field private zzm:I

.field private zzn:I

.field private zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

.field private zzp:I

.field private zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzj;

.field private zzr:J

.field private zzs:I

.field private zzt:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzad(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbue;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zzt:B

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzW()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    return-void
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, -0x1

    if-eqz v1, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-byte v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zzt:B

    return-object v3

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez v0, :cond_3

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzv;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzk;)V

    return-object v0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;-><init>()V

    return-object v0

    :cond_7
    const-string v1, "zzg"

    const-string v2, "zzh"

    const-string v3, "zzi"

    const-string v4, "zzj"

    const-string v5, "zzk"

    const-string v6, "zzl"

    const-string v7, "zzm"

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzt;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    const-string v9, "zzn"

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    const-string v11, "zzo"

    const-class v12, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzo;

    const-string v13, "zzp"

    sget-object v14, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzu;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    const-string v15, "zzq"

    const-string v16, "zzr"

    const-string v17, "zzs"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;

    const-string v2, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004\u0006\u100c\u0005\u0007\u100c\u0006\u0008\u001b\t\u100c\u0007\n\u1409\u0008\u000b\u1002\t\u000c\u1004\n"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzaa(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    iget-byte v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzx;->zzt:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
