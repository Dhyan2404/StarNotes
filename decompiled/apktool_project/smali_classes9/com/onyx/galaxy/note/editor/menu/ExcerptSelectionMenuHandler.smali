.class public final Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;
.super Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u0010\u001a\u00020\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u0012\u001a\u00020\u0006H\u0002J\u0008\u0010\u0013\u001a\u00020\u0006H\u0002R$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;",
        "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "menu",
        "Landroid/view/View;",
        "itemView",
        "",
        "onMenuClick",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;",
        "args",
        "updateExcerptSelection",
        "a",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "c",
        "b",
        "e",
        "f",
        "g",
        "d",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;",
        "setArgs",
        "(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V",
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;",
        "manager",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public b:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V

    return-void
.end method

.method public static final synthetic access$openComment(Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->c(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;

    new-instance v2, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$commentExcerpt$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$commentExcerpt$1;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, p0, v3}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;-><init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getManager()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    if-nez v2, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$Companion;

    new-instance v3, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;

    invoke-direct {v3, p0, p1}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;-><init>(Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$Companion;->delete$default(Lcom/onyx/galaxy/note/editor/view/popup/DocExcerptActionPopup$Companion;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    new-instance v2, Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentEvent;

    new-instance v3, Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;

    invoke-direct {v3, p1}, Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-direct {v2, v3}, Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentEvent;-><init>(Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;)V

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/event/OpenSlideBarEvents;-><init>(Lcom/onyx/galaxy/note/editor/data/SlideBarType;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;-><init>(ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/DismissExcerptPopupEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/DismissExcerptPopupEvent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "excerptCollectionList is empty"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->d()V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getManager()Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;->getMenuView$note_overseasRelease()Lcom/onyx/galaxy/note/editor/menu/PagedSelectionMenu;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getDisplayBundle()Lcom/onyx/android/sdk/universal/editor/DisplayBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/ExcerptJumpModelListPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getExcerptCollectionList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getNoteModelList()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v0, v4, v5, v6}, Lcom/onyx/galaxy/note/editor/view/popup/ExcerptJumpModelListPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestVirtualPage()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/onyx/galaxy/note/common/extension/PopupWindowKt;->showAtShapeTop$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->d()V

    return-void
.end method

.method public final g()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;

    new-instance v2, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$splitScreenShowQuote$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$splitScreenShowQuote$1;-><init>(Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;)V

    const/4 p0, 0x1

    invoke-direct {v1, p0, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitExcerptSelectionEvent;-><init>(ZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public final getArgs()Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    return-object p0
.end method

.method public onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->a()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getExcerptCollectionList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->f(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->g()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->e()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->b(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V

    :goto_0
    return-void
.end method

.method public final setArgs(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    return-void
.end method

.method public updateExcerptSelection(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->updateExcerptSelection(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->b:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    return-void
.end method
