.class final Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initStrokeWidthView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->initStrokeWidthView(Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdjustShapeStylePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdjustShapeStylePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initStrokeWidthView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,353:1\n766#2:354\n857#2,2:355\n1855#2,2:357\n*S KotlinDebug\n*F\n+ 1 AdjustShapeStylePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initStrokeWidthView$1\n*L\n193#1:354\n193#1:355,2\n194#1:357,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "progress",
        "",
        "progressValue",
        "isFromUser",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdjustShapeStylePopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdjustShapeStylePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initStrokeWidthView$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,353:1\n766#2:354\n857#2,2:355\n1855#2,2:357\n*S KotlinDebug\n*F\n+ 1 AdjustShapeStylePopup.kt\ncom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initStrokeWidthView$1\n*L\n193#1:354\n193#1:355,2\n194#1:357,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initStrokeWidthView$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initStrokeWidthView$1;->invoke(FFZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(FFZ)V
    .locals 5

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initStrokeWidthView$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->access$getShapes$p(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/Shape;

    .line 6
    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->disableThicknessStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    .line 9
    sget-object v2, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;->buildAttributes(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object v2

    .line 10
    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getAverageScale(Landroid/graphics/Matrix;)F

    move-result v3

    div-float v3, p2, v3

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/data/PensizeConvertExtKt;->valueToSize(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->setShapeWidth(F)V

    .line 11
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup$initStrokeWidthView$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;

    xor-int/lit8 p2, p3, 0x1

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;->access$postAttrChangesEvent(Lcom/onyx/galaxy/note/editor/view/popup/AdjustShapeStylePopup;Ljava/util/HashMap;Z)V

    return-void
.end method
