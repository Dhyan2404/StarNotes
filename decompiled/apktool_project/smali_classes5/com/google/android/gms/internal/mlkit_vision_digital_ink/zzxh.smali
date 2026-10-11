.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxf;

.field static final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxf;


# instance fields
.field final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakm;

.field final zzd:Z

.field final zze:Z

.field zzf:I

.field zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzh:Ljava/lang/String;

.field private final zzi:Ljava/io/File;

.field private final zzj:Ljava/lang/String;

.field private final zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;

.field private final zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

.field private zzo:I

.field private final zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwz;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwz;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxf;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwz;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxf;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaig;->zzz()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaig;

    move-result-object p7

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakm;

    const/4 p7, 0x0

    iput p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzf:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzm:Z

    sget-object p7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    const/4 p7, 0x0

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqy;

    const/4 p7, -0x1

    iput p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzo:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzi:Ljava/io/File;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzj:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxc;->zzb(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzd:Z

    const-string p3, "file:"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zze:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzh:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzh:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzi:Ljava/io/File;

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzi:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzj:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzj:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaga;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzm:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzm:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzh:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzi:Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzj:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzm:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafz;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;

    const-string v1, "targetDirectory"

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzi:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;

    const-string v1, "fileName"

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;

    const-string v1, "requiredConnectivity"

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;

    const-string v1, "canceled"

    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzm:Z

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafy;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzo:I

    return p0
.end method

.method public final declared-synchronized zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzakm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaky;->zzs(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zze:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzd:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzn:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxg;

    :cond_0
    return-object p0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzo:I

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzl:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxu;

    return-object p0
.end method

.method public final zzg()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzi:Ljava/io/File;

    return-object p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzj:Ljava/lang/String;

    return-object p0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized zzj()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzk()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzl()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzm()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzk:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxs;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized zzn()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzp:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpt;

    return-object p0
.end method

.method public final zzp(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqy;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzxh;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqy;

    return-object p0
.end method
