.class public final Lcom/onyx/android/sdk/hwr/utils/MLUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMLUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLUtils.kt\ncom/onyx/android/sdk/hwr/utils/MLUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1855#2,2:76\n1855#2,2:78\n2634#2:80\n1549#2:82\n1620#2,3:83\n1#3:81\n*S KotlinDebug\n*F\n+ 1 MLUtils.kt\ncom/onyx/android/sdk/hwr/utils/MLUtils\n*L\n23#1:76,2\n32#1:78,2\n48#1:80\n71#1:82\n71#1:83,3\n48#1:81\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0006J\u0014\u0010\t\u001a\u00020\u00042\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u0014\u0010\u000f\u001a\u00020\u00042\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000cJ\u0014\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/utils/MLUtils;",
        "",
        "()V",
        "getInk",
        "Lcom/google/mlkit/vision/digitalink/Ink;",
        "input",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "getPreContext",
        "Lcom/google/mlkit/vision/digitalink/RecognitionContext;",
        "getTimelessInk",
        "points",
        "",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
        "preHandleInputPoints",
        "pointerEvents",
        "toInk",
        "toInkPoint",
        "Lcom/google/mlkit/vision/digitalink/Ink$Point;",
        "pointerEvent",
        "toInkStroke",
        "Lcom/google/mlkit/vision/digitalink/Ink$Stroke;",
        "",
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
        "SMAP\nMLUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLUtils.kt\ncom/onyx/android/sdk/hwr/utils/MLUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1855#2,2:76\n1855#2,2:78\n2634#2:80\n1549#2:82\n1620#2,3:83\n1#3:81\n*S KotlinDebug\n*F\n+ 1 MLUtils.kt\ncom/onyx/android/sdk/hwr/utils/MLUtils\n*L\n23#1:76,2\n32#1:78,2\n48#1:80\n71#1:82\n71#1:83,3\n48#1:81\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInk(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/google/mlkit/vision/digitalink/Ink;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->toInk(Ljava/util/List;)Lcom/google/mlkit/vision/digitalink/Ink;

    move-result-object p0

    return-object p0
.end method

.method public final getPreContext(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/google/mlkit/vision/digitalink/RecognitionContext;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getViewWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-lez p0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getViewHeight()F

    move-result p0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/google/mlkit/vision/digitalink/RecognitionContext;->builder()Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;

    move-result-object p0

    const-string v0, "builder(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPreContext()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPreContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;->setPreContext(Ljava/lang/String;)Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;

    goto :goto_1

    :cond_2
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;->setPreContext(Ljava/lang/String;)Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;

    :goto_1
    new-instance v0, Lcom/google/mlkit/vision/digitalink/WritingArea;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getViewWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getViewHeight()F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/vision/digitalink/WritingArea;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;->setWritingArea(Lcom/google/mlkit/vision/digitalink/WritingArea;)Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/RecognitionContext$Builder;->build()Lcom/google/mlkit/vision/digitalink/RecognitionContext;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTimelessInk(Ljava/util/List;)Lcom/google/mlkit/vision/digitalink/Ink;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;)",
            "Lcom/google/mlkit/vision/digitalink/Ink;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setT(J)V

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->toInk(Ljava/util/List;)Lcom/google/mlkit/vision/digitalink/Ink;

    move-result-object p0

    return-object p0
.end method

.method public final preHandleInputPoints(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pointerEvents"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->group(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->resample(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final toInk(Ljava/util/List;)Lcom/google/mlkit/vision/digitalink/Ink;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;)",
            "Lcom/google/mlkit/vision/digitalink/Ink;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pointerEvents"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/mlkit/vision/digitalink/Ink;->builder()Lcom/google/mlkit/vision/digitalink/Ink$Builder;

    move-result-object p0

    const-string v0, "builder(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/mlkit/vision/digitalink/Ink$Stroke;->builder()Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "build(...)"

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    sget-object v4, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->toInkPoint(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Lcom/google/mlkit/vision/digitalink/Ink$Point;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;->addPoint(Lcom/google/mlkit/vision/digitalink/Ink$Point;)Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getEventType()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    move-result-object v2

    sget-object v4, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->UP:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;->build()Lcom/google/mlkit/vision/digitalink/Ink$Stroke;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/mlkit/vision/digitalink/Ink$Builder;->addStroke(Lcom/google/mlkit/vision/digitalink/Ink$Stroke;)Lcom/google/mlkit/vision/digitalink/Ink$Builder;

    invoke-static {}, Lcom/google/mlkit/vision/digitalink/Ink$Stroke;->builder()Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/Ink$Builder;->build()Lcom/google/mlkit/vision/digitalink/Ink;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toInkPoint(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Lcom/google/mlkit/vision/digitalink/Ink$Point;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pointerEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getT()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/google/mlkit/vision/digitalink/Ink$Point;->create(FFJ)Lcom/google/mlkit/vision/digitalink/Ink$Point;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toInkStroke(Ljava/util/List;)Lcom/google/mlkit/vision/digitalink/Ink$Stroke;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;)",
            "Lcom/google/mlkit/vision/digitalink/Ink$Stroke;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pointerEvents"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/mlkit/vision/digitalink/Ink$Stroke;->builder()Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;

    move-result-object p0

    const-string v0, "builder(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    sget-object v1, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MLUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/utils/MLUtils;->toInkPoint(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Lcom/google/mlkit/vision/digitalink/Ink$Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;->addPoint(Lcom/google/mlkit/vision/digitalink/Ink$Point;)Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/Ink$Stroke$Builder;->build()Lcom/google/mlkit/vision/digitalink/Ink$Stroke;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
