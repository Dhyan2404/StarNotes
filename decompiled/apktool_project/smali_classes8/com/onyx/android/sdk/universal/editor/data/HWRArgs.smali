.class public final Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;",
        "",
        "()V",
        "lang",
        "",
        "getLang",
        "()Ljava/lang/String;",
        "setLang",
        "(Ljava/lang/String;)V",
        "recognizer",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "getRecognizer",
        "()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "setRecognizer",
        "(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V",
        "segmentation",
        "",
        "getSegmentation",
        "()Z",
        "setSegmentation",
        "(Z)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private lang:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private recognizer:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private segmentation:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getDEFAULT_LANG()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->lang:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getDEFAULT_RECOGNIZER()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->recognizer:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-void
.end method


# virtual methods
.method public final getLang()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->lang:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecognizer()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->recognizer:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-object p0
.end method

.method public final getSegmentation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->segmentation:Z

    return p0
.end method

.method public final setLang(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->lang:Ljava/lang/String;

    return-void
.end method

.method public final setRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->recognizer:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-void
.end method

.method public final setSegmentation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->segmentation:Z

    return-void
.end method
