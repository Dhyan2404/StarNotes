.class final Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyu;
.super Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/app/blob/BlobStoreManager$Session;

.field private zzb:Z


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/app/blob/BlobStoreManager$Session;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyu;->zzb:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyu;->zza:Landroid/app/blob/BlobStoreManager$Session;

    return-void
.end method

.method private final zza()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Ljava/lang/Throwable;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyu;->zzb:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyu;->zzb:Z

    :try_start_0
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyu;->zza:Landroid/app/blob/BlobStoreManager$Session;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzasq;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyt;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyt;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {v5, v6, v7}, Lcom/sunia/HTREnginev2/gsp;->a(Landroid/app/blob/BlobStoreManager$Session;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v1

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyu;->zza:Landroid/app/blob/BlobStoreManager$Session;

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/sunia/HTREnginev2/hsp;->a(Landroid/app/blob/BlobStoreManager$Session;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Commit operation failed"

    invoke-direct {v1, v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_3

    :try_start_2
    invoke-static {p0}, Lcom/sunia/HTREnginev2/hsp;->a(Landroid/app/blob/BlobStoreManager$Session;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    const-string v4, "addSuppressed"

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_3
    :goto_1
    throw v1
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyu;->zza()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyu;->zza()V

    throw v0
.end method
