.class public final Lcom/google/mlkit/vision/text/internal/zzp;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/zzp;->a:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method


# virtual methods
.method public final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    invoke-interface {p1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzun;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    move-result-object v0

    iget-object p0, p0, Lcom/google/mlkit/vision/text/internal/zzp;->a:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    new-instance v1, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;

    invoke-virtual {p0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v2

    const v3, 0xc337960

    if-ge v2, v3, :cond_1

    invoke-interface {p1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sunia/HTREnginev2/akp;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/akp;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Lcom/sunia/HTREnginev2/jjp;

    invoke-direct {v2, p0, p1, v0}, Lcom/sunia/HTREnginev2/jjp;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;)V

    :goto_1
    invoke-direct {v1, v0, v2, p1}, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;Lcom/sunia/HTREnginev2/app;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V

    return-object v1
.end method
