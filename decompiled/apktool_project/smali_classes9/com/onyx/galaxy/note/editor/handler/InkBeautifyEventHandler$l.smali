.class public final Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;->z(Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInkBeautifyEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$updateBeautifyResult$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Point.kt\nandroidx/core/graphics/PointKt\n*L\n1#1,523:1\n1549#2:524\n1620#2,3:525\n1549#2:529\n1620#2,3:530\n187#3:528\n*S KotlinDebug\n*F\n+ 1 InkBeautifyEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$updateBeautifyResult$3\n*L\n216#1:524\n216#1:525,3\n220#1:529\n220#1:530,3\n218#1:528\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInkBeautifyEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$updateBeautifyResult$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Point.kt\nandroidx/core/graphics/PointKt\n*L\n1#1,523:1\n1549#2:524\n1620#2,3:525\n1549#2:529\n1620#2,3:530\n187#3:528\n*S KotlinDebug\n*F\n+ 1 InkBeautifyEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$updateBeautifyResult$3\n*L\n216#1:524\n216#1:525,3\n220#1:529\n220#1:530,3\n218#1:528\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

.field public final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

.field public final synthetic i:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->f:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->g:Ljava/util/List;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->h:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    iput-object p5, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->i:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 12
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "boxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->e:Ljava/util/List;

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

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Landroid/graphics/Matrix;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->concatTransform(Landroid/graphics/RectF;[Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->f:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getDisplayBundle()Lcom/onyx/android/sdk/universal/editor/DisplayBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->getActivityOffset()Landroid/graphics/Point;

    move-result-object v0

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0, v3}, Lcom/onyx/android/sdk/base/extension/RectKt;->copyAndOffset(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v7

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->g:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_2
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-static {v0, p1, v1, p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->join$default(Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object p1, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayout;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->h:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->i:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v1

    :goto_3
    invoke-virtual {p1, v0, v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->loadFontPath(Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;Ljava/lang/String;)Lcom/onyx/android/sdk/neohwr/layout/FontPathLoadResult;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->i:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/FontPathLoadResult;->getGlyphRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v9, v0, v1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->i:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/FontPathLoadResult;->getGlyphRect()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float v10, v0, p1

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->f:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v5

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->g:Ljava/util/List;

    iget-object v11, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->h:Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/onyx/android/sdk/universal/editor/events/app/StartEditBeautifyResultEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Landroid/graphics/RectF;Ljava/lang/String;FFLcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->f:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$l;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
