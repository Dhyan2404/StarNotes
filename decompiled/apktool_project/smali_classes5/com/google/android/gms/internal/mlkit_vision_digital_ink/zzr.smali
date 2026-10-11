.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

.field private static volatile zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:I

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

.field private zzm:J

.field private zzn:Ljava/lang/String;

.field private zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

.field private zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;

.field private zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;

.field private zzr:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcba;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzad(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzW()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzn:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzW()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    return-void
.end method

.method public static zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzN()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    return-object v0
.end method

.method public static synthetic zzh()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    return-object v0
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzj:I

    return-void
.end method

.method public static synthetic zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzk:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    return-void
.end method

.method public static synthetic zzp(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzy()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic zzq(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzy()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;->zzI(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzm:J

    return-void
.end method

.method public static synthetic zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzn:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzt(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzX(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzo:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;->zzI(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic zzu(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    return-void
.end method

.method public static synthetic zzv(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsk;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    return-void
.end method

.method public static synthetic zzw(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzx(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzi:Ljava/lang/String;

    return-void
.end method

.method private final zzy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzX(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

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
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez v0, :cond_2

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

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
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzk;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;-><init>()V

    return-object v0

    :cond_6
    const-string v1, "zzf"

    const-string v2, "zzg"

    const-string v3, "zzl"

    const-class v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;

    const-string v5, "zzh"

    const-string v6, "zzj"

    const-string v7, "zzk"

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v8

    const-string v9, "zzi"

    const-string v10, "zzm"

    const-string v11, "zzo"

    const-string v12, "zzp"

    const-string v13, "zzn"

    const-string v14, "zzq"

    const-string v15, "zzr"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;

    const-string v2, "\u0001\u000c\u0000\u0001\u0001\u000e\u000c\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1008\u0001\u0004\u1004\u0003\u0005\u100c\u0004\u0006\u1008\u0002\u0008\u1002\u0005\n\u001a\u000b\u1009\u0007\u000c\u1008\u0006\r\u1009\u0008\u000e\u1009\t"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzaa(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzj:I

    return p0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzm:J

    return-wide v0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzm;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzk:I

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzq;

    :cond_0
    return-object p0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzn:Ljava/lang/String;

    return-object p0
.end method

.method public final zzl()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzr;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;

    return-object p0
.end method
