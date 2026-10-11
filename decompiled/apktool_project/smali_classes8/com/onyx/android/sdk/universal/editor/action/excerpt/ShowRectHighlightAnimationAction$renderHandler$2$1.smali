.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2;->invoke()Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShowRectHighlightAnimationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n1855#2,2:246\n*S KotlinDebug\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1\n*L\n78#1:246,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShowRectHighlightAnimationAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n1855#2,2:246\n*S KotlinDebug\n*F\n+ 1 ShowRectHighlightAnimationAction.kt\ncom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1\n*L\n78#1:246,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->access$getGroupPathList$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->access$getVirtualPageBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "virtualPageBoxInfo"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->isPageRendered(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->access$getGroupPathList$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$renderHandler$2$1;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;->getStrokePaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    return-void
.end method
