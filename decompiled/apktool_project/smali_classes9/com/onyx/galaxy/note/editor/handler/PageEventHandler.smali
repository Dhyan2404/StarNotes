.class public final Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/PageEventHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,292:1\n1#2:293\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 62\u00020\u0001:\u00017B\u000f\u0012\u0006\u00102\u001a\u000201\u00a2\u0006\u0004\u00083\u00104B\u0019\u0008\u0016\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u0010$\u001a\u00020!\u00a2\u0006\u0004\u00083\u00105J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0008H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000cH\u0007J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0012H\u0007J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0016H\u0007J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0018H\u0007J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u001aH\u0007J\u0016\u0010\u001f\u001a\u00020\u00042\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0002J\u0008\u0010 \u001a\u00020\u0004H\u0002R\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/\u00a8\u00068"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;",
        "event",
        "",
        "onDocumentOpenSuccessEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;",
        "onVirtualDocViewInfoEvent",
        "Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;",
        "onChangeScrollerConfigEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ShowImportSuccessEvent;",
        "onShowImportSuccessDialog",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageBeginEvent;",
        "onRotatePageBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEndEvent;",
        "onRotatePageEndEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageBeginEvent;",
        "onCopyPageBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;",
        "onToggleNotePageLoadingEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ShowNotePageToastEvent;",
        "onShowNotePageToastEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEndEvent;",
        "onCopyPageEndEvent",
        "Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;",
        "onAddShapesEvent",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "onNoteShapeChangedEvent",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "c",
        "e",
        "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;",
        "f",
        "Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;",
        "editorViewDragLayout",
        "",
        "g",
        "Z",
        "checkingAppendPage",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "h",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "autoAppendPageOption",
        "Lcom/onyx/galaxy/note/common/view/LoadingDialog;",
        "i",
        "Lcom/onyx/galaxy/note/common/view/LoadingDialog;",
        "copyPageLoadingDialog",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V",
        "j",
        "a",
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
        "SMAP\nPageEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/PageEventHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,292:1\n1#2:293\n*E\n"
    }
.end annotation


# static fields
.field public static final j:Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static k:I

.field public static l:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static m:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static n:F


# instance fields
.field public f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

.field public g:Z

