.class final Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender$applyStrokeStyle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;->applyStrokeStyle(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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


# instance fields
.field final synthetic $render:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

.field final synthetic this$0:Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender$applyStrokeStyle$1;->this$0:Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender$applyStrokeStyle$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender$applyStrokeStyle$1;->$render:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender$applyStrokeStyle$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender$applyStrokeStyle$1;->this$0:Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender;->isApplyBlendMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender$applyStrokeStyle$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender$applyStrokeStyle$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/onyx/android/sdk/base/extension/ColorKt;->similarWithoutAlpha$default(IIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender$applyStrokeStyle$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/render/BaseMarkerPenShapeRender$applyStrokeStyle$1;->$render:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
