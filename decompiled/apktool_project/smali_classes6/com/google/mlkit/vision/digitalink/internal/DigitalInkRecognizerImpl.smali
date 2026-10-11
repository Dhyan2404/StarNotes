.class public Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;


# static fields
.field public static final zza:Lcom/google/mlkit/vision/digitalink/RecognitionContext;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final e:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lcom/google/android/gms/tasks/CancellationTokenSource;

.field public final zzb:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/mlkit/vision/digitalink/RecognitionContext;->builder()Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;->setPreContext(Ljava/lang/String;)Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;

    new-instance v1, Lcom/google/mlkit/vision/digitalink/WritingArea;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/google/mlkit/vision/digitalink/WritingArea;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;->setWritingArea(Lcom/google/mlkit/vision/digitalink/WritingArea;)Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;

    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;->build()Lcom/google/mlkit/vision/digitalink/RecognitionContext;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->zza:Lcom/google/mlkit/vision/digitalink/RecognitionContext;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->e:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;

    iput-object p3, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->f:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {p2}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    iput-object p2, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->g:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/ModelResource;->pin()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lcom/google/mlkit/common/sdkinternal/ModelResource;->unpin(Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method public final synthetic f(Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;)Lcom/google/mlkit/vision/digitalink/RecognitionResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->e:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;

    invoke-virtual {p1, p2, p3, p0}, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;->zzc(Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;)Lcom/google/mlkit/vision/digitalink/RecognitionResult;

    move-result-object p0

    return-object p0
.end method

.method public final recognize(Lcom/google/mlkit/vision/digitalink/Ink;)Lcom/google/android/gms/tasks/Task;
    .locals 4
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

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->zza:Lcom/google/mlkit/vision/digitalink/RecognitionContext;

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Recognizer has been closed"

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->f:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/mlkit/vision/digitalink/internal/zzj;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/google/mlkit/vision/digitalink/internal/zzj;-><init>(Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;)V

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->g:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p0

    .line 4
    invoke-virtual {v1, v2, v3, p0}, Lcom/google/mlkit/common/sdkinternal/ModelResource;->callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final recognize(Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;)Lcom/google/android/gms/tasks/Task;
    .locals 3
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

    .line 5
    iget-object v0, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Recognizer has been closed"

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/mlkit/vision/digitalink/internal/zzj;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/mlkit/vision/digitalink/internal/zzj;-><init>(Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerJni;Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;)V

    iget-object p0, p0, Lcom/google/mlkit/vision/digitalink/internal/DigitalInkRecognizerImpl;->g:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p0

    .line 8
    invoke-virtual {v0, v1, v2, p0}, Lcom/google/mlkit/common/sdkinternal/ModelResource;->callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