.field public h:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/galaxy/note/common/view/LoadingDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->j:Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$a;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->l:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->m:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 2
    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getAutoAppendPage()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->h:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorViewDragLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    .line 5
    new-instance p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;

    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler$pageJumpListener$1;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    .line 6
    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->setPageNumFloatingBarListener(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumFloatingBarListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->d(Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;)V

    return-void
.end method

.method public static final synthetic access$getContainerTranslationX$cp()F
    .locals 1

    sget v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->n:F

    return v0
.end method

.method public static final synthetic access$getShareLeftSideBarRect$cp()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->m:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static final synthetic access$getShareRightSideBarRect$cp()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->l:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static final synthetic access$getShareToolBarRect$cp()I
    .locals 1

    sget v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->k:I

    return v0
.end method

.method public static final synthetic access$setContainerTranslationX$cp(F)V
    .locals 0

    sput p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->n:F

    return-void
.end method

.method public static final synthetic access$setShareLeftSideBarRect$cp(Landroid/graphics/Rect;)V
    .locals 0

    sput-object p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->m:Landroid/graphics/Rect;

    return-void
.end method

.method public static final synthetic access$setShareRightSideBarRect$cp(Landroid/graphics/Rect;)V
    .locals 0

    sput-object p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->l:Landroid/graphics/Rect;

    return-void
.end method

.method public static final synthetic access$setShareToolBarRect$cp(I)V
    .locals 0

    sput p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->k:I

    return-void
.end method

.method public static synthetic b(ZLcom/onyx/galaxy/note/editor/handler/PageEventHandler;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->f(ZLcom/onyx/galaxy/note/editor/handler/PageEventHandler;)V

    return-void
.end method

.method public static final d(Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->g:Z

    return-void
.end method

.method public static final f(ZLcom/onyx/galaxy/note/editor/handler/PageEventHandler;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "editorViewDragLayout"

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    if-nez p0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->showForAwhile()V

    goto :goto_2

    :cond_1
    iget-object p0, p1, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->h:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->pageCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->lastPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v2

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->g:Z

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/AppendPageIfNeededAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/onyx/galaxy/note/editor/action/AppendPageIfNeededAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/dsk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/dsk;-><init>(Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doFinally(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->i:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->i:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    return-void
.end method

.method public final onAddShapesEvent(Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/event/AddShapesEvent;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->c(Ljava/util/List;)V

    return-void
.end method

.method public final onChangeScrollerConfigEvent(Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;)V
    .locals 5
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;->getToolBarWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sput v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->k:I

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;->getRightSideBarRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    sput-object v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->l:Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;->getLeftSideBarRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    sput-object v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->m:Landroid/graphics/Rect;

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;->getContainerTranslationX()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sput v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->n:F

    :cond_3
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ChangeScrollerConfigEvent;->getShowForAWhile()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    const-string v1, "editorViewDragLayout"

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->refreshPageScrollerLayout()V

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_5
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    if-nez p0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v4, p0

    :goto_0
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v4, v0

    :goto_1
    new-instance v0, Lcom/sunia/HTREnginev2/csk;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/csk;-><init>(ZLcom/onyx/galaxy/note/editor/handler/PageEventHandler;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method public final onCopyPageBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageBeginEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->i:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->option_copying:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->i:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final onCopyPageEndEvent(Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEndEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/CopyPageEndEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->e()V

    return-void
.end method

.method public final onDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    if-nez p1, :cond_0

    const-string p1, "editorViewDragLayout"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getPageScroller()Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->setEnabledBySceneFeature(Z)V

    return-void
.end method

.method public final onNoteShapeChangedEvent(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getAddShapeList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->c(Ljava/util/List;)V

    return-void
.end method

.method public final onRotatePageBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageBeginEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->i:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/universal/R$string;->rotateing:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->i:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final onRotatePageEndEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEndEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEndEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->i:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->i:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    return-void
.end method

.method public final onShowImportSuccessDialog(Lcom/onyx/android/sdk/universal/editor/events/app/ShowImportSuccessEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ShowImportSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ShowImportSuccessEvent;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/ImportSuccessDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final onShowNotePageToastEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ShowNotePageToastEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ShowNotePageToastEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->e()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ShowNotePageToastEvent;->getState()Lcom/onyx/android/sdk/universal/editor/bean/CopyState;

    move-result-object p0

    instance-of p1, p0, Lcom/onyx/android/sdk/universal/editor/bean/CloneState$Success;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$string;->option_page_copied:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lcom/onyx/android/sdk/universal/editor/bean/PasteState$Success;

    if-eqz p0, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$string;->option_page_pasted:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p0, v1, v2, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final onToggleNotePageLoadingEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;->isShow()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->e()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getActivityHelper()Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/helper/ActivityHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ToggleNotePageLoadingEvent;->getState()Lcom/onyx/android/sdk/universal/editor/bean/CopyState;

    move-result-object p1

    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/bean/CloneState$InProgress;

    if-eqz v1, :cond_0

    sget p1, Lcom/onyx/galaxy/note/R$string;->option_clone_in_progress:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lcom/onyx/android/sdk/universal/editor/bean/PasteState$InProgress;

    if-eqz p1, :cond_1

    sget p1, Lcom/onyx/galaxy/note/R$string;->option_page_pasting:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->i:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->e()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    new-instance v6, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getPageCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getViewport()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getViewportLimitRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isVerticalLayoutType(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getScrollerGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;ZI)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->f:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    if-nez p0, :cond_1

    const-string p0, "editorViewDragLayout"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    sget v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->k:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->setToolBarRectWidth(I)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->l:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->setRightSideBarRect(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->setLeftSideBarRect(Landroid/graphics/Rect;)V

    sget v0, Lcom/onyx/galaxy/note/editor/handler/PageEventHandler;->n:F

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->setContainerTranslationX(F)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->refreshPageScrollerLayout()V

    invoke-virtual {p0, v6}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->updateScrollerViewData(Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->currentPageIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getPageCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->updatePageNum(II)V

    return-void
.end method
