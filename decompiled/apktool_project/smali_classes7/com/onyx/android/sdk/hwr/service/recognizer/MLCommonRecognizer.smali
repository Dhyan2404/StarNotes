.class public final Lcom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer;
.super Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMLCommonRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLCommonRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1855#2,2:108\n1549#2:110\n1620#2,3:111\n1855#2,2:114\n1549#2:116\n1620#2,3:117\n*S KotlinDebug\n*F\n+ 1 MLCommonRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer\n*L\n79#1:108,2\n84#1:110\n84#1:111,3\n88#1:114,2\n93#1:116\n93#1:117,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer;",
        "Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;",
        "()V",
        "close",
        "",
        "export",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "input",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "open",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMLCommonRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLCommonRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,107:1\n1855#2,2:108\n1549#2:110\n1620#2,3:111\n1855#2,2:114\n1549#2:116\n1620#2,3:117\n*S KotlinDebug\n*F\n+ 1 MLCommonRecognizer.kt\ncom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer\n*L\n79#1:108,2\n84#1:110\n84#1:111,3\n88#1:114,2\n93#1:116\n93#1:117,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;-><init>()V

    return-void
.end method


# virtual methods
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
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;->close()V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setLifecycle(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V

    return-void
.end method

.method public export(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Shape"

    const-string v1, "Switch to Idle State"

    const-string v2, "input"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->getReadDebugPoints()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->getDebugFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->readFromDebugFile(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->reset(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->PROCESSING:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setLifecycle(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setType(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setLabel(Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setIdle(Z)V

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isShapeEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->getTimelessInk(Ljava/util/List;)Lcom/google/mlkit/vision/digitalink/Ink;

    move-result-object v4

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->getInk(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/google/mlkit/vision/digitalink/Ink;

    move-result-object v4

    :goto_0
    sget-object v5, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    invoke-virtual {v5, p1}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->getPreContext(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/google/mlkit/vision/digitalink/RecognitionContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getRecognizer()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;->recognize(Lcom/google/mlkit/vision/digitalink/Ink;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    const-string v5, "recognize(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->execute(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mlkit/vision/digitalink/RecognitionResult;

    invoke-virtual {v4}, Lcom/google/mlkit/vision/digitalink/RecognitionResult;->getCandidates()Ljava/util/List;

    move-result-object v4

    const-string v5, "getCandidates(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v6, "getText(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v4, v2, v6}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->candidateToCandidate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object v2

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;

    invoke-virtual {v8}, Lcom/google/mlkit/vision/digitalink/RecognitionCandidate;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->saveToDebugFile(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    sget-object v4, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->preHandleInputPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    sget-object v8, Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;

    invoke-virtual {v8, v6, v4}, Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;->predict(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;->getShape()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v0, v8, v6}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->candidateToCandidate(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object v6

    iget-object v8, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;

    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    sget-object v6, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPointList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/onyx/android/sdk/hwr/service/comparator/CandidateSort;->compareAndSort(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/hwr/service/recognizer/MLCommonRecognizer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shape candidates: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getShapeType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setType(Ljava/lang/String;)V

    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setCandidates(Ljava/util/List;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->optimize(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setIdle(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getIdleStatePublishObservable()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object p0

    invoke-interface {p0, v1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string v2, "Convert Error"

    invoke-virtual {v0, p1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setIdle(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getIdleStatePublishObservable()Lio/reactivex/rxjava3/subjects/Subject;

    move-result-object p0

    invoke-interface {p0, v1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    throw p1
.end method

.method public open(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setOpenInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;-><init>()V

    const-string v1, "GoogleML"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setEngineType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setLang(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->selectModel(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->getModel()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object p1

    invoke-static {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;->builder(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions$Builder;->build()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognition;->getClient(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizerOptions;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;

    move-result-object p1

    const-string v0, "getClient(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setRecognizer(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognizer;)V

    sget-object p1, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->OPENED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/recognizer/MLBaseRecognizer;->setLifecycle(Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;)V

    return-void
.end method
