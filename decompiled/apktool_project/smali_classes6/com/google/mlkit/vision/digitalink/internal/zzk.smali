.class public final Lcom/google/mlkit/vision/digitalink/internal/zzk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/mlkit/vision/digitalink/internal/zzm;

.field public final b:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/digitalink/internal/zzm;Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzk;->a:Lcom/google/mlkit/vision/digitalink/internal/zzm;

    iput-object p2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzk;->b:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;
    .locals 3

    new-instance v0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzk;->a:Lcom/google/mlkit/vision/digitalink/internal/zzm;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->zzb()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzk;->b:Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->zzc()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/mlkit/common/sdkinternal/ExecutorSelector;->getExecutorToUse(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;-><init>(Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
