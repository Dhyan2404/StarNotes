.class public abstract Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u0011\u0008\u0016\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\tR\"\u0010\n\u001a\u00020\u00038\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;",
        "T",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
        "a",
        "Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
        "getInput",
        "()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;",
        "setInput",
        "(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V",
        "input",
        "<init>",
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
.field public a:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;->Companion:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ocr/data/bean/OcrInput$Companion;->getEmpty()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    iput-object p1, p0, Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;->a:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    return-void
.end method


# virtual methods
.method public final getInput()Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;->a:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    return-object p0
.end method

.method public final setInput(Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ocr/request/OcrBaseRequest;->a:Lcom/onyx/android/sdk/ocr/data/bean/OcrInput;

    return-void
.end method
