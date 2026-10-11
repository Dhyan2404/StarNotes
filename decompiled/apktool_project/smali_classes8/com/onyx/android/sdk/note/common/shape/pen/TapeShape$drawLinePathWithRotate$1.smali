.class final Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->c(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Matrix;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/graphics/Matrix;",
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
.field final synthetic $boundingRect1:Landroid/graphics/RectF;

.field final synthetic $first:Lcom/onyx/android/sdk/base/data/TouchPoint;

.field final synthetic $last:Lcom/onyx/android/sdk/base/data/TouchPoint;

.field final synthetic $renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->$first:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->$last:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p4, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->$boundingRect1:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->invoke(Landroid/graphics/Matrix;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/graphics/Matrix;)V
    .locals 10
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->$first:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    float-to-double v2, v0

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->$first:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    float-to-double v4, v0

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->$last:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    float-to-double v6, v0

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->$last:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    float-to-double v8, v0

    .line 5
    invoke-virtual/range {v1 .. v9}, Lcom/onyx/android/sdk/base/utils/MathUtils;->calculateRotationAngle(DDDD)D

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->$renderContext:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    double-to-float v0, v0

    .line 7
    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->$boundingRect1:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$drawLinePathWithRotate$1;->$boundingRect1:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-void
.end method
