.class public final Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteTabLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTabLayout.kt\ncom/onyx/galaxy/note/editor/view/NoteTabLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,422:1\n350#2,7:423\n*S KotlinDebug\n*F\n+ 1 NoteTabLayout.kt\ncom/onyx/galaxy/note/editor/view/NoteTabLayout\n*L\n344#1:423,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001OB\u001d\u0008\u0016\u0012\u0006\u0010H\u001a\u00020G\u0012\n\u0008\u0002\u0010J\u001a\u0004\u0018\u00010I\u00a2\u0006\u0004\u0008K\u0010LB\'\u0008\u0017\u0012\u0006\u0010H\u001a\u00020G\u0012\n\u0008\u0002\u0010J\u001a\u0004\u0018\u00010I\u0012\u0008\u0008\u0002\u0010M\u001a\u00020\r\u00a2\u0006\u0004\u0008K\u0010NJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0010\u001a\u00020\u0002H\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u000e\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015J\u000e\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001bJ\u0014\u0010\u001f\u001a\u00020\u00022\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001dJ\u0006\u0010 \u001a\u00020\u0002J\u0006\u0010!\u001a\u00020\u0002J\u0010\u0010#\u001a\u00020\u00022\u0008\u0010\"\u001a\u0004\u0018\u00010\u0005J\u0008\u0010$\u001a\u0004\u0018\u00010\u0005J\u000e\u0010#\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u0012J\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001dJ(\u0010+\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020\r2\u0006\u0010(\u001a\u00020\r2\u0006\u0010)\u001a\u00020\r2\u0006\u0010*\u001a\u00020\rH\u0014J\u0018\u0010.\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\rH\u0014J\u000e\u00100\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u0005J\u000e\u00101\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u00020\tR\u0016\u00106\u001a\u0002048\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0010\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010F\u00a8\u0006P"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;",
        "Landroid/widget/FrameLayout;",
        "",
        "q",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "selectedItem",
        "Landroid/view/View;",
        "view",
        "",
        "l",
        "p",
        "m",
        "",
        "pos",
        "k",
        "e",
        "o",
        "",
        "eventId",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "editorBundleManager",
        "setEditorBundleManager",
        "Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;",
        "listener",
        "setNoteTabListener",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;",
        "setDragListener",
        "",
        "list",
        "setDataList",
        "notifyDataSetChanged",
        "freshView",
        "item",
        "setSelectedItem",
        "getSelectedItem",
        "itemId",
        "getDataList",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "changedView",
        "visibility",
        "onVisibilityChanged",
        "tabData",
        "closeTab",
        "showManagementPopup",
        "isGuideShowing",
        "showGuideDivider",
        "Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;",
        "Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;",
        "f",
        "Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;",
        "adapter",
        "Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;",
        "tabListener",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;",
        "dragListenerDelegateListener",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "selectedDragItem",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;",
        "j",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;",
        "noteTabManagementPopup",
        "Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "TabListener",
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
        "SMAP\nNoteTabLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTabLayout.kt\ncom/onyx/galaxy/note/editor/view/NoteTabLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,422:1\n350#2,7:423\n*S KotlinDebug\n*F\n+ 1 NoteTabLayout.kt\ncom/onyx/galaxy/note/editor/view/NoteTabLayout\n*L\n344#1:423,7\n*E\n"
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

.field public f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

