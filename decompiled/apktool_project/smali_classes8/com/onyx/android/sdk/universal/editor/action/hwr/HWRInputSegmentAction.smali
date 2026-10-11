.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRInputSegmentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRInputSegmentAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n37#2,2:120\n1549#3:122\n1620#3,2:123\n1549#3:125\n1620#3,2:126\n1360#3:128\n1446#3,2:129\n800#3,11:131\n1448#3,3:142\n1622#3:145\n1622#3:146\n1045#3:147\n1855#3:148\n1855#3,2:149\n1856#3:151\n*S KotlinDebug\n*F\n+ 1 HWRInputSegmentAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction\n*L\n56#1:120,2\n60#1:122\n60#1:123,2\n61#1:125\n61#1:126,2\n72#1:128\n72#1:129,2\n72#1:131,11\n72#1:142,3\n61#1:145\n60#1:146\n91#1:147\n91#1:148\n96#1:149,2\n91#1:151\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 )2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001)B%\u0012\u0006\u0010&\u001a\u00020%\u0012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\'\u0010(J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0008\u001a\u00020\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J \u0010\u000c\u001a\u00020\u00022\u0016\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bH\u0002J&\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J(\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bH\u0002R(\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010$\u001a\u00020 8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\"\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "o",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;",
        "Lkotlin/collections/ArrayList;",
        "n",
        "l",
        "result",
        "inputShapes",
        "m",
        "h",
        "Ljava/util/List;",
        "getShapeList",
        "()Ljava/util/List;",
        "setShapeList",
        "(Ljava/util/List;)V",
        "shapeList",
        "",
        "i",
        "Z",
        "segmentation",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "j",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "hwrBundle",
        "",
        "k",
        "I",
        "minCorrectAngle",
        "maxBlockSize",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V",
        "Companion",
        "sdk-universal_overseasRelease"
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
        "SMAP\nHWRInputSegmentAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRInputSegmentAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n37#2,2:120\n1549#3:122\n1620#3,2:123\n1549#3:125\n1620#3,2:126\n1360#3:128\n1446#3,2:129\n800#3,11:131\n1448#3,3:142\n1622#3:145\n1622#3:146\n1045#3:147\n1855#3:148\n1855#3,2:149\n1856#3:151\n*S KotlinDebug\n*F\n+ 1 HWRInputSegmentAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction\n*L\n56#1:120,2\n60#1:122\n60#1:123,2\n61#1:125\n61#1:126,2\n72#1:128\n72#1:129,2\n72#1:131,11\n72#1:142,3\n61#1:145\n60#1:146\n91#1:147\n91#1:148\n96#1:149,2\n91#1:151\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/lang/String; = "HWRInputSegmentAction"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Z

.field public final j:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:I

.field public final l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->h:Ljava/util/List;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->i:Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getAiBundle()Lcom/onyx/android/sdk/universal/editor/AIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/AIBundle;->getHwrBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->j:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/universal/R$integer;->hwr_segmentation_min_correct_angle:I

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->k:I

    const/16 p1, 0xc8

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->l:I

    return-void
.end method

.method public static final synthetic access$segment(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->o(Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->j:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getHwrObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getShapeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->h:Ljava/util/List;

    return-object p0
.end method

.method public final l(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction$buildSegmentShapes$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction$buildSegmentShapes$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Matrix;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->concat([Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->inputPointerEvents(Lcom/onyx/android/sdk/base/data/TouchPointList;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->applyMatrix(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;

    invoke-direct {v3, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/List;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;->setPoints([F)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;Ljava/util/ArrayList;)Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;",
            ">;)",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->l:I

    if-ge v0, v1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "Data Too Large"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "HWRInputSegmentAction"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->n(Ljava/util/ArrayList;)Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ljava/util/ArrayList;)Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;",
            ">;)",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputBlock;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;-><init>(Landroid/graphics/RectF;Landroid/graphics/Matrix;FLjava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputBlock;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final o(Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->l(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->n(Ljava/util/ArrayList;)Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;->INSTANCE:Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmenter;->segment([Lcom/onyx/android/sdk/neohwr/segmenter/InputShape;Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->n(Ljava/util/ArrayList;)Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/segmenter/TextSegmentResult;->getBlocks()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/neohwr/segmenter/TextBlock;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/neohwr/segmenter/TextBlock;->getLines()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->getAngle()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->k:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->getAngle()F

    move-result v7

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->getRegion()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_2
    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->getRegion()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->getCharacterSize()F

    move-result v8

    invoke-virtual {v5}, Lcom/onyx/android/sdk/neohwr/segmenter/TextLine;->getElements()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/neohwr/segmenter/TextElement;->getShapes()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;

    if-eqz v13, :cond_3

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_2

    :cond_5
    new-instance v5, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;

    invoke-direct {v5, v7, v6, v8, v9}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;-><init>(Landroid/graphics/RectF;Landroid/graphics/Matrix;FLjava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputBlock;

    invoke-direct {v3, v4}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputBlock;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->m(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;Ljava/util/ArrayList;)Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;

    move-result-object p0

    return-object p0
.end method

.method public final setShapeList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;->h:Ljava/util/List;

    return-void
.end method
