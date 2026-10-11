.class public final Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderViewportThumbnailAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderViewportThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,156:1\n1549#2:157\n1620#2,3:158\n1855#2,2:161\n43#3,3:163\n43#3,3:166\n*S KotlinDebug\n*F\n+ 1 RenderViewportThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction\n*L\n73#1:157\n73#1:158,3\n104#1:161,2\n115#1:163,3\n137#1:166,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u00101\u001a\u000200\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u00a2\u0006\u0004\u00082\u00103J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u001e\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J \u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R$\u0010\u001c\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010,\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010+R\u0016\u0010/\u001a\u00020-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010.\u00a8\u00064"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "o",
        "n",
        "r",
        "Landroid/graphics/Bitmap;",
        "viewportBitmap",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxList",
        "q",
        "boxInfo",
        "noteBitmap",
        "p",
        "s",
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;",
        "args",
        "i",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "bitmap",
        "j",
        "Ljava/util/List;",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "k",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewportBitmapSize",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;",
        "l",
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;",
        "geoLayoutShaderWrapper",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "m",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "geoLayout",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "targetViewport",
        "Landroid/graphics/RectF;",
        "Landroid/graphics/RectF;",
        "boundingRectF",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;)V",
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
        "SMAP\nRenderViewportThumbnailAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderViewportThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,156:1\n1549#2:157\n1620#2,3:158\n1855#2,2:161\n43#3,3:163\n43#3,3:166\n*S KotlinDebug\n*F\n+ 1 RenderViewportThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction\n*L\n73#1:157\n73#1:158,3\n104#1:161,2\n115#1:163,3\n137#1:166,3\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->j:Ljava/util/List;

    new-instance p1, Lcom/onyx/android/sdk/base/data/Size;

    const/4 p2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->k:Lcom/onyx/android/sdk/base/data/Size;

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->n:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->o:Landroid/graphics/RectF;

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;

    return-object p0
.end method

.method public static final synthetic access$prepare(Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->o()V

    return-void
.end method

.method public static final synthetic access$renderViewportThumbnail(Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->r()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->m(Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)V

    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->s()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->coreScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction$create$3;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction$create$3;-><init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)V

    new-instance v2, Lcom/sunia/HTREnginev2/okl;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/okl;-><init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final n()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->m:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;-><init>(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->n:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->getBoundingRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->updateViewportAndBoundingRectF(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->l:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    return-void
.end method

.method public final o()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;->getViewArgs()Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;->getViewportBitmapSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v7, 0x2

    invoke-static {v1, v4, v6, v7, v5}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->updateViewportSize$default(Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;Lcom/onyx/android/sdk/base/data/Size;ZILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getScale()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setScale(F)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getViewportLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxManagerViewArgs;->getViewportTop()F

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->n:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->j:Ljava/util/List;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->visibleBoxes()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->j:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->boundingRectF(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->o:Landroid/graphics/RectF;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setScale(F)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setViewport(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;->getViewportBitmapSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-static {v1, v6, v6, v2, v5}, Lcom/onyx/android/sdk/base/data/Size;->copy$default(Lcom/onyx/android/sdk/base/data/Size;IIILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->size()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->k:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->loadGeoLayoutBackground()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->m:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 10

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->boundingRectF(Landroid/graphics/Bitmap;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    new-instance v9, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v6

    move-object v2, v9

    move-object v4, p1

    move-object v7, p3

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;-><init>(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;FLandroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;->getRenderTape()Z

    move-result p1

    invoke-virtual {v9, p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->setShowTape(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;->getLayerId()I

    move-result p1

    invoke-virtual {v9, p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->setLayerId(I)V

    new-instance p1, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-direct {p1, p0, v9}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RectKt;->toRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p1, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final q(Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;->getRenderTemplate()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, -0x1

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->l:Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderWrapper;->onDraw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->k:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->n()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->k:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->k:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->j:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->q(Landroid/graphics/Bitmap;Ljava/util/List;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->copy(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->j:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, v3, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->p(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->i:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailArgs;->getThumbnailSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->scaleToWidthRatioBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;->i:Landroid/graphics/Bitmap;

    return-void
.end method
