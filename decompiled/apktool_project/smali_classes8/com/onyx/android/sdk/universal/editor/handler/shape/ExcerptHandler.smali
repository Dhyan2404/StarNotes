.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;
.super Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler$Companion;,
        Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExcerptHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1855#2,2:153\n*S KotlinDebug\n*F\n+ 1 ExcerptHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler\n*L\n67#1:153,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 22\u00020\u0001:\u00012B\u000f\u0012\u0006\u0010/\u001a\u00020.\u00a2\u0006\u0004\u00080\u00101J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0012\u0010\u000c\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0017H\u0007J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0019H\u0007J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\n\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002J\u0008\u0010\u001e\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0002J\u0008\u0010\"\u001a\u00020\nH\u0002R \u0010&\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u001c0#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010%R\u0016\u0010)\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;",
        "",
        "onActivate",
        "onDeactivate",
        "destroy",
        "Landroid/view/View;",
        "view",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "isProcessing",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "onSingleTapUp",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;",
        "args",
        "startExcerptEdit",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;",
        "onSwitchExcerptTypeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ExitExcerptEditEvent;",
        "onExitExcerptEditEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;",
        "onQuitAnnotationSelectionEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;",
        "onDeleteExcerptEvent",
        "cancelAction",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;",
        "b",
        "d",
        "Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;",
        "type",
        "a",
        "c",
        "",
        "",
        "Ljava/util/Map;",
        "shapeHandlerActionMap",
        "e",
        "Ljava/lang/String;",
        "activeHandler",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "f",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "disposable",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
        "SMAP\nExcerptHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcerptHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1855#2,2:153\n*S KotlinDebug\n*F\n+ 1 ExcerptHandler.kt\ncom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler\n*L\n67#1:153,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RECT_EXCERPT:Ljava/lang/String; = "rect_excerpt"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEXT_EXCERPT:Ljava/lang/String; = "text_excerpt"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->Companion:Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->d:Ljava/util/Map;

    const-string v1, ""

    iput-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->e:Ljava/lang/String;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    const-string v2, "text_excerpt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    const-string p0, "rect_excerpt"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "text_excerpt"

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string p1, "rect_excerpt"

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->f:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->f:Lio/reactivex/rxjava3/disposables/Disposable;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->e:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->d:Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->e:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->b()Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;->isEditMode()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cancelAction()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->b()Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;->cancelAction()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportTouchEdit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;->getDISABLE_EVENT_FILTER()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->setEventFilter(Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->setEventFilter(Z)V

    :goto_1
    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->destroy()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isProcessing(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->c()Z

    move-result p0

    return p0
.end method

.method public onActivate()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onActivate()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getExcerptShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->getType()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->a(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V

    return-void
.end method

.method public onDeactivate()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    const-string v1, "render_key_rect_excerpt"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderSilent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    const-string v1, "render_key_transform"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderSilent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    const-string v1, "render_key_text_excerpt"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderSilent(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onDeactivate()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->b()Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    :cond_0
    return-void
.end method

.method public final onDeleteExcerptEvent(Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteExcerptResultEvent;->getResult()Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/excerpt/DeleteExcerptResult;->getExcerptInfoBean()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->b()Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;->cancelEditIfDeleted(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onExitExcerptEditEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ExitExcerptEditEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ExitExcerptEditEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->restoreUserProvider()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getExcerptShapeAttrOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptAttr;->getType()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->a(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V

    :cond_0
    return-void
.end method

.method public final onQuitAnnotationSelectionEvent(Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->b()Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;->getSaveChanged()Z

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;->getOnSaveCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;->quitEdit(ZLkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->b()Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;->onSingleTapUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onSwitchExcerptTypeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/SwitchExcerptTypeEvent;->getNewType()Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->a(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->d()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public startExcerptEdit(Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->startExcerptEdit(Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeHighlightAnimationEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/DismissShapeHighlightAnimationEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType$Companion;->fromShapeType(I)Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->a(Lcom/onyx/android/sdk/note/common/data/shape/ExcerptType;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ExcerptHandler;->b()Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;->startExcerptEdit(Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;)V

    :cond_0
    return-void
.end method
