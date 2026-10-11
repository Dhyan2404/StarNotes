.class public Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;
.super Lcom/google/mlkit/common/sdkinternal/ModelResource;
.source "SourceFile"


# static fields
.field public static final h:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;


# instance fields
.field public final c:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

.field public final d:Lcom/google/mlkit/vision/digitalink/downloading/zzb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Lcom/google/mlkit/vision/digitalink/internal/zzc;

.field public final f:Lcom/google/mlkit/vision/digitalink/internal/zzb;

.field public final g:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpj;

.field public final zza:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;->EN_US:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    invoke-static {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->builder(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;->build()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->h:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    :try_start_0
    const-string v0, "digitalink"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Native library loading failed: "

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DIRecoJni"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/mlkit/vision/digitalink/downloading/zzb;Lcom/google/mlkit/vision/digitalink/internal/zzc;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/ModelResource;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->zza:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->c:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    iput-object p2, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->d:Lcom/google/mlkit/vision/digitalink/downloading/zzb;

    iput-object p3, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->e:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpj;

    move-result-object p2

    iput-object p2, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->g:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpj;

    new-instance p2, Lcom/google/mlkit/vision/digitalink/internal/zzb;

    const/16 v0, 0x13b

    const/4 v1, 0x0

    invoke-direct {p2, p3, v0, v1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;-><init>(Lcom/google/mlkit/vision/digitalink/internal/zzc;ILcom/google/mlkit/vision/digitalink/internal/zza;)V

    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzu:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {p2, p3}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    const-wide/16 v0, 0x1e

    invoke-virtual {p2, v0, v1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzh(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {p2, p1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzi(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    iput-object p2, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->f:Lcom/google/mlkit/vision/digitalink/internal/zzb;

    return-void
.end method


# virtual methods
.method public native callNativeRecognizer(J[[[FFFLjava/lang/String;IZ)[Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;
    .param p3    # [[[F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native deinitNativeRecognizer(J)V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method public native initNativeRecognizer(Ljava/io/FileInputStream;Ljava/io/FileInputStream;Ljava/io/FileInputStream;)J
    .param p1    # Ljava/io/FileInputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileInputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/FileInputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final load()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    const-string v0, "An internal error occurred during initialization."

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->zza:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafa;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->e:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    new-instance v3, Lcom/google/mlkit/vision/digitalink/internal/zzb;

    const/16 v4, 0x139

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/google/mlkit/vision/digitalink/internal/zzb;-><init>(Lcom/google/mlkit/vision/digitalink/internal/zzc;ILcom/google/mlkit/vision/digitalink/internal/zza;)V

    iget-object v2, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->c:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-virtual {v3, v2}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzi(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    const/16 v2, 0xd

    :try_start_0
    iget-object v4, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->d:Lcom/google/mlkit/vision/digitalink/downloading/zzb;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/digitalink/downloading/zzb;

    iget-object v5, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->c:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqt;->zzb(Lcom/google/mlkit/common/model/RemoteModel;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/digitalink/downloading/zzc;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzz;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzz;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;

    invoke-virtual {v4, v5}, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_1
    .catch Lcom/google/mlkit/vision/digitalink/internal/zzo; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzz;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzzz;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;

    invoke-virtual {v4, v6}, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzyf;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v4}, Lcom/google/mlkit/vision/digitalink/downloading/zzc;->zza()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v7, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->zza:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v5, v6, v4}, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->initNativeRecognizer(Ljava/io/FileInputStream;Ljava/io/FileInputStream;Ljava/io/FileInputStream;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzA:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v3, p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_1
    if-eqz v6, :cond_2

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_2
    if-eqz v5, :cond_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Lcom/google/mlkit/vision/digitalink/internal/zzo; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :cond_3
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzg(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {v3}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzn()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_9
    invoke-static {p0, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzl;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz v6, :cond_5

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v4

    :try_start_b
    invoke-static {p0, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzl;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p0

    if-eqz v5, :cond_6

    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v4

    :try_start_d
    invoke-static {p0, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzl;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0
    :try_end_d
    .catch Lcom/google/mlkit/vision/digitalink/internal/zzo; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception p0

    :try_start_e
    instance-of v4, p0, Ljava/lang/InternalError;

    if-nez v4, :cond_8

    instance-of v4, p0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzD:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v3, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    goto :goto_3

    :cond_7
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzE:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v3, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    goto :goto_3

    :cond_8
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzB:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v3, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    :goto_3
    new-instance v4, Lcom/google/mlkit/common/MlKitException;

    invoke-direct {v4, v0, v2, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4

    :catch_0
    move-exception p0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzC:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v3, v0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v4, "Exception occurred reading model files from storage."

    invoke-direct {v0, v4, v2, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzF:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v3, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {v3, p0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzj(Lcom/google/mlkit/vision/digitalink/internal/zzo;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    new-instance v4, Lcom/google/mlkit/common/MlKitException;

    invoke-direct {v4, v0, v2, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4

    :catchall_7
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzC:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v3, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    new-instance v4, Lcom/google/mlkit/common/MlKitException;

    invoke-direct {v4, v0, v2, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4

    :catch_3
    move-exception p0

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzC:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v3, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    new-instance v4, Lcom/google/mlkit/common/MlKitException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v4, v0, v2, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzg(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {v3}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzn()V

    throw p0
.end method

.method public final release()V
    .locals 5

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->f:Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zze()Lcom/google/mlkit/vision/digitalink/internal/zzb;

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->zza:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3, v4}, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->deinitNativeRecognizer(J)V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;)Lcom/google/mlkit/vision/digitalink/RecognitionResult;
    .locals 25
    .param p1    # Lcom/google/mlkit/vision/digitalink/Ink;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/vision/digitalink/RecognitionContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzafa;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzahg;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/mlkit/vision/digitalink/RecognitionContext;->getWritingArea()Lcom/google/mlkit/vision/digitalink/WritingArea;

    move-result-object v0

    iget-object v1, v10, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->zza:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/digitalink/Ink;->getStrokes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [[[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/mlkit/vision/digitalink/Ink;->getStrokes()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/mlkit/vision/digitalink/Ink$Stroke;

    invoke-virtual {v15}, Lcom/google/mlkit/vision/digitalink/Ink$Stroke;->getPoints()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x4

    filled-new-array {v13, v14}, [I

    move-result-object v14

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[F

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_2

    invoke-virtual {v15}, Lcom/google/mlkit/vision/digitalink/Ink$Stroke;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mlkit/vision/digitalink/Ink$Point;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mlkit/vision/digitalink/Ink$Point;

    invoke-virtual {v5}, Lcom/google/mlkit/vision/digitalink/Ink$Point;->getTimestamp()Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x1

    if-eqz v19, :cond_0

    invoke-virtual {v5}, Lcom/google/mlkit/vision/digitalink/Ink$Point;->getTimestamp()Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    goto :goto_2

    :cond_0
    const-wide/16 v21, 0x0

    move/from16 v7, v20

    :goto_2
    if-nez v8, :cond_1

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :cond_1
    aget-object v19, v9, v14

    invoke-virtual {v5}, Lcom/google/mlkit/vision/digitalink/Ink$Point;->getX()F

    move-result v23

    const/16 v18, 0x0

    aput v23, v19, v18

    aget-object v19, v9, v14

    invoke-virtual {v5}, Lcom/google/mlkit/vision/digitalink/Ink$Point;->getY()F

    move-result v5

    aput v5, v19, v20

    aget-object v5, v9, v14

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move/from16 v23, v7

    move-object/from16 v24, v8

    sub-long v7, v21, v19

    long-to-float v7, v7

    const/4 v8, 0x2

    aput v7, v5, v8

    aget-object v5, v9, v14

    const/4 v7, 0x3

    const/4 v8, 0x0

    aput v8, v5, v7

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v23

    move-object/from16 v8, v24

    goto :goto_1

    :cond_2
    const/16 v18, 0x0

    aput-object v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x0

    const/16 v18, 0x0

    if-eqz v7, :cond_5

    move/from16 v5, v18

    move v6, v5

    :goto_3
    if-ge v5, v1, :cond_5

    move/from16 v7, v18

    :goto_4
    aget-object v9, v4, v5

    array-length v13, v9

    if-ge v7, v13, :cond_4

    aget-object v9, v9, v7

    add-int/lit8 v13, v6, 0x1

    int-to-float v6, v6

    const/high16 v14, 0x41a00000    # 20.0f

    mul-float/2addr v6, v14

    const/4 v14, 0x2

    aput v6, v9, v14

    add-int/lit8 v7, v7, 0x1

    move v6, v13

    goto :goto_4

    :cond_4
    const/4 v14, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    move v5, v8

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/WritingArea;->getWidth()F

    move-result v1

    move v5, v1

    :goto_5
    if-nez v0, :cond_7

    move v6, v8

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/WritingArea;->getHeight()F

    move-result v0

    move v6, v0

    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/google/mlkit/vision/digitalink/RecognitionContext;->getPreContext()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->zza()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->zzb()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->zza()Z

    move-result v9

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->callNativeRecognizer(J[[[FFFLjava/lang/String;IZ)[Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;

    move-result-object v0

    new-instance v1, Lcom/google/mlkit/vision/digitalink/RecognitionResult;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/mlkit/vision/digitalink/RecognitionResult;-><init>(Ljava/util/List;)V

    iget-object v0, v10, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->f:Lcom/google/mlkit/vision/digitalink/internal/zzb;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-virtual {v0, v11, v1, v3, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzc(Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionResult;J)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzf()Lcom/google/mlkit/vision/digitalink/internal/zzb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    iget-object v0, v10, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->g:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpj;

    const/16 v18, 0x5ef5

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzu:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zza()I

    move-result v19

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sub-long v20, v22, v2

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v23}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpj;->zzc(IIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, v10, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->e:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    new-instance v2, Lcom/google/mlkit/vision/digitalink/internal/zzb;

    const/16 v3, 0x13b

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;-><init>(Lcom/google/mlkit/vision/digitalink/internal/zzc;ILcom/google/mlkit/vision/digitalink/internal/zza;)V

    invoke-virtual {v2, v11}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzl(Lcom/google/mlkit/vision/digitalink/Ink;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzg(J)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzk(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    instance-of v3, v0, Lcom/google/mlkit/vision/digitalink/internal/zzo;

    if-nez v3, :cond_a

    instance-of v3, v0, Ljava/lang/InternalError;

    if-nez v3, :cond_9

    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_8

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzw:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v2, v3}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    goto :goto_7

    :cond_8
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzx:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v2, v3}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    goto :goto_7

    :cond_9
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzv:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v2, v3}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    goto :goto_7

    :cond_a
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zzy:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    invoke-virtual {v2, v3}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzm(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    move-object v3, v0

    check-cast v3, Lcom/google/mlkit/vision/digitalink/internal/zzo;

    invoke-virtual {v2, v3}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzj(Lcom/google/mlkit/vision/digitalink/internal/zzo;)Lcom/google/mlkit/vision/digitalink/internal/zzb;

    :goto_7
    invoke-virtual {v2}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zzn()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v4, v10, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->g:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpj;

    const/16 v5, 0x5ef5

    invoke-virtual {v2}, Lcom/google/mlkit/vision/digitalink/internal/zzb;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaty;->zza()I

    move-result v6

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzagy;->zza(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    sub-long v7, v13, v1

    move-wide v9, v13

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbpj;->zzc(IIJJ)V

    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    const-string v2, "An internal error occurred during recognition."

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method
