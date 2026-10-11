.class public final Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizerFactory;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;",
        "input",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizerFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizerFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizerFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizerFactory;->INSTANCE:Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)Lcom/onyx/android/sdk/ocr/core/recognizer/TextRecognizer;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->getEngine()Ljava/lang/String;

    move-result-object p0

    const-string p1, "google-ml-kit"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->INSTANCE:Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;->Companion:Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;

    const-string p1, "Unknown Engine"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    move-result-object p0

    throw p0
.end method
