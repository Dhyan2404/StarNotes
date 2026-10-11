.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

.field private static volatile zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;


# instance fields
.field private zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzad(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzW()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcao;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzN()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcao;

    return-object v0
.end method

.method public static synthetic zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    return-object v0
.end method

.method public static zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    return-object v0
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzX(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_2

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez p0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    sput-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

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
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcao;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcao;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcab;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;-><init>()V

    return-object p0

    :cond_6
    const-string p0, "zzf"

    const-class p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzaa(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final zzf(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;

    return-object p0
.end method

.method public final zzj()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    return-object p0
.end method
