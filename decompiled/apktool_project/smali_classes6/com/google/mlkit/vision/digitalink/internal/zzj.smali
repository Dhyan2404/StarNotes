.class public final synthetic Lcom/google/mlkit/vision/digitalink/internal/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;

.field public final synthetic zzb:Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;

.field public final synthetic zzc:Lcom/google/mlkit/vision/digitalink/Ink;

.field public final synthetic zzd:Lcom/google/mlkit/vision/digitalink/RecognitionContext;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzj;->zza:Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;

    iput-object p2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzj;->zzb:Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;

    iput-object p3, p0, Lcom/google/mlkit/vision/digitalink/internal/zzj;->zzc:Lcom/google/mlkit/vision/digitalink/Ink;

    iput-object p4, p0, Lcom/google/mlkit/vision/digitalink/internal/zzj;->zzd:Lcom/google/mlkit/vision/digitalink/RecognitionContext;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzj;->zza:Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/internal/zzj;->zzb:Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;

    iget-object v2, p0, Lcom/google/mlkit/vision/digitalink/internal/zzj;->zzc:Lcom/google/mlkit/vision/digitalink/Ink;

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/internal/zzj;->zzd:Lcom/google/mlkit/vision/digitalink/RecognitionContext;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->f(Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;)Lcom/google/mlkit/vision/digitalink/RecognitionResult;

    move-result-object p0

    return-object p0
.end method
