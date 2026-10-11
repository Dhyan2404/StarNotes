.class final Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$KeepForGsonParsing;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pack"
.end annotation


# instance fields
.field compressedSize:I

.field downloadPackingScheme:Ljava/lang/String;

.field downloadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field md5Checksum:Ljava/lang/String;

.field name:Ljava/lang/String;

.field sha1Checksum:Ljava/lang/String;

.field size:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;->downloadUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;->compressedSize:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;->name:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toDataFile()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;->zza()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;->downloadUrls:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaq;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaq;

    iget v1, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;->compressedSize:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaq;->zza(I)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaq;

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;->sha1Checksum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaq;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaq;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcao;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcan;->zzg()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcam;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcar;->zzc()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcaq;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcaq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcaq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcar;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcam;->zzd(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcar;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcam;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcao;->zza(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcam;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcao;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzcap;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaq;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/downloading/DigitalInkRecognitionManifestParser$Pack;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaq;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzaq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbub;->zzu()Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzbui;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_digital_ink/zzas;

    return-object p0
.end method
