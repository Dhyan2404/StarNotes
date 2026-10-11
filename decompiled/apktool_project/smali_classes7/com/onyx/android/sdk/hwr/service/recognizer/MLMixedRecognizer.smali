.class public final Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;
.super Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMLMixedRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLMixedRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n1855#2,2:158\n1855#2,2:160\n1549#2:162\n1620#2,3:163\n1855#2,2:166\n1549#2:168\n1620#2,3:169\n*S KotlinDebug\n*F\n+ 1 MLMixedRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer\n*L\n113#1:158,2\n120#1:160,2\n128#1:162\n128#1:163,3\n132#1:166,2\n137#1:168\n137#1:169,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001b\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J(\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002R\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0014\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\"\u0010\u001c\u001a\u00020\u00128\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0014\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R\"\u0010\u001f\u001a\u00020\t8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010%\u001a\u00020\t8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008%\u0010 \u001a\u0004\u0008&\u0010\"\"\u0004\u0008\'\u0010$R\"\u0010(\u001a\u00020\t8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008(\u0010 \u001a\u0004\u0008)\u0010\"\"\u0004\u0008*\u0010$\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;",
        "Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "input",
        "",
        "open",
        "close",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "export",
        "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;",
        "recognizer",
        "Lcom/google/mlkit/vision/digitalink/Ink;",
        "ink",
        "Lcom/google/mlkit/vision/digitalink/RecognitionContext;",
        "context",
        "",
        "Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;",
        "a",
        "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;",
        "textModel",
        "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;",
        "getTextModel",
        "()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;",
        "setTextModel",
        "(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V",
        "gestureModel",
        "getGestureModel",
        "setGestureModel",
        "drawModel",
        "getDrawModel",
        "setDrawModel",
        "textRecognizer",
        "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;",
        "getTextRecognizer",
        "()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;",
        "setTextRecognizer",
        "(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V",
        "gestureRecognizer",
        "getGestureRecognizer",
        "setGestureRecognizer",
        "drawRecognizer",
        "getDrawRecognizer",
        "setDrawRecognizer",
        "<init>",
        "()V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMLMixedRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLMixedRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,157:1\n1855#2,2:158\n1855#2,2:160\n1549#2:162\n1620#2,3:163\n1855#2,2:166\n1549#2:168\n1620#2,3:169\n*S KotlinDebug\n*F\n+ 1 MLMixedRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer\n*L\n113#1:158,2\n120#1:160,2\n128#1:162\n128#1:163,3\n132#1:166,2\n137#1:168\n137#1:169,3\n*E\n"
    }
.end annotation


# instance fields
.field public drawModel:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

.field public drawRecognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

.field public gestureModel:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

.field public gestureRecognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

.field public textModel:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

.field public textRecognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;",
            "Lcom/google/mlkit/vision/digitalink/Ink;",
            "Lcom/google/mlkit/vision/digitalink/RecognitionContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;",
            ">;"
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;->recognize(Lcom/google/mlkit/vision/digitalink/Ink;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    const-string p1, "recognize(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->execute(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mlkit/vision/digitalink/RecognitionResult;

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/RecognitionResult;->getCandidates()Ljava/util/List;

    move-result-object p0

    const-string p1, "getCandidates(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public close()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getLifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CLOSED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getLifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->CLEARED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->clear()V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isTextEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->getTextRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isGestureEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->getGestureRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;->close()V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isShapeEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->getDrawRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;->close()V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setLifecycle(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V

    return-void
.end method

.method public export(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Switch to Idle State"

    const-string v1, "input"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->getReadDebugPoints()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->getDebugFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->readFromDebugFile(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->reset(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->PROCESSING:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setLifecycle(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setType(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setLabel(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setIdle(Z)V

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->getInk(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/google/mlkit/vision/digitalink/Ink;

    move-result-object v4

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->getPreContext(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/google/mlkit/vision/digitalink/RecognitionContext;

    move-result-object v3

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isTextEnable()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "getText(...)"

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->getTextRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v3}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->a(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;

    const-string v9, "Text"

    invoke-virtual {v8}, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p0, v9, v8, v10}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->candidateToCandidate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object v8

    iget-object v9, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isGestureEnable()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->getGestureRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v3}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->a(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;

    const-string v6, "Gesture"

    invoke-virtual {v4}, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0, v6, v4, v8}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->candidateToCandidate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object v4

    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isShapeEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->getTimelessInk(Ljava/util/List;)Lcom/google/mlkit/vision/digitalink/Ink;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->getDrawRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v3, v6}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->a(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;Lcom/google/mlkit/vision/digitalink/Ink;Lcom/google/mlkit/vision/digitalink/RecognitionContext;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;

    invoke-virtual {v7}, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->saveToDebugFile(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    sget-object v3, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->preHandleInputPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sget-object v7, Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;

    invoke-virtual {v7, v4, v3}, Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;->predict(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;

    const-string v7, "Shape"

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;->getShape()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v7, v8, v4}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->candidateToCandidate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object v4

    iget-object v7, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    sget-object v7, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPointList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;->compareAndSort(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shape candidates: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    new-instance v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    const-string v3, "Mixed"

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setType(Ljava/lang/String;)V

    iget-object v3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setCandidates(Ljava/util/List;)V

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->optimize(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setIdle(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getIdleStatePublishObservable()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object p0

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_2
    sget-object v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string v3, "Convert Error"

    invoke-virtual {v1, p1, v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setIdle(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getIdleStatePublishObservable()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object p0

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    throw p1
.end method

.method public final getDrawModel()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->drawModel:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "drawModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDrawRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->drawRecognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "drawRecognizer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGestureModel()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->gestureModel:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "gestureModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getGestureRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->gestureRecognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "gestureRecognizer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTextModel()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->textModel:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "textModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTextRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->textRecognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "textRecognizer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public open(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setOpenInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isTextEnable()Z

    move-result v0

    const-string v1, "getClient(...)"

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;-><init>()V

    const-string v2, "Text"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setLang(Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->selectModel(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->setTextModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->getTextModel()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->builder(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognition;->getClient(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->setTextRecognizer(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isGestureEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;-><init>()V

    const-string v2, "Gesture"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setLang(Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->selectModel(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->setGestureModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->getGestureModel()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->builder(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognition;->getClient(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->setGestureRecognizer(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isShapeEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;-><init>()V

    const-string v2, "Drawing"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setLang(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->selectModel(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->setDrawModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->getDrawModel()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object p1

    invoke-static {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->builder(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognition;->getClient(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->setDrawRecognizer(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->OPENED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setLifecycle(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V

    return-void
.end method

.method public final setDrawModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->drawModel:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    return-void
.end method

.method public final setDrawRecognizer(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->drawRecognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    return-void
.end method

.method public final setGestureModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->gestureModel:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    return-void
.end method

.method public final setGestureRecognizer(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->gestureRecognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    return-void
.end method

.method public final setTextModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->textModel:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    return-void
.end method

.method public final setTextRecognizer(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/recognizer/MLMixedRecognizer;->textRecognizer:Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    return-void
.end method
