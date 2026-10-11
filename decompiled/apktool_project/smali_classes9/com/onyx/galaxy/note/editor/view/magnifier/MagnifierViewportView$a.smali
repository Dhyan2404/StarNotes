.class public final Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public final b:Z

.field public final synthetic c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;->c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;->a:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;->a:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;->a:F

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;->c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->access$resize(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;F)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .param p1    # Landroid/view/ScaleGestureDetector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;->c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v2

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;->c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->getLocationRect()Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->NONE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->m(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;ILjava/lang/Object;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;->a:F

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;->c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->GESTURE_RESIZE:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->access$setTouchMode$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)V

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$a;->b:Z

    return p0
.end method
