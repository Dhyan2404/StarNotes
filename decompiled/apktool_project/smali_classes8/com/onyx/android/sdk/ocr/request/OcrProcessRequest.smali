.class public final Lcom/onyx/android/sdk/ocr/request/OcrProcessRequest;
.super Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest<",
        "Lio/reactivex/rxjava3/core/Observable<",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ocr/request/OcrProcessRequest;",
        "Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;",
        "input",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
        "(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V",
        "execute",
        "sdk-ocr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;-><init>(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V

    return-void
.end method


# virtual methods
.method public execute()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizerFactory;->INSTANCE:Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizerFactory;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;->getInput()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizerFactory;->create(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;->getInput()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;->ensureOpened(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V

    .line 4
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;->getInput()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;->process(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/ocr/request/OcrProcessRequest;->execute()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
