.class public final Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\u0016\u001a\u00060\u0012j\u0002`\u00138\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R)\u0010\u001e\u001a\u0015\u0012\u000c\u0012\n \u001a*\u0004\u0018\u00010\u00070\u00070\u0019\u00a2\u0006\u0002\u0008\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;",
        "Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
        "input",
        "",
        "open",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;",
        "process",
        "close",
        "output",
        "onSuccess",
        "Lcom/onyx/android/sdk/ocr/data/constant/OcrException;",
        "e",
        "onError",
        "Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;",
        "lifecycle",
        "ensureOpened",
        "Lcom/google/mlkit/vision/text/TextRecognizer;",
        "Lcom/onyx/android/sdk/ocr/core/recognizer/MlRecognizer;",
        "a",
        "Lcom/google/mlkit/vision/text/TextRecognizer;",
        "recognizer",
        "b",
        "Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "c",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "publisher",
        "<init>",
        "()V",
        "sdk-ocr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Lcom/google/mlkit/vision/text/TextRecognizer;

.field public static b:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->INSTANCE:Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;

    sget-object v0, Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;->CREATED:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    sput-object v0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public static final c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final d(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->INSTANCE:Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;

    sget-object v1, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;->Companion:Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;->of(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->onError(Lcom/onyx/android/sdk/ocr/data/constant/OcrException;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;->CLOSED:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    sput-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    return-void
.end method

.method public ensureOpened(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;->CREATED:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    sget-object v1, Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;->CLOSED:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    filled-new-array {v0, v1}, [Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->open(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V

    :cond_0
    return-void
.end method

.method public lifecycle()Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    return-object p0
.end method

.method public onError(Lcom/onyx/android/sdk/ocr/data/constant/OcrException;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "e"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;->IDLE:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    sput-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    sget-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "output"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;->IDLE:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    sput-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    sget-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

    return-void
.end method

.method public open(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/ocr/core/option/RecognizerOptionFactory;->INSTANCE:Lcom/onyx/android/sdk/ocr/core/option/RecognizerOptionFactory;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ocr/core/option/RecognizerOptionFactory;->create(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/google/mlkit/vision/text/TextRecognition;->getClient(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object p0

    const-string p1, "getClient(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->a:Lcom/google/mlkit/vision/text/TextRecognizer;

    sget-object p0, Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;->OPENED:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    sput-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    return-void
.end method

.method public process(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->ensureOpened(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V

    sget-object p0, Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;->PROCESSING:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    sput-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    :try_start_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/mlkit/vision/common/InputImage;->fromFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p0

    const-string p1, "fromFilePath(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->a:Lcom/google/mlkit/vision/text/TextRecognizer;

    if-nez p1, :cond_0

    const-string p1, "recognizer"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p1, p0}, Lcom/google/mlkit/vision/text/TextRecognizer;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer$process$1;->INSTANCE:Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer$process$1;

    new-instance v0, Lcom/sunia/HTREnginev2/p4h;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/p4h;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/q4h;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/q4h;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->c:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;->IDLE:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    sput-object p1, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;

    sget-object p1, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;->Companion:Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;->of(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    move-result-object p0

    throw p0
.end method
