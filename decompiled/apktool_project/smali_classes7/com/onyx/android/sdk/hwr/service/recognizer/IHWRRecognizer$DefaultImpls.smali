.class public final Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static exportObservable(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->export(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static needActivate(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z
    .locals 0
    .param p0    # Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public static needClear(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->OPENED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->PROCESSING:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    filled-new-array {v0, v1}, [Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static needClose(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->OPENED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->PROCESSING:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    sget-object v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CLEARED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static needDestroy(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->INITIALIZED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->DESTROYED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static needDiscard(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->DESTROYED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static needHandle(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->PROCESSING:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static needInitialize(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CREATED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static needOpen(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;)Z
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->INITIALIZED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CLOSED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    filled-new-array {v0, v1}, [Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static needReopen(Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->getOpenParam()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isTextEnable()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isTextEnable()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isGestureEnable()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isGestureEnable()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isShapeEnable()Z

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isShapeEnable()Z

    move-result p0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
