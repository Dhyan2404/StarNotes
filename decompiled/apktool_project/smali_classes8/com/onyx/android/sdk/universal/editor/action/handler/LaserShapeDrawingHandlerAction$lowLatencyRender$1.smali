.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->A(Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
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


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

.field public final synthetic g:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;


# direct methods
.method public constructor <init>(ILcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;->e:I

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;->g:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;->e:I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->access$getPathList$p(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->access$alphaPaint(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->access$getLaserShapeAttr$p(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;)Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "laserShapeAttr"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeAttr;->getType()Lcom/onyx/android/sdk/note/common/data/shape/LaserShapeType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;->g:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->access$drawDotLaser(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction$lowLatencyRender$1;->g:Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;

    invoke-static {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->access$drawLineLaser(Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;Landroid/graphics/Canvas;Lcom/onyx/android/sdk/note/common/data/render/LowLatencyRenderData;)V

    :goto_0
    return-void
.end method
