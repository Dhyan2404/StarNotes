.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;->m(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRExportToTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRExportToTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$initHwrInput$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,194:1\n1855#2:195\n1855#2:196\n1855#2,2:197\n1856#2:199\n1855#2,2:200\n1856#2:202\n*S KotlinDebug\n*F\n+ 1 HWRExportToTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$initHwrInput$1\n*L\n77#1:195\n89#1:196\n97#1:197,2\n89#1:199\n126#1:200,2\n77#1:202\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHWRExportToTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRExportToTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$initHwrInput$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,194:1\n1855#2:195\n1855#2:196\n1855#2,2:197\n1856#2:199\n1855#2,2:200\n1856#2:202\n*S KotlinDebug\n*F\n+ 1 HWRExportToTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$initHwrInput$1\n*L\n77#1:195\n89#1:196\n97#1:197,2\n89#1:199\n126#1:200,2\n77#1:202\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputBlock;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 17
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputBlock;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputBlock;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "block"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputBlock;->getLines()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;

    new-instance v4, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-direct {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;-><init>()V

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;->access$getHwrArgs$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;)Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->getRecognizer()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setRecognizerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V

    const-string v5, "Text"

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setContentType(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setShapeEnable(Z)V

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setGestureEnable(Z)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setTextEnable(Z)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->getMtx()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setPointMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->getRegion()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setViewWidth(F)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->getCharacterSize()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setViewHeight(F)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->getShapes()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v6, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;->getSourceShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v9

    invoke-interface {v9}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getCreatedAt()Ljava/util/Date;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-gez v9, :cond_0

    invoke-virtual {v8}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;->getSourceShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v6

    invoke-interface {v6}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    goto :goto_2

    :cond_0
    const/16 v9, 0xc8

    int-to-long v9, v9

    add-long/2addr v6, v9

    :goto_2
    invoke-virtual {v8}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;->getEvents()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    if-eqz v10, :cond_1

    invoke-virtual {v11}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getT()J

    move-result-wide v12

    invoke-virtual {v10}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getT()J

    move-result-wide v14

    sub-long/2addr v12, v14

    add-long/2addr v6, v12

    :cond_1
    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-direct {v12, v11}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;-><init>(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)V

    invoke-virtual {v12, v6, v7}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setT(J)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v11

    goto :goto_3

    :cond_2
    invoke-virtual {v8}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;->getSourceShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v9

    invoke-static {v9}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapeKt;->getRealPoints(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v8}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;->getSourceShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v9

    invoke-interface {v9}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v13

    invoke-virtual {v8}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputShape;->getSourceShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v8

    invoke-interface {v8}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result v14

    new-instance v8, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    const/4 v11, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;-><init>(Ljava/lang/String;Ljava/util/List;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getSourceStrokePointGroups()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;->access$getHwrArgs$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;)Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->getLang()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setLang(Ljava/lang/String;)V

    sget-object v5, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputLine;->getMtx()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/onyx/android/sdk/hwr/utils/HWRStrokeUtils;->applyMatrix(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto :goto_5

    :cond_4
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v7

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v8

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v7

    invoke-virtual {v6}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v6

    invoke-virtual {v3, v7, v6}, Landroid/graphics/RectF;->union(FF)V

    goto :goto_4

    :cond_5
    :goto_5
    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setRegion(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputBlock;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$j;->a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputBlock;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
