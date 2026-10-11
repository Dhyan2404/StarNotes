.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacr;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabc;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

.field private final zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;

.field private final zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;

.field private final zzh:Ljava/lang/Object;

.field private final zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

.field private zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabc;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzh:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zza:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabc;

    invoke-static {p4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzc(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzd:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzf:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaao;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaby;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacs;

    move-result-object v0

    return-object v0
.end method

.method private final zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabx;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabx;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzd:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private final zzm(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zza:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;->zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaab;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaab;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabc;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacy;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;->zzY()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    move-result-object v3

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacy;->zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;->zzd(Ljava/io/InputStream;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbtr;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabp;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabp;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzi(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzc:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabc;->zza()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_2
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzact;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final synthetic zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzh:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzd:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzd(Ljava/lang/Void;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzm(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabt;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabt;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzd:Ljava/util/concurrent/Executor;

    invoke-static {p2, p1, p3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzh:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzf(Landroid/net/Uri;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ".bak"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacu;->zza(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzi(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzg(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzm(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzh;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzh;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabu;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzd:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzo(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzg(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final synthetic zzh(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzb:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzp(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, ".tmp"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacu;->zza(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzg:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zza:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzadt;->zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzf;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaae;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaae;

    move-result-object v5

    filled-new-array {v3}, [Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzf;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaae;->zzc([Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzf;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaae;

    invoke-virtual {v4, v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;

    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbvu;->zzJ(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzf;->zzb()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_0
    :try_start_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->close()V

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzg(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzh:Ljava/lang/Object;

    monitor-enter p2

    :try_start_6
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzj:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzarx;->zzi()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    if-eqz v4, :cond_1

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabp;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_0
    move-exception p1

    :try_start_a
    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzact;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;Landroid/net/Uri;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzady;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception p2

    :try_start_c
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabp;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :catch_1
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzi(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_2

    :try_start_d
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyg;->zzf(Landroid/net/Uri;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabp;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacp;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzj(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzacq;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzl()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zzi:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabv;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqt;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaeq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzark;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaqs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasi;

    move-result-object p0

    return-object p0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzabz;->zza:Ljava/lang/String;

    return-object p0
.end method
