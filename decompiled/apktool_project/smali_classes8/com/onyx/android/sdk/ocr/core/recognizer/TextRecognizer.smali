.class public interface abstract Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00112\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;",
        "",
        "close",
        "",
        "ensureOpened",
        "input",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
        "lifecycle",
        "Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;",
        "onError",
        "e",
        "Lcom/onyx/android/sdk/ocr/data/constant/OcrException;",
        "onSuccess",
        "output",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;",
        "open",
        "process",
        "Lio/reactivex/rxjava3/core/Observable;",
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


# virtual methods
.method public abstract close()V
.end method

.method public abstract ensureOpened(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract lifecycle()Lcom/onyx/android/sdk/ocr/data/constant/OcrLifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract onError(Lcom/onyx/android/sdk/ocr/data/constant/OcrException;)V
    .param p1    # Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;)V
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract open(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract process(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)Lio/reactivex/rxjava3/core/Observable;
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
.end method
