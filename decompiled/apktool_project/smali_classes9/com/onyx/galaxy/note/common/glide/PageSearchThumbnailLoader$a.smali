.class public final Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageSearchThumbnailLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageSearchThumbnailLoader.kt\ncom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$PageThumbnailFetcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1855#2:137\n1855#2,2:138\n1856#2:140\n*S KotlinDebug\n*F\n+ 1 PageSearchThumbnailLoader.kt\ncom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$PageThumbnailFetcher\n*L\n104#1:137\n105#1:138,2\n104#1:140\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPageSearchThumbnailLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageSearchThumbnailLoader.kt\ncom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$PageThumbnailFetcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1855#2:137\n1855#2,2:138\n1856#2:140\n*S KotlinDebug\n*F\n+ 1 PageSearchThumbnailLoader.kt\ncom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$PageThumbnailFetcher\n*L\n104#1:137\n105#1:138,2\n104#1:140\n*E\n"
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public volatile f:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "glideModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->e:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    return-void
.end method

.method public static final synthetic a(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;)Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->e:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    return-object p0
.end method

.method public static final synthetic b(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->e(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->f(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->g()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->f:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 0

    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageOriginRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr p2, v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getSelections()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    invoke-interface {v5}, Lcom/onyx/android/sdk/reader/api/ReaderSelection;->rectangles()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    invoke-static {v6}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {p1, v6, v4, v7, v8}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->contentMapToPageRect$default(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    invoke-static {v6, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-static {}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader;->access$getHighlightFillPaint$cp()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, p0, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getSelectionRegions()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->getUnionRegionPath(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/graphics/Matrix;

    aput-object v3, p1, v4

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->concatTransform(Landroid/graphics/Path;[Landroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader;->access$getHighlightFillPaint$cp()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public final f(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->hasSelections()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$a;-><init>(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final g()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->Companion:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->e:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean$Companion;->toPageDataModel(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;->INSTANCE:Lcom/onyx/android/sdk/universal/util/PageThumbnailLruCache;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->toObjectCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/utils/ObjectLruCache;->getOrCreate(Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object p0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 4
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$b;-><init>(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/extension/RetryWithDelay;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->retryWhen(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$c;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$c;-><init>(Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$d;

    invoke-direct {v0, p2}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$d;-><init>(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$e;

    invoke-direct {v0, p2}, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a$e;-><init>(Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/glide/PageSearchThumbnailLoader$a;->f:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
