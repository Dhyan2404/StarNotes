.class public final Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;,
        Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;,
        Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0003789B)\u0012\u0006\u00104\u001a\u000203\u0012\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000c0 \u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0004\u00085\u00106J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0014\u0010\u000e\u001a\u00020\u00042\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u0010\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cJ\u0012\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0016J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002J\u0008\u0010\u0014\u001a\u00020\u0004H\u0002J\u0008\u0010\u0015\u001a\u00020\u0004H\u0002J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0018\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002J\u0018\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0002R\u001c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000c0 8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0018\u0010%\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010$R\u001b\u0010*\u001a\u00020&8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\'\u001a\u0004\u0008(\u0010)R\u0018\u0010-\u001a\u00060+R\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010,R\u0018\u0010/\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101\u00a8\u0006:"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;",
        "listener",
        "",
        "setNoteTabListener",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;",
        "setDragListener",
        "Landroid/view/View;",
        "view",
        "setContentView",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "list",
        "submitList",
        "item",
        "setSelectedItem",
        "anchor",
        "showAsDropDown",
        "B",
        "u",
        "x",
        "",
        "E",
        "G",
        "s",
        "Landroid/view/ViewGroup;",
        "parent",
        "r",
        "",
        "eventId",
        "F",
        "",
        "q",
        "Ljava/util/List;",
        "tabList",
        "Ljava/lang/String;",
        "noteId",
        "Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;",
        "Lkotlin/Lazy;",
        "t",
        "()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;",
        "tabAdapter",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;",
        "tabListener",
        "v",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;",
        "dragListenerDelegateListener",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V",
        "DragListenerDelegateListener",
        "a",
        "TabManageListener",
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
.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->q:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->r:Ljava/lang/String;

    .line 5
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->s:Lkotlin/Lazy;

    .line 6
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    .line 7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->B()V

    const-string p1, "view_galaxy_notekbar_0002"

    .line 8
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->F(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static final A(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->E(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final C(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->flContentWrapper:Landroid/widget/FrameLayout;

    const-string v0, "flContentWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->v:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;

    if-eqz p0, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;->onDragData(Landroid/view/DragEvent;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final D(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final synthetic access$closeSelfOnOnlyOneTab(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->s()V

    return-void
.end method

.method public static final synthetic access$getTabAdapter$p(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    return-object p0
.end method

.method public static final synthetic access$getTabListener$p(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;

    return-object p0
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->w(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->C(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->y(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->z(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->D(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->v(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->A(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static final v(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;->onCloseOtherTab()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    const-string p1, "click_galaxy_notekbar_0003"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->F(Ljava/lang/String;)V

    return-void
.end method

.method public static final w(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->toggleTabShowOption()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;->onToggleTabVisibility()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    const-string p1, "click_galaxy_notebar_0002"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->F(Ljava/lang/String;)V

    return-void
.end method

.method public static final y(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;->l()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object p2

    iget-object p3, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    invoke-virtual {p3, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;->m(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;->onSelectedChanged(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    :cond_1
    return-void
.end method

.method public static final z(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->G(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->u()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->x()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->flContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/m2k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/m2k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->flContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/n2k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n2k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final E(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Landroid/view/View;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "docId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ClipData;

    const-string v2, "text/*"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    const-string v0, "dragTab"

    invoke-direct {v1, v0, v2, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->r(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, v0}, Landroid/view/View;->layout(IIII)V

    new-instance p1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p1, p0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const-string p0, "local_state_start_split_screen"

    invoke-static {p2, v1, p1, p0, v2}, Landroidx/core/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final F(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->r:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final G(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$showMoreOption$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$showMoreOption$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->setTabListener(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;)Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p1, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/onyx/galaxy/note/databinding/ItemNoteTabManagementBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemNoteTabManagementBinding;

    move-result-object p0

    const-string p2, "inflate(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/databinding/ItemNoteTabManagementBinding;->setModel(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteTabManagementBinding;->more:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setDragListener(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->v:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;

    return-void
.end method

.method public final setNoteTabListener(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->u:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;

    return-void
.end method

.method public final setSelectedItem(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;->m(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->listview:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$setSelectedItem$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$setSelectedItem$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget v0, Lcom/onyx/galaxy/note/R$style;->popupWindowLeftAnimation:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/onyx/galaxy/note/R$style;->popupWindowRightAnimation:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->flContentWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->flContentWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->flContentWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method public final submitList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->q:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    check-cast p1, Ljava/util/Collection;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->q:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    return-object p0
.end method

.method public final u()V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getTabShowOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$string;->hide_note_tab:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$string;->show_note_tab:I

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->toggleTab:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->closeTab:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/o2k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o2k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->toggleTab:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/p2k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p2k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->llTabsOperations:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->q:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final x()V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->listViewContainer:Lcom/onyx/galaxy/note/common/view/MaxHeightFrameLayout;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_316:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/galaxy/note/common/view/MaxHeightFrameLayout;->setMaxHeight(F)V

    iget-object v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    iget-object v3, v0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->q:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object v4, v0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/sunia/HTREnginev2/j2k;

    invoke-direct {v7, v0}, Lcom/sunia/HTREnginev2/j2k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v10, v0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    sget v11, Lcom/onyx/galaxy/note/R$id;->more:I

    const-wide/16 v12, 0x0

    new-instance v14, Lcom/sunia/HTREnginev2/k2k;

    invoke-direct {v14, v0}, Lcom/sunia/HTREnginev2/k2k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v1, v0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    new-instance v3, Lcom/sunia/HTREnginev2/l2k;

    invoke-direct {v3, v0}, Lcom/sunia/HTREnginev2/l2k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->listview:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->listview:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    iget-object v3, v0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$a;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->t()Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;

    move-result-object v1

    iget-object v3, v1, Lcom/onyx/galaxy/note/databinding/PopupTabManagmentBinding;->listview:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    const-string v1, "listview"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->addMaterialItemDecoration$default(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;IIZILjava/lang/Object;)V

    return-void
.end method
