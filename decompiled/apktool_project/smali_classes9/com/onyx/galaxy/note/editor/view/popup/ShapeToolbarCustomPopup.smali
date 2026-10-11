.class public final Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeToolbarCustomPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolbarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n1603#2,9:243\n1855#2:252\n1856#2:254\n1612#2:255\n766#2:256\n857#2,2:257\n1603#2,9:259\n1855#2:268\n1856#2:270\n1612#2:271\n1#3:253\n1#3:269\n*S KotlinDebug\n*F\n+ 1 ShapeToolbarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup\n*L\n195#1:243,9\n195#1:252\n195#1:254\n195#1:255\n195#1:256\n195#1:257,2\n196#1:259,9\n196#1:268\n196#1:270\n196#1:271\n195#1:253\n196#1:269\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010 \u001a\u00020\u001c\u0012\u0006\u0010:\u001a\u000209\u00a2\u0006\u0004\u0008;\u0010<J(\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0007J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0010H\u0007J\u0008\u0010\u0012\u001a\u00020\u0008H\u0002J\u0008\u0010\u0013\u001a\u00020\u0008H\u0002J\u0008\u0010\u0006\u001a\u00020\u0008H\u0002J\u0008\u0010\u0014\u001a\u00020\u0008H\u0002J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0008\u0010\u0018\u001a\u00020\u0008H\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\u0019\u001a\u00020\u0008H\u0002J\u0008\u0010\u001a\u001a\u00020\u0008H\u0002J\u0008\u0010\u001b\u001a\u00020\u0008H\u0002R\u0017\u0010 \u001a\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010&\u001a\u00020!8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u001b\u0010+\u001a\u00020\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010#\u001a\u0004\u0008)\u0010*R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010#\u001a\u0004\u0008.\u0010/R\u0016\u00102\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u00101R\u0014\u00103\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u00101R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u00105\u00a8\u0006="
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Landroid/view/View;",
        "parent",
        "",
        "gravity",
        "x",
        "y",
        "",
        "showAtLocation",
        "dismiss",
        "Lcom/onyx/galaxy/note/editor/event/ToolbarItemDisableEvent;",
        "event",
        "onToolbarItemDisableEvent",
        "Lcom/onyx/galaxy/note/editor/event/ToolbarItemEnableEvent;",
        "onToolbarItemEnableEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;",
        "onConfigurationChangedEvent",
        "p",
        "q",
        "v",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;",
        "toolbarData",
        "w",
        "B",
        "u",
        "A",
        "z",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;",
        "r",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;",
        "s",
        "o",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;",
        "toolbarEnabledItemAdapter",
        "Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarDisabledItemAdapter;",
        "t",
        "n",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarDisabledItemAdapter;",
        "toolbarDisabledItemAdapter",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;",
        "shapeToolbarData",
        "oldToolbarData",
        "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;",
        "Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;",
        "quickDragAndSwipe",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V",
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
        "SMAP\nShapeToolbarCustomPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolbarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n1603#2,9:243\n1855#2:252\n1856#2:254\n1612#2:255\n766#2:256\n857#2,2:257\n1603#2,9:259\n1855#2:268\n1856#2:270\n1612#2:271\n1#3:253\n1#3:269\n*S KotlinDebug\n*F\n+ 1 ShapeToolbarCustomPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup\n*L\n195#1:243,9\n195#1:252\n195#1:254\n195#1:255\n195#1:256\n195#1:257,2\n196#1:259,9\n196#1:268\n196#1:270\n196#1:271\n195#1:253\n196#1:269\n*E\n"
    }
.end annotation


