.class public final Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->createDragDropShadow(Landroid/view/View;)Landroid/view/View$DragShadowBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShadowCreateArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShadowCreateArgs.kt\ncom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1\n+ 2 Canvas.kt\ncom/onyx/android/sdk/base/extension/CanvasKt\n+ 3 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,71:1\n44#2,12:72\n44#2,8:84\n53#2,3:100\n121#3,8:92\n*S KotlinDebug\n*F\n+ 1 ShadowCreateArgs.kt\ncom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1\n*L\n57#1:72,12\n61#1:84,8\n61#1:100,3\n64#1:92,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1",
        "Landroid/view/View$DragShadowBuilder;",
        "onDrawShadow",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onProvideShadowMetrics",
        "outShadowSize",
        "Landroid/graphics/Point;",
        "outShadowTouchPoint",
        "sdk-ui_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShadowCreateArgs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShadowCreateArgs.kt\ncom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1\n+ 2 Canvas.kt\ncom/onyx/android/sdk/base/extension/CanvasKt\n+ 3 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,71:1\n44#2,12:72\n44#2,8:84\n53#2,3:100\n121#3,8:92\n*S KotlinDebug\n*F\n+ 1 ShadowCreateArgs.kt\ncom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1\n*L\n57#1:72,12\n61#1:84,8\n61#1:100,3\n64#1:92,8\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/onyx/android/sdk/ui/ShadowCreateArgs;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->b:Lcom/onyx/android/sdk/ui/ShadowCreateArgs;

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->b:Lcom/onyx/android/sdk/ui/ShadowCreateArgs;

    invoke-static {v1}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getOuterRectPadding$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F

    move-result v1

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->b:Lcom/onyx/android/sdk/ui/ShadowCreateArgs;

    invoke-static {v2}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getOuterRectPadding$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/lite/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->b:Lcom/onyx/android/sdk/ui/ShadowCreateArgs;

    invoke-static {v2}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getOuterRectPadding$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->b:Lcom/onyx/android/sdk/ui/ShadowCreateArgs;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v4

    :try_start_0
    invoke-static {v2}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getRoundRectRadius$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F

    move-result v5

    invoke-static {v2}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getRoundRectRadius$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F

    move-result v6

    invoke-static {v2}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getFillPaint$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-static {v2}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getRoundRectRadius$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F

    move-result v5

    invoke-static {v2}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getRoundRectRadius$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F

    move-result v6

    invoke-static {v2}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getClearPaint$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v5, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->b:Lcom/onyx/android/sdk/ui/ShadowCreateArgs;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v2

    const/16 v3, 0xc8

    :try_start_1
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    invoke-static {v0}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getOuterRectPadding$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F

    move-result v3

    invoke-static {v0}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getOuterRectPadding$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F

    move-result v0

    invoke-static {v3, v0}, Landroidx/core/graphics/MatrixKt;->translationMatrix(FF)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/16 p0, 0xff

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outShadowSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outShadowTouchPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->b:Lcom/onyx/android/sdk/ui/ShadowCreateArgs;

    invoke-static {v0}, Lcom/onyx/android/sdk/ui/ShadowCreateArgs;->access$getOuterRectPadding$p(Lcom/onyx/android/sdk/ui/ShadowCreateArgs;)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/ShadowCreateArgs$createDragDropShadow$1;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Point;->set(II)V

    iget p0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 p0, p0, 0x2

    iget p1, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
