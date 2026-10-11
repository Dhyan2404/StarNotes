.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->l()Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getRegionInViewport()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected empty excerpt rect in updating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;

    invoke-static {v4}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    invoke-interface {v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/excerpt/UpdateRectExcerptShapeArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/geometry/utils/BoxInfoUtils;->mapToScreenRectF(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->approximatelyTheSame(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;->access$setRectUpdate$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateRectExcerptAction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
