.class public final Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0013\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;",
        "listener",
        "setTabListener",
        "",
        "s",
        "o",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "q",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "tabData",
        "r",
        "Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;",
        "tabListener",
        "Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V",
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
.field public final q:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final s:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->q:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup$binding$2;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->s:Lkotlin/Lazy;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->s()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->o()V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->q(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->r(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->p(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;Landroid/view/View;)V

    return-void
.end method

.method public static final p(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->q:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    invoke-interface {p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;->onCloseTab(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->q:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;->UP_DOWN:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->q:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;->LEFT_RIGHT:Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final n()Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->s:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;

    return-object p0
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;->tvCloseNote:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/q2k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/q2k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;->tvUpDownSplit:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/r2k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/r2k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;->tvLeftRightSplit:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/s2k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s2k;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->n()Lcom/onyx/galaxy/note/databinding/PopupTabNoteOptionsBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setTabListener(Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;)Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/NoteTabOptionsPopup;->r:Lcom/onyx/galaxy/note/editor/view/popup/NoteTabManagementPopup$TabManageListener;

    return-object p0
.end method