.field public g:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->g()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->h(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$closeOtherTab(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->e()V

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    return-object p0
.end method

.method public static final synthetic access$getSelectedDragItem$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->i:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    return-object p0
.end method

.method public static final synthetic access$getTabListener$p(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->g:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;

    return-object p0
.end method

.method public static final synthetic access$onItemSelected(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->m(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    return-void
.end method

.method public static final synthetic access$saveTabList(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->o()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->i(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->j(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static final f(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->g:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;->closedOtherTab(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p3, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->k(ILcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    return-void
.end method

.method public static final i(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->m(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    return-void
.end method

.method public static final j(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->l(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final closeTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tabData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->k(ILcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->k:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;->getOpenDocIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    const-string v3, "adapter"

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_2
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v4, v1

    :goto_1
    invoke-virtual {v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$closeOtherTab$1;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$closeOtherTab$1;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-static {v2, v0, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->removeIf(Ljava/util/Collection;ZLkotlin/jvm/functions/Function1;)Z

    new-instance v0, Lcom/onyx/galaxy/note/category/action/CloseNoteTabListAction;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/action/CloseNoteTabListAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$a;-><init>(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/i2k;

    invoke-direct {v2, p0, v1}, Lcom/sunia/HTREnginev2/i2k;-><init>(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final freshView()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p0, :cond_1

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final g()V
    .locals 8

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isTabOptionShow()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->tabTotal:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/e2k;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/e2k;-><init>(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    sget v3, Lcom/onyx/galaxy/note/R$id;->close:I

    new-instance v4, Lcom/sunia/HTREnginev2/f2k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/f2k;-><init>(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)V

    invoke-virtual {v0, v3, v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    const-string v3, "adapter"

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    new-instance v4, Lcom/sunia/HTREnginev2/g2k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/g2k;-><init>(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)V

    invoke-virtual {v0, v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    new-instance v4, Lcom/sunia/HTREnginev2/h2k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/h2k;-><init>(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)V

    invoke-virtual {v0, v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/google/android/material/divider/MaterialDividerItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v6}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    sget-object v5, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/android/sdk/device/R$dimen;->dp_0:I

    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerThickness(I)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v6, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez v1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->p()V

    return-void
.end method

.method public final getDataList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object p0

    return-object p0
.end method

.method public final k(ILcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->removeItem(ILcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->o()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->g:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;

    if-eqz p0, :cond_8

    invoke-interface {p0, p2}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;->onCloseLastTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->g:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, p2, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;->onCloseTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    :cond_6
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->q()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->o()V

    :cond_8
    :goto_1
    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Landroid/view/View;)Z
    .locals 6

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->i:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "docId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/ClipData;

    const-string v2, "text/*"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "dragTab"

    invoke-direct {v0, v3, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/onyx/galaxy/note/databinding/ItemNoteTabDragBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemNoteTabDragBinding;

    move-result-object p0

    const-string v1, "inflate(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/databinding/ItemNoteTabDragBinding;->setModel(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v3, "getRoot(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteTabDragBinding;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v1, v2, v2, p0, p1}, Landroid/view/View;->layout(IIII)V

    new-instance p0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {p0, v1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const-string p1, "local_state_start_split_screen"

    invoke-static {p2, v0, p0, p1, v2}, Landroidx/core/view/ViewCompat;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->setSelectedItem(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->g:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;->onSelectedChanged(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    :cond_2
    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    const-string p0, "note_id"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final o()V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/category/action/SaveNoteTabListAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/onyx/galaxy/note/category/action/SaveNoteTabListAction;-><init>(Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    if-nez p0, :cond_1

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->setListWidth(I)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->g:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;->onTabVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$setDragListener$1;-><init>(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->e:Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNoteTabBinding;->tabTotal:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p0, :cond_1

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setDataList(Ljava/util/List;)V
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

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->q()V

    return-void
.end method

.method public final setDragListener(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->h:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;

    return-void
.end method

.method public final setEditorBundleManager(Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundleManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->k:Lcom/onyx/android/sdk/universal/editor/view/EditorBundleManager;

    return-void
.end method

.method public final setNoteTabListener(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->g:Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$TabListener;

    return-void
.end method

.method public final setSelectedItem(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->setSelectedItem(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->j:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->setSelectedItem(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    :cond_2
    return-void
.end method

.method public final setSelectedItem(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->setSelectedItem(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->j:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->setSelectedItem(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    :cond_2
    return-void
.end method

.method public final showGuideDivider(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez p0, :cond_0

    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->setShowGuideDivider(Z)V

    return-void
.end method

.method public final showManagementPopup(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    const-string v3, "adapter"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    invoke-virtual {v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez v5, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_1
    invoke-virtual {v5}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_0
    invoke-direct {v0, v1, v2, v5}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->j:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->f:Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteTabAdapter;->getSelectedItem()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->setSelectedItem(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->h:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->setDragListener(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$DragListenerDelegateListener;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout$showManagementPopup$1$1;-><init>(Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->setNoteTabListener(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup;->showAsDropDown(Landroid/view/View;)V

    const-string p1, "click_galaxy_notebar_0001"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteTabLayout;->n(Ljava/lang/String;)V

    return-void
.end method
