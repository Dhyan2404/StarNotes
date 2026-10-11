.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;

.field private static volatile zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzad(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_2

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    sput-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzk;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzf"

    const-string v1, "zzg"

    const-string v2, "zzh"

    const-string v3, "zzi"

    const-string v4, "zzj"

    const-string v5, "zzk"

    const-string v6, "zzl"

    const-string v7, "zzm"

    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcaa;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbzs;

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u100c\u0006"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzaa(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
