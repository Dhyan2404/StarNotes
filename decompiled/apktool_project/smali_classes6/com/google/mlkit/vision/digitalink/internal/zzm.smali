.class public final Lcom/google/mlkit/vision/digitalink/internal/zzm;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/mlkit/vision/digitalink/downloading/zzb;

.field public final b:Lcom/google/mlkit/vision/digitalink/internal/zzc;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/digitalink/downloading/zzb;Lcom/google/mlkit/vision/digitalink/internal/zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzm;->a:Lcom/google/mlkit/vision/digitalink/downloading/zzb;

    iput-object p2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzm;->b:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    new-instance v0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzm;->a:Lcom/google/mlkit/vision/digitalink/downloading/zzb;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzm;->b:Lcom/google/mlkit/vision/digitalink/internal/zzc;

    invoke-direct {v0, p1, v1, p0}, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;-><init>(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;Lcom/google/mlkit/vision/digitalink/downloading/zzb;Lcom/google/mlkit/vision/digitalink/internal/zzc;)V

    return-object v0
.end method
