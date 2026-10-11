.class public final Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010\u0007\u001a\u00020\u0005*\u00020\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "getEngineType",
        "",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "getEngineVersion",
        "isMlKitRecognizer",
        "",
        "isMyScriptRecognizer",
        "isSuNiaRecognizer",
        "sdk-hwr_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->isMyScriptRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MyScript"

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->isMlKitRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "GoogleML"

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->isSuNiaRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "SuNia"

    return-object p0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string v0, "Unknown Recognizer Type"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public static final getEngineVersion(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->isMyScriptRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "2.1"

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->isMlKitRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "18.1.0"

    return-object p0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string v0, "Unknown Recognizer Type"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public static final isMlKitRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Z
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML_MIXED:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    filled-new-array {v0, v1}, [Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isMyScriptRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Z
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_ON_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_OFF_SCREEN:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->MS_CONTEXT_LESS:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isSuNiaRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Z
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->SUNIA:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->SUNIA_NAI_NBI:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    filled-new-array {v0, v1}, [Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
