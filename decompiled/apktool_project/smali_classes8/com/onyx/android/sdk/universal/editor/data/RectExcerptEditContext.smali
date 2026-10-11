.class public final Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;
.super Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;",
        "Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;",
        "()V",
        "selectionManager",
        "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
        "getSelectionManager",
        "()Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;",
        "setSelectionManager",
        "(Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;)V",
        "getSaveEventArgs",
        "Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;",
        "boundingRect",
        "Landroid/graphics/RectF;",
        "getSelectionRect",
        "getTransformAction",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "isHitInside",
        "",
        "touchPoint",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "reset",
        "",
        "Companion",
        "sdk-universal_overseasRelease"
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
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private selectionManager:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;->Companion:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSaveEventArgs(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "boundingRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->setRegionInViewport(Landroid/graphics/RectF;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getExcerptShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->forceGet()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->setExcerptAttr(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveRectExcerptArgs;->setVirtualPageBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-object v0
.end method

.method public final getSelectionManager()Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;->selectionManager:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    return-object p0
.end method

.method public final getSelectionRect()Landroid/graphics/RectF;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;->selectionManager:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public final getTransformAction()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;->selectionManager:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Undefined:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->getTransformAction()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    move-result-object p0

    return-object p0
.end method

.method public final isHitInside(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;->getSelectionRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->noteRenderMatrix(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->reset()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;->selectionManager:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;->reset()V

    :cond_0
    return-void
.end method

.method public final setSelectionManager(Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;->selectionManager:Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;

    return-void
.end method
