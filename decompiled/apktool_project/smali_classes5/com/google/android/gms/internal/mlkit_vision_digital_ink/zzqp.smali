.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzrq;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    return-void
.end method

.method private final zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqh;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqi;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqi;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method private final zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqo;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpw;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpw;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method private final zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4

    iget v0, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    if-gt p2, v0, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrade to version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "not supported!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzk()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqe;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqe;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method private final zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    iget v1, p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to commit migration version to disk. Fail to set target version to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zze(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to set target version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqf;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqf;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpv;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqg;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqg;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzb(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "ProtoDataStoreSharedFilesMetadata"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzf()I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v1

    iget v4, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    iget v5, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zzd:I

    if-ne v4, v5, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ge v4, v5, :cond_1

    filled-new-array {v3, v1, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s Cannot migrate back from value %s to %s. Clear everything!"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzg(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Downgraded file key from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)Z

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    goto :goto_0

    :cond_1
    add-int/2addr v5, v2

    invoke-direct {p0, v0, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqb;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    const-class v4, Ljava/lang/Exception;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqc;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    const-string v0, "%s Device isn\'t migrated to new file key, clear and set migration."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zza(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzd:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbq;->zzf()I

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)Z

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzd(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zzg()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zzd(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwc; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to deserialize newFileKey:"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)I

    const-string v3, "|"

    invoke-static {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagw;->zzg(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    return-object p0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;
    .locals 6

    const-string v0, "%s: Starting migration to add download transform"

    const-string v1, "ProtoDataStoreSharedFilesMetadata"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zzg()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zzd(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    move-result-object v4
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwc; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    if-nez v5, :cond_0

    const-string v3, "%s: Unable to read sharedFile from ProtoDataStore."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzf(Ljava/lang/String;Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    goto :goto_0

    :catch_0
    const-string v4, "%s Failed to deserialize file key %s, remove and continue."

    invoke-static {v4, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    return-object p0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;
    .locals 6

    const-string v0, "%s: Starting migration to dedup on checksum onlu"

    const-string v1, "ProtoDataStoreSharedFilesMetadata"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;->zzO()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zzg()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zzd(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    move-result-object v4
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwc; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    move-result-object v5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    if-nez v5, :cond_0

    const-string v3, "%s: Unable to read sharedFile from ProtoDataStore."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzf(Ljava/lang/String;Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    goto :goto_0

    :catch_0
    const-string v4, "%s Failed to deserialize file key %s, remove and continue."

    invoke-static {v4, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzuw;->zzi(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzef;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;

    return-object p0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzalx;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzeh;->zzg()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajo;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajp;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;Ljava/lang/Exception;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzj(ILcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zznp;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;)Z

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzno;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzr(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzs(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzd()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqd;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;)V

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzn(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzt(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpy;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpy;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpz;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzpz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqa;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqa;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    const-class v1, Ljava/io/IOException;

    invoke-virtual {p1, v1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method

.method public final zzu(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zza:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwd;->zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzea;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzsp;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaw;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqk;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzee;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaco;->zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzql;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzql;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqm;->zza:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqm;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzqp;->zzc:Ljava/util/concurrent/Executor;

    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaft;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzwu;

    move-result-object p0

    return-object p0
.end method
