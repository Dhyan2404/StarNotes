.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;
.super Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvv;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

.field private static final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

.field private static volatile zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;


# instance fields
.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatv;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatp;

.field private zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatn;

.field private zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatr;

.field private zzm:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatt;

.field private zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzate;

.field private zzo:J

.field private zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatj;

.field private zzq:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzath;

.field private zzr:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzad(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazz;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzazz;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x2b

    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;

    const-class v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    move-object v1, v2

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzP(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbul;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbxs;Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbug;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzV()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzr:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzN()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    return-object v0
.end method

.method public static synthetic zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    return-object v0
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatv;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatp;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatp;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatn;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatn;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatr;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatr;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzate;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzate;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzate;

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzo:J

    return-void
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatj;

    iget p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzg:I

    return-void
.end method

.method public static synthetic zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzr:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuq;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;->zzg(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzr:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzr:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbun;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbsd;->zzI(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

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
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez v0, :cond_2

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbuc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

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
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatf;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatc;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;-><init>()V

    return-object v0

    :cond_6
    const-string v1, "zzg"

    const-string v2, "zzh"

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbum;

    move-result-object v3

    const-string v4, "zzi"

    const-string v5, "zzj"

    const-string v6, "zzk"

    const-string v7, "zzo"

    const-string v8, "zzn"

    const-string v9, "zzl"

    const-string v10, "zzm"

    const-string v11, "zzp"

    const-string v12, "zzq"

    const-string v13, "zzr"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;

    const-string v2, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1003\u0007\u0006\u1009\u0006\u0007\u1009\u0004\u0008\u1009\u0005\t\u1009\u0008\n\u1009\t\u000b\u0016"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzaa(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzatz;->zzh:I

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    :cond_0
    return-object p0
.end method
