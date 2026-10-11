.class public final Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRenderBoundingRectThumbnailAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderBoundingRectThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,192:1\n766#2:193\n857#2,2:194\n1864#2,3:196\n*S KotlinDebug\n*F\n+ 1 RenderBoundingRectThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction\n*L\n98#1:193\n98#1:194,2\n99#1:196,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 82\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00018B\u0017\u0012\u0006\u00105\u001a\u000204\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u00086\u00107J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u0005H\u0002J\u0008\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010$\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0018\u0010,\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u001a\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u0011018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u00102\u00a8\u00069"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "r",
        "u",
        "Landroid/graphics/Bitmap;",
        "viewportBitmap",
        "t",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "boxInfo",
        "s",
        "p",
        "q",
        "onDispose",
        "",
        "msg",
        "log",
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;",
        "args",
        "i",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "j",
        "Ljava/util/List;",
        "boxList",
        "Landroid/graphics/RectF;",
        "k",
        "Landroid/graphics/RectF;",
        "scaleBoundingRect",
        "l",
        "originBoundingRectF",
        "",
        "m",
        "F",
        "actualScale",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "n",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "geoLayout",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "o",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isAbort",
        "",
        "Ljava/util/Set;",
        "renderedShapeIds",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;)V",
        "Companion",
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
        "SMAP\nRenderBoundingRectThumbnailAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderBoundingRectThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,192:1\n766#2:193\n857#2,2:194\n1864#2,3:196\n*S KotlinDebug\n*F\n+ 1 RenderBoundingRectThumbnailAction.kt\ncom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction\n*L\n98#1:193\n98#1:194,2\n99#1:196,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEBUG:Z

.field public static final DEBUG_BITMAP:Z


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Ljava/util/List;
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

.field public k:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:F

.field public n:Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->j:Ljava/util/List;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->k:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->l:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->m:F

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->p:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$createRenderBoundingRectResult(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->p()Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$prepare(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->r()V

    return-void
.end method

.method public static final synthetic access$renderViewportThumbnail(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->u()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->n(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->o(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V

    return-void
.end method

.method public static final n(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->q()V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->onDispose()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;",
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

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "doOnNext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$create$3;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$create$3;

    new-instance v2, Lcom/sunia/HTREnginev2/bkl;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/bkl;-><init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ckl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ckl;-><init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnDispose(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnDispose(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onDispose()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final p()Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->i:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->k:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->l:Landroid/graphics/RectF;

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->m:F

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectResult;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    return-object v0
.end method

.method public final q()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "NotePage-draft-boundingRect.png"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debug bitmap, path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/io/File;)Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p0, v4, v1, v2}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->save$default(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/Object;)Z

    return-void
.end method

.method public final r()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setScale(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    iput-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->l:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->l:Landroid/graphics/RectF;

    invoke-static {v4}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-static {v4, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPage(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v3

    iput v3, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->m:F

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setScale(F)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    iput-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->k:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->copyBoxList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->j:Ljava/util/List;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->setScale(F)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->left()F

    move-result v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->top()F

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->scrollTo(FF)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->loadGeoLayoutBackground()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->n:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-void
.end method

.method public final s(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Bitmap;)V
    .locals 11

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->k:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    new-instance v1, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v6

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v2, v1

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;-><init>(Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;FLandroid/graphics/Bitmap;Landroid/graphics/RectF;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->getRenderTape()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->setShowTape(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->getLayerId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->setLayerId(I)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->setRenderReferenceShape(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->p:Ljava/util/Set;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;->setRenderedShapeIds(Ljava/util/Set;)V

    new-instance p1, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lcom/onyx/android/sdk/note/request/RenderNotePageThumbnailRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/NoteThumbnailRenderArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->disableThrowException()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-void
.end method

.method public final t(Landroid/graphics/Bitmap;)V
    .locals 11

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailArgs;->getRenderTemplate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->n:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/onyx/android/sdk/genericshape/DrawContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/genericshape/DrawContext;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ljava/util/List;ZZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/genericshape/Properties;->getPageMargins()Lcom/onyx/android/sdk/genericshape/PageMargins;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->k:Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/genericshape/PageMargins;->setLayoutRect(Landroid/graphics/RectF;)V

    :cond_2
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->draw(Lcom/onyx/android/sdk/genericshape/DrawContext;)V

    return-void
.end method

.method public final u()V
    .locals 8

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actualScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaleBoundingRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->k:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originBoundingRectF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->k:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->createBitmapOrNull(Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->t(Landroid/graphics/Bitmap;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->loadValidShapeNotePageIds(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->j:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v4, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v0, "abort"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->log(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "renderNotePage, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getCellKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", progress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->s(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/Bitmap;)V

    move v2, v5

    goto :goto_1

    :cond_6
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderBoundingRectThumbnailAction;->i:Landroid/graphics/Bitmap;

    return-void
.end method
