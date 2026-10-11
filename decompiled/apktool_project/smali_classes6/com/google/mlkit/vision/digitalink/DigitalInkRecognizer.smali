.class public interface abstract Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroidx/lifecycle/LifecycleObserver;


# virtual methods
.method public abstract close()V
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation
.end method

.method public abstract recognize(Lcom/google/mlkit/vision/digitalink/Ink;)Lcom/google/android/gms/tasks/Task;
    .param p1    # Lcom/google/mlkit/vision/digitalink/Ink;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/digitalink/Ink;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/mlkit/vision/digitalink/RecognitionResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract recognize(Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;)Lcom/google/android/gms/tasks/Task;
    .param p1    # Lcom/google/mlkit/vision/digitalink/Ink;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/vision/digitalink/RecognitionContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/digitalink/Ink;",
            "Lcom/google/mlkit/vision/digitalink/RecognitionContext;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/mlkit/vision/digitalink/RecognitionResult;",
            ">;"
        }
    .end annotation
.end method