# instance fields
.field public final q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->r:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$toolbarEnabledItemAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$toolbarEnabledItemAdapter$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->s:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$toolbarDisabledItemAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$toolbarDisabledItemAdapter$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->t:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShapeToolbarData()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    new-instance p1, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->v:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    new-instance p1, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    invoke-direct {p1}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;-><init>()V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setDragMoveFlags(I)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->w:Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/common/events/PopupShowStateEvent;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/onyx/android/sdk/universal/common/events/PopupShowStateEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V

    invoke-virtual {p0, p3, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setMask(ZLkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->q()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->p()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->B()V

    return-void
.end method

.method public static final synthetic access$getShapeToolbarData$p(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    return-object p0
.end method

.method public static final synthetic access$getToolbarEnabledItemAdapter(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->o()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onCancel(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->v()V

    return-void
.end method

.method public static final synthetic access$onChangeToolbarData(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->w(Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->s(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->t(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->v()V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->x()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->dismiss()V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->y()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getEnabledList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {v3, v2}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->safetyValueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    sget-object v4, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->CUSTOM:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-eq v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getDisabledList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {v4, v3}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->safetyValueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->o()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->n()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarDisabledItemAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->w(Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->B()V

    return-void
.end method

.method public final B()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion;->getDEFAULT_SHAPE_TOOLBAR_DATA()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->tvResetConfig:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->tvResetConfig:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->half_alpha:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->tvResetConfig:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->max_alpha:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/common/events/PopupShowStateEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/common/events/PopupShowStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->r:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    return-object p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final n()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarDisabledItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->t:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarDisabledItemAdapter;

    return-object p0
.end method

.method public final o()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;

    return-object p0
.end method

.method public final onConfigurationChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ConfigurationChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->z()V

    return-void
.end method

.method public final onToolbarItemDisableEvent(Lcom/onyx/galaxy/note/editor/event/ToolbarItemDisableEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ToolbarItemDisableEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ToolbarItemDisableEvent;->getShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->disableTool(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->A()V

    :cond_0
    return-void
.end method

.method public final onToolbarItemEnableEvent(Lcom/onyx/galaxy/note/editor/event/ToolbarItemEnableEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ToolbarItemEnableEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ToolbarItemEnableEvent;->getShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->enableTool(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->A()V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->v:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getEnabledList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getEnabledList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->v:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getDisabledList()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getDisabledList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final q()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/kmm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kmm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->tvApply:Lcom/onyx/android/sdk/ui/MediumTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/lmm;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lmm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->tvResetConfig:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvResetConfig"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/mmm;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/mmm;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final u()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->z()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->enabledList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->enabledList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->o()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->disabledList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->disabledList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->disabledList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->n()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarDisabledItemAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    sget v2, Lcom/onyx/galaxy/note/R$integer;->list_item_drag_duration:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup$initView$listener$1;-><init>(FJLcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->w:Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->enabledList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    const-string v3, "enabledList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->o()Lcom/onyx/galaxy/note/editor/view/adapter/ToolbarEnabledItemAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setDataCallback(Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;->setItemDragListener(Lcom/chad/library/adapter4/dragswipe/listener/OnItemDragListener;)Lcom/chad/library/adapter4/dragswipe/QuickDragAndSwipe;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->A()V

    return-void
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->v:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->w(Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->dismiss()V

    return-void
.end method

.method public final w(Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->saveShapeToolbarData(Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/ShapeToolbarChangeEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/event/ShapeToolbarChangeEvent;-><init>()V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->B()V

    return-void
.end method

.method public final x()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->q:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const-string v1, "click_galaxy_toolbar_setting_0003"

    const-string v2, "click"

    invoke-virtual {v0, p0, v1, v2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportCustomSettingPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->u:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->resetConfig()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->A()V

    return-void
.end method

.method public final z()V
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$fraction;->toolbar_custom_popup_width_percent:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFraction(I)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_528:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->llLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v3, "llLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutWidth(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->llLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenHeight()F

    move-result v2

    sget v3, Lcom/onyx/galaxy/note/R$fraction;->toolbar_custom_popup_height_percent:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFraction(I)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShapeToolbarCustomPopup;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupShapeToolbarCustomBinding;->enabledList:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    const-string v0, "enabledList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenHeight()F

    move-result v0

    sget v2, Lcom/onyx/galaxy/note/R$fraction;->toolbar_custom_popup_list_height_percent:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFraction(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    return-void
.end method
