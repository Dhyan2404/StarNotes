.class public final Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Manifest;,
        Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;,
        Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$KeepForGsonParsing;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;

.field public final c:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;->b:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;->a:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhm;->zze:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhn;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhu;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;->c:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "manifest.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "DIRecoDownload"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DigitalInkRecognitionManifestParser.parseManifest()"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;->c:Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const-class v0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Manifest;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;-><init>(Ljava/io/Reader;)V

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzo(Z)V

    invoke-virtual {p0, v6, v5}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbht;->zzc(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbnw;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p0, :cond_2

    :try_start_1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbny;->zzt()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;

    const-string v0, "JSON document was not fully consumed."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbob; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbhz;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_3

    const-class v0, Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_4

    const-class v0, Ljava/lang/Float;

    goto :goto_1

    :cond_4
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_5

    const-class v0, Ljava/lang/Byte;

    goto :goto_1

    :cond_5
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_6

    const-class v0, Ljava/lang/Double;

    goto :goto_1

    :cond_6
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_7

    const-class v0, Ljava/lang/Long;

    goto :goto_1

    :cond_7
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_8

    const-class v0, Ljava/lang/Character;

    goto :goto_1

    :cond_8
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_9

    const-class v0, Ljava/lang/Boolean;

    goto :goto_1

    :cond_9
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_a

    const-class v0, Ljava/lang/Short;

    goto :goto_1

    :cond_a
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_b

    const-class v0, Ljava/lang/Void;

    :cond_b
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Manifest;
    :try_end_2
    .catch Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbif; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    const-string v0, "Failed parsing manifest:"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Manifest;->packs:Ljava/util/List;

    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;->isValid()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;->toDataFile()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    const-string v0, "Skip invalid pack."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DigitalInkRecognitionManifestParser.parseManifestFromAsset(): read "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " manifest entries"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-object v3
.end method
