.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuo;

.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuo;

.field private static final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;

.field private static volatile zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;


# instance fields
.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzban;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzboo;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

.field private zzm:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbae;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbbt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbbt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuo;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbbu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbbu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuo;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzad(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzV()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzV()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

    return-void
.end method

.method public static synthetic zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;

    return-object v0
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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_2

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    sput-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbbx;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbbx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaua;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzh"

    const-string v1, "zzi"

    const-string v2, "zzj"

    const-string v3, "zzk"

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbbv;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    const-string v5, "zzl"

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    const-string v7, "zzm"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbby;

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u001e\u0004\u001e\u0005\u1009\u0002"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzaa(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
