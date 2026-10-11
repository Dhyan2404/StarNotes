.class public final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaaf;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "WrongConstant"
    }
.end annotation


# instance fields
.field private final zza:Landroid/app/blob/BlobStoreManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "blob_store"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/sunia/HTREnginev2/nsp;->a(Ljava/lang/Object;)Landroid/app/blob/BlobStoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zza:Landroid/app/blob/BlobStoreManager;

    return-void
.end method

.method private final zzo(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zzc(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zzf(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "The file is shared to provide a better user experience"

    const-wide/16 v1, 0x0

    const-string v3, "File downloaded through MDDLib"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/isp;->a([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zza:Landroid/app/blob/BlobStoreManager;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/osp;->a(Landroid/app/blob/BlobStoreManager;Landroid/app/blob/BlobHandle;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private final zzp([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "The file is shared to provide a better user experience"

    const-wide/16 v1, 0x0

    const-string v3, "File downloaded through MDDLib"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/isp;->a([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zza:Landroid/app/blob/BlobStoreManager;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/msp;->a(Landroid/app/blob/BlobStoreManager;Landroid/app/blob/BlobHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to release the lease"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final zzc(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zzo(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzza;->zza(Landroid/os/ParcelFileDescriptor;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzf(Landroid/net/Uri;)Ljava/io/File;
    .locals 1

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot convert uri to file blobstore "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzg(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zzo(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 0

    const-string p0, "blobstore"

    return-object p0
.end method

.method public final zzi(Landroid/net/Uri;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zzo(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    move v1, p1

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    const-string v3, "addSuppressed"

    new-array p1, p1, [Ljava/lang/Class;

    aput-object v0, p1, v1

    invoke-virtual {v0, v3, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :goto_0
    :try_start_4
    throw v2

    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_1
    return v1
.end method

.method public final synthetic zzj(Landroid/net/Uri;)V
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    const-string p1, "createDirectory not supported by blobstore"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic zzk(Landroid/net/Uri;)V
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    const-string p1, "deleteDirectory not supported by blobstore"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzl(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zzc(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zzd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zza:Landroid/app/blob/BlobStoreManager;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/psp;->a(Landroid/app/blob/BlobStoreManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/qsp;->a(Ljava/lang/Object;)Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/HTREnginev2/rsp;->a(Landroid/app/blob/BlobHandle;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zzp([B)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zzf(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zzp([B)V

    return-void
.end method

.method public final synthetic zzm(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    const-string p1, "rename not supported by blobstore"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzn(Landroid/net/Uri;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic zzq(Landroid/net/Uri;)J
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    const-string p1, "fileSize not supported by blobstore"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic zzr(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    const-string p1, "openForAppend not supported by blobstore"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzs(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zzc(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zzf(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zze(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/LimitExceededException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "File downloaded through MDDLib"

    const-string v3, "The file is shared to provide a better user experience"

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zza:Landroid/app/blob/BlobStoreManager;

    invoke-static {v1}, Lcom/sunia/HTREnginev2/ssp;->a(Landroid/app/blob/BlobStoreManager;)J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-lez v1, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyy;->zza(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v0, v3, v4, v5, v2}, Lcom/sunia/HTREnginev2/isp;->a([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zza:Landroid/app/blob/BlobStoreManager;

    const-string v0, "String description needed for providing a better user experience"

    invoke-static {p0, p1, v0, v6, v7}, Lcom/sunia/HTREnginev2/tsp;->a(Landroid/app/blob/BlobStoreManager;Landroid/app/blob/BlobHandle;Ljava/lang/CharSequence;J)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzi;

    const-string p1, "The caller is trying to acquire a lease on too much data."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzi;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v0, v3, v4, v5, v2}, Lcom/sunia/HTREnginev2/isp;->a([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zza:Landroid/app/blob/BlobStoreManager;

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/usp;->a(Landroid/app/blob/BlobStoreManager;Landroid/app/blob/BlobHandle;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyv;->zza:Landroid/app/blob/BlobStoreManager;

    invoke-static {p0, v0, v1}, Lcom/sunia/HTREnginev2/jsp;->a(Landroid/app/blob/BlobStoreManager;J)Landroid/app/blob/BlobStoreManager$Session;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/ksp;->a(Landroid/app/blob/BlobStoreManager$Session;)V

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyu;

    const-wide/16 v0, -0x1

    invoke-static {p0, v4, v5, v0, v1}, Lcom/sunia/HTREnginev2/lsp;->a(Landroid/app/blob/BlobStoreManager$Session;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyu;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/app/blob/BlobStoreManager$Session;)V
    :try_end_1
    .catch Landroid/os/LimitExceededException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to write into BlobStoreManager"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzi;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzi;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final synthetic zzt(Landroid/net/Uri;)Ljava/lang/Iterable;
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;

    const-string p1, "children not supported by blobstore"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzm;-><init>(Ljava/lang/String;)V

    throw p0
.end method
