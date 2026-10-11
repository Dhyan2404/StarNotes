.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

.field private static volatile zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;


# instance fields
.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzad(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzN()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    return-object v0
.end method

.method public static synthetic zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    return-object v0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_2

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    sput-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbx;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;-><init>()V

    return-object p0

    :cond_6
    const-string p0, "zzf"

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvn;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzaa(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvo;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
