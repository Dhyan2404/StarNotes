.class public final Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOtherRendererListHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OtherRendererListHandler.kt\ncom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,72:1\n215#2,2:73\n*S KotlinDebug\n*F\n+ 1 OtherRendererListHandler.kt\ncom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler\n*L\n25#1:73,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\u0011\u001a\u00020\u0004H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J\u0016\u0010\u0016\u001a\u00020\u00042\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0014H\u0016J\u001c\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u001b2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\u0008\u0010\u001d\u001a\u00020\u000bH\u0016R\"\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\r0\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;",
        "Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "onDraw",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "draw",
        "destroy",
        "clearDisplay",
        "",
        "key",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;",
        "renderer",
        "addRenderer",
        "removeRenderer",
        "clearRenderer",
        "",
        "rendererSize",
        "",
        "keepList",
        "evict",
        "Landroid/view/View;",
        "hostView",
        "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;",
        "args",
        "Lio/reactivex/rxjava3/core/Observable;",
        "animateBoxChange",
        "getDisplayDebugString",
        "",
        "a",
        "Ljava/util/Map;",
        "rendererMap",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOtherRendererListHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OtherRendererListHandler.kt\ncom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,72:1\n215#2,2:73\n*S KotlinDebug\n*F\n+ 1 OtherRendererListHandler.kt\ncom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler\n*L\n25#1:73,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addNoteSearchBeanList(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->addNoteSearchBeanList(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public addRenderer(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;->a:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public animateBoxChange(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hostView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public cancelAllRenderRequest()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->cancelAllRenderRequest(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V

    return-void
.end method

.method public clearDisplay()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearNoteSearchBeanList()Z
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->clearNoteSearchBeanList(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)Z

    move-result p0

    return p0
.end method

.method public clearRenderer()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearShapeFlushInfo()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->clearShapeFlushInfo(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V

    return-void
.end method

.method public createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public createDisplayScalingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->createDisplayScalingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public createDisplayScrollingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->createDisplayScrollingBoxListObservable(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public createPreRenderBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->createPreRenderBoxListObservable(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public displayBoxList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->displayBoxList(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public draw(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public evict(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "keepList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public flushShapeToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->flushShapeToPage(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z

    move-result p0

    return p0
.end method

.method public getDisplayDebugString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPageRenderNodeInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->getPageRenderNodeInfo(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageRenderNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPageSliceInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->getPageSliceInfo(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/data/PageSliceInfo;

    move-result-object p0

    return-object p0
.end method

.method public invalidateNotVisiblePagesIf(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->invalidateNotVisiblePagesIf(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/Collection;)V

    return-void
.end method

.method public invalidateSliceByPages(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->invalidateSliceByPages(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/Collection;)V

    return-void
.end method

.method public isEnabledPageBorder(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->isEnabledPageBorder(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    return p0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->log(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V

    return-void
.end method

.method public log(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->log(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public logW(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->logW(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V

    return-void
.end method

.method public lowLatencyFlushToPage(Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->lowLatencyFlushToPage(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/ShapeFlushInfo;)Z

    move-result p0

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;->a:Ljava/util/Map;

    invoke-static {p0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$Renderer;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeRenderer(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeVerifyId(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->removeVerifyId(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    return p0
.end method

.method public rendererSize()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/OtherRendererListHandler;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public resizeCache(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->resizeCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/base/data/Size;)V

    return-void
.end method

.method public safeClearAllNoteSliceCache()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->safeClearAllNoteSliceCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V

    return-void
.end method

.method public safeClearAllSliceCache()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->safeClearAllSliceCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;)V

    return-void
.end method

.method public safeClearPageNoteSliceCache(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->safeClearPageNoteSliceCache(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/lang/String;)V

    return-void
.end method

.method public setBackground(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->setBackground(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    return-void
.end method

.method public setPageVisible(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->setPageVisible(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V

    return-void
.end method

.method public updateExistsRenderNode(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler$DefaultImpls;->updateExistsRenderNode(Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Z)V

    return-void
.end method
