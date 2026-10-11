.class public final Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;",
        "",
        "",
        "a",
        "Z",
        "getSuccess",
        "()Z",
        "setSuccess",
        "(Z)V",
        "success",
        "Lcom/onyx/android/sdk/ocr/data/constant/OcrException;",
        "b",
        "Lcom/onyx/android/sdk/ocr/data/constant/OcrException;",
        "getError",
        "()Lcom/onyx/android/sdk/ocr/data/constant/OcrException;",
        "setError",
        "(Lcom/onyx/android/sdk/ocr/data/constant/OcrException;)V",
        "error",
        "Lcom/onyx/android/sdk/ocr/data/model/OcrText;",
        "c",
        "Lcom/onyx/android/sdk/ocr/data/model/OcrText;",
        "getResult",
        "()Lcom/onyx/android/sdk/ocr/data/model/OcrText;",
        "setResult",
        "(Lcom/onyx/android/sdk/ocr/data/model/OcrText;)V",
        "result",
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


# instance fields
.field public a:Z

.field public transient b:Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/ocr/data/model/OcrText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->a:Z

    sget-object v0, Lcom/onyx/android/sdk/ocr/data/constant/OcrException;->Companion:Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ocr/data/constant/OcrException$Companion;->getNONE()Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    new-instance v0, Lcom/onyx/android/sdk/ocr/data/model/OcrText;

    invoke-direct {v0}, Lcom/onyx/android/sdk/ocr/data/model/OcrText;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->c:Lcom/onyx/android/sdk/ocr/data/model/OcrText;

    return-void
.end method


# virtual methods
.method public final getError()Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    return-object p0
.end method

.method public final getResult()Lcom/onyx/android/sdk/ocr/data/model/OcrText;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->c:Lcom/onyx/android/sdk/ocr/data/model/OcrText;

    return-object p0
.end method

.method public final getSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->a:Z

    return p0
.end method

.method public final setError(Lcom/onyx/android/sdk/ocr/data/constant/OcrException;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ocr/data/constant/OcrException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->b:Lcom/onyx/android/sdk/ocr/data/constant/OcrException;

    return-void
.end method

.method public final setResult(Lcom/onyx/android/sdk/ocr/data/model/OcrText;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ocr/data/model/OcrText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->c:Lcom/onyx/android/sdk/ocr/data/model/OcrText;

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ocr/data/bean/OcrOutput;->a:Z

    return-void
.end method
