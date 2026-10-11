.class public final Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartImageDragAndDropAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartImageDragAndDropAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,88:1\n344#2,3:89\n*S KotlinDebug\n*F\n+ 1 StartImageDragAndDropAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction\n*L\n58#1:89,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0018\u0010\u0007\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0002J \u0010\n\u001a\u00020\t2\u0016\u0010\u0008\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lkotlin/Pair;",
        "Ljava/io/File;",
        "Landroid/graphics/Bitmap;",
        "l",
        "pair",
        "",
        "m",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "h",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
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
        "SMAP\nStartImageDragAndDropAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartImageDragAndDropAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,88:1\n344#2,3:89\n*S KotlinDebug\n*F\n+ 1 StartImageDragAndDropAction.kt\ncom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction\n*L\n58#1:89,3\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public static final synthetic access$decodeFile(Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;)Lkotlin/Pair;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;->l()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$dragAndDrop(Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;Lkotlin/Pair;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;->m(Lkotlin/Pair;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->ioSequenceScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getResource(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->getBITMAP_SAFE_SIZE()Landroid/util/Size;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->fitSafeRect(Landroid/graphics/RectF;Landroid/util/Size;)F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ImageManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->decodeImageAsBitmap$default(Lcom/onyx/android/sdk/note/common/utils/ImageManager;Ljava/lang/String;IIZILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v1, Lkotlin/Pair;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final m(Lkotlin/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/universal/common/provider/ProviderConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/common/provider/ProviderConfig;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/common/provider/ProviderConfig;->getFileProviderAuthorities()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "image"

    invoke-static {v1, v3, v0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/image/StartImageDragAndDropAction;->h:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isQuoteShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v1

    const-string v3, "source_type"

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    new-instance v1, Lcom/onyx/android/sdk/universal/common/drag/BitmapDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/universal/common/drag/BitmapDragShadowBuilder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getDisplayBundle()Lcom/onyx/android/sdk/universal/editor/DisplayBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p1, 0x101

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/core/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method
