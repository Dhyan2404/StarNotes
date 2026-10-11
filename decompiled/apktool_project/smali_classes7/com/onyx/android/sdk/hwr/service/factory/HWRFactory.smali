.class public final Lcom/onyx/android/sdk/hwr/service/factory/HWRFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0008J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0008J\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/factory/HWRFactory;",
        "",
        "()V",
        "buildBasicInput",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "recognizerType",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "formatType",
        "",
        "contentType",
        "lang",
        "buildContextLessGestureRecognizeInput",
        "buildContextLessTextRecognizeInput",
        "buildOffscreenTextRecognizeInput",
        "buildOnscreenTextRecognizeInput",
        "sdk-hwr_release"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/service/factory/HWRFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/factory/HWRFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/factory/HWRFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/factory/HWRFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/factory/HWRFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildBasicInput(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "recognizerType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "formatType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "contentType"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lang"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setRecognizerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setLang(Ljava/lang/String;)V

    return-object p0
.end method

.method public final buildContextLessGestureRecognizeInput(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "lang"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_CONTEXT_LESS:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setRecognizerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    const-string v0, "Gesture"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setLang(Ljava/lang/String;)V

    return-object p0
.end method

.method public final buildContextLessTextRecognizeInput(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "lang"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_CONTEXT_LESS:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setRecognizerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setLang(Ljava/lang/String;)V

    return-object p0
.end method

.method public final buildOffscreenTextRecognizeInput(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "lang"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_OFF_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setRecognizerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    const-string v0, "Raw Content"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setLang(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setGestureEnable(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setTextEnable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setShapeEnable(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setIncremental(Z)V

    return-object p0
.end method

.method public final buildOnscreenTextRecognizeInput(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "lang"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_ON_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setRecognizerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    const-string v0, "Text"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setLang(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setOffsetX(F)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setOffsetY(F)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setViewWidth(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenHeight()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setViewHeight(F)V

    return-object p0
.end method
