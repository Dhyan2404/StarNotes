.class public final Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbqs;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager$DownloadWorker;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;

.field public c:Ljava/util/Map;

.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->d:Ljava/util/Map;

    const/4 v0, 0x4

    const-string v1, "DIRecoDownload"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DigitalInkRecognitionFileDependencyManager()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->a:Landroid/content/Context;

    new-instance v0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;

    invoke-direct {v0, p1}, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->b:Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;

    return-void
.end method

.method public static final zzd(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->getModelIdentifier()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->getModelIdentifier()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;->getLanguageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->getModelIdentifier()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;->getLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzf;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzf;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzf;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzf;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzf;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzf;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzf;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzau;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzav;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzajg;
    .locals 4

    const/4 v0, 0x4

    const-string v1, "DIRecoDownload"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DigitalInkRecognitionFileDependencyManager: getAllFileGroupNames(). # Entries = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;->zzg(Ljava/util/Collection;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaka;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Z
    .locals 10

    const-class v0, Ljava/lang/Throwable;

    const-string v1, "DIRecoDownload"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DigitalInkRecognitionFileDependencyManager.initialize(): Parse Manifest"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->b:Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;

    invoke-virtual {v4}, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;->a()Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->c:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "DigitalInkRecognitionFileDependencyManager.initialize(): Parse packmapping"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "packmapping.pb"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x1

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzg;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbwc;->zzc(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzg;->zzd()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzf;

    iget-object v8, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->d:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzf;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionFileDependencyManager;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DigitalInkRecognitionFileDependencyManager.initialize(): Read "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pack mapping entries"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    return v5

    :catchall_0
    move-exception p0

    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_5
    const-string v4, "addSuppressed"

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v0, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_5
    :goto_1
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    const-string v0, "DigitalInkRecognitionFileDependencyManager.initialize(): Error reading pack mapping."

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :catch_2
    move-exception p0

    const-string v0, "DigitalInkRecognitionFileDependencyManager.initialize(): Error parsing manifest."

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method
