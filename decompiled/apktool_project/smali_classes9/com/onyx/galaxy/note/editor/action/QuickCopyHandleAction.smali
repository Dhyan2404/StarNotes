.class public final Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuickCopyHandleAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickCopyHandleAction.kt\ncom/onyx/galaxy/note/editor/action/QuickCopyHandleAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1#2:135\n1#2:137\n2634#3:136\n*S KotlinDebug\n*F\n+ 1 QuickCopyHandleAction.kt\ncom/onyx/galaxy/note/editor/action/QuickCopyHandleAction\n*L\n123#1:137\n123#1:136\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\n\u001a\u00020\tH\u0002J\u001c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "r",
        "boxInfo",
        "n",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "point",
        "q",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "t",
        "",
        "s",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "editorBundleManager",
        "h",
        "Ljava/util/List;",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;",
        "i",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;",
        "dragEvent",
        "j",
        "transformShapes",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;)V",
        "note_overseasRelease"
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
        "SMAP\nQuickCopyHandleAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickCopyHandleAction.kt\ncom/onyx/galaxy/note/editor/action/QuickCopyHandleAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1#2:135\n1#2:137\n2634#3:136\n*S KotlinDebug\n*F\n+ 1 QuickCopyHandleAction.kt\ncom/onyx/galaxy/note/editor/action/QuickCopyHandleAction\n*L\n123#1:137\n123#1:136\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "editorBundleManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dragEvent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->h:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->i:Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;

    return-void
.end method

.method public static final synthetic access$getEditorBundleManager$p(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;)Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    return-object p0
.end method

.method public static final synthetic access$getShapes$p(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->h:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTransformShapes$p(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->j:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$handleCopy(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->n(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$hitTestBoxInfo(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->q(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadBoxInfo(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->r()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setTransformShapes$p(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->j:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$transformShapes(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->p(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public static synthetic m(FFLkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->o(FFLkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method

.method public static final o(FFLkotlin/jvm/internal/Ref$ObjectRef;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1

    const-string v0, "$targetPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getVisibleRect()Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    new-instance p3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p3, p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    iput-object p3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->s()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const-string v1, "just(...)"

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->j:Ljava/util/List;

    const/4 v3, 0x0

    const-string v4, "transformShapes"

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    invoke-virtual {v0, v2, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getBoundingScreenRectWithWidth(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->j:Ljava/util/List;

    if-nez v5, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    invoke-virtual {v0, v3, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeRectUtils;->getOriginBoundingScreenRect(Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->i:Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;->getMovedPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    const/4 v6, 0x2

    int-to-float v6, v6

    div-float v7, v3, v6

    sub-float/2addr v5, v7

    add-float/2addr v3, v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v6

    sub-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    add-float/2addr v8, v7

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v5, v7, v3, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getFocusId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->i:Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    invoke-virtual {v9, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v5

    :goto_2
    if-nez v2, :cond_6

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_6
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getFocusId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->i:Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iput-boolean v5, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->s()V

    :cond_7
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v6

    sub-float/2addr v3, p1

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->q(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v5, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$d;

    invoke-direct {v5, p0, v4}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$d;-><init>(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1, v5}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v4, "flatMap(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$handleCopy$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$handleCopy$2;

    new-instance v5, Lcom/sunia/HTREnginev2/mbl;

    invoke-direct {v5, v2, v3, v1}, Lcom/sunia/HTREnginev2/mbl;-><init>(FFLkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p1, v4, v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$handleCopy$4;

    invoke-direct {v2, v1, v0}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$handleCopy$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    new-instance v0, Lcom/sunia/HTREnginev2/nbl;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/nbl;-><init>(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;)V

    invoke-static {p1, v2, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$handleCopy$6;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$handleCopy$6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$handleCopy$7;

    invoke-direct {v2, p0, v1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$handleCopy$7;-><init>(Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p1, v0, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$e;

    invoke-direct {p1, v1}, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction$e;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final r()Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->j:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "transformShapes"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->focusEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->visibleBoxList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_4

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    return-object p0

    :cond_4
    return-object v1

    :cond_5
    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    return-object p0
.end method

.method public final s()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->postEvent(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->g:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/QuickCopyHandleAction;->i:Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/HandleQuickCopyDragEvent;->getId()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {v0, p0, v2, v1, v4}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->updateFocusId$default(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final t(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->firstTargetShape(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeCopyUtils;->cloneNewShapes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->postConcat(Landroid/graphics/Matrix;)V

    invoke-interface {v1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setPageUniqueId(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->resetConnection()V

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/util/List;

    return-object p1
.end method
