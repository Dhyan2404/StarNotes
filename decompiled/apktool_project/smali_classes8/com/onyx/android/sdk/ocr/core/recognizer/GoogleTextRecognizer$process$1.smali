.class final Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer$process$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->process(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/mlkit/vision/text/Text;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "mlText",
        "Lcom/google/mlkit/vision/text/Text;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer$process$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer$process$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer$process$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer$process$1;->INSTANCE:Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer$process$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/text/Text;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer$process$1;->invoke(Lcom/google/mlkit/vision/text/Text;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/google/mlkit/vision/text/Text;)V
    .locals 1

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;

    invoke-direct {p0}, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;-><init>()V

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->INSTANCE:Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/ocr/utils/GoogleOcrUtils;->convert(Lcom/google/mlkit/vision/text/Text;)Lcom/onyx/android/sdk/ocr/data/model/OcrText;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->setResult(Lcom/onyx/android/sdk/ocr/data/model/OcrText;)V

    .line 4
    sget-object p1, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->INSTANCE:Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/ocr/core/recognizer/GoogleTextRecognizer;->onSuccess(Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;)V

    return-void
.end method
