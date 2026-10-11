.class public final Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001:\u0001PB\u0007\u00a2\u0006\u0004\u0008N\u0010OJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u000eJ\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u000eJ\u000e\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bJ\u0014\u0010 \u001a\u00020\u00042\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001eJ\u0016\u0010%\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#J\u000e\u0010(\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020&J$\u00100\u001a\u00020/2\u0006\u0010*\u001a\u00020)2\u0008\u0010,\u001a\u0004\u0018\u00010+2\u0008\u0010.\u001a\u0004\u0018\u00010-H\u0016J\u001a\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u00020/2\u0008\u0010.\u001a\u0004\u0018\u00010-H\u0016J\u0008\u00103\u001a\u00020\u0004H\u0016J\u0010\u00106\u001a\u00020\u00042\u0006\u00105\u001a\u000204H\u0007J\u0010\u00108\u001a\u00020\u00042\u0006\u00105\u001a\u000207H\u0007J\u0010\u0010:\u001a\u00020\u00042\u0006\u00105\u001a\u000209H\u0007J\u0010\u0010<\u001a\u00020\u00042\u0006\u00105\u001a\u00020;H\u0007R\u001b\u0010B\u001a\u00020=8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010AR\u0018\u0010\'\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010\u0014\u001a\u00020\u000e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0016\u0010\u0016\u001a\u00020\u000e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008G\u0010FR\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u001c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008L\u0010M\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "y0",
        "",
        "w0",
        "u0",
        "v0",
        "p0",
        "t0",
        "s0",
        "dismiss",
        "r0",
        "z0",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "newEditorBundle",
        "o0",
        "",
        "eventId",
        "A0",
        "editorBundle",
        "setEditBundle",
        "docManagerBundle",
        "setDocManagerBundle",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "syncNoteModel",
        "setSyncNoteModel",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "noteTabData",
        "setNoteTabData",
        "Lkotlin/Function0;",
        "closeAction",
        "setCloseAction",
        "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
        "guideInfo",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "dockType",
        "showPageWhiteSpaceGuide",
        "Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;",
        "listener",
        "setListener",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "view",
        "onViewCreated",
        "onDestroyView",
        "Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;",
        "event",
        "onNoteTabDataChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;",
        "onVirtualDocViewInfoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/UpdateTagEvent;",
        "onUpdateTagEvent",
        "Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;",
        "onEditDoneEvent",
        "Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;",
        "binding",
        "e1",
        "Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;",
        "f1",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "g1",
        "h1",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "i1",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "j1",
        "Lkotlin/jvm/functions/Function0;",
        "<init>",
        "()V",
        "NoteDocMoreSettingsListener",
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
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e1:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public h1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

.field public i1:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

.field public j1:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->d1:Lkotlin/Lazy;

    return-void
.end method

.method public static final B0(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$guideInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dockType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$anchorView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$showPageWhiteSpaceGuide$1$1;-><init>(Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->requireContextSafety(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$dismiss(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->dismiss()V

    return-void
.end method

.method public static final synthetic access$getCloseAction$p(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->j1:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->e1:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;

    return-object p0
.end method

.method public static final synthetic access$reportEvent(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->A0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->q0(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->x0(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->B0(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;)V

    return-void
.end method

.method public static final q0(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->titleEdittext:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;->clearFocusIfNeed()V

    return-void
.end method

.method public static final x0(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_docsSetting_0002"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->A0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public final A0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->j1:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_0

    const-string p0, "closeAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    return-object p0
.end method

.method public final o0(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    const-string v2, "editorBundle"

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_3

    if-nez v0, :cond_2

    const-string v0, "docManagerBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-static {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final onEditDoneEvent(Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/EditDoneEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->titleEdittext:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;->commitTitleEdit()V

    return-void
.end method

.method public final onNoteTabDataChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->o0(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;->getNoteTabData()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->i1:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;->getSyncNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->h1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->z0()V

    :cond_0
    return-void
.end method

.method public final onUpdateTagEvent(Lcom/onyx/android/sdk/universal/editor/events/app/UpdateTagEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/UpdateTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->flTagContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;->updateTagEvent()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->y0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->z0()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "editorBundle"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p1, :cond_1

    const-string p1, "docManagerBundle"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    invoke-static {p2, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->notePageSetting:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;->updateView()V

    return-void
.end method

.method public final p0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->rootContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/x1k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->titleEdittext:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->titleEdittext:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->i1:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    if-nez v1, :cond_1

    const-string v1, "noteTabData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;->setNoteTabData(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->titleEdittext:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initEditText$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initEditText$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText;->setListener(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTitleEditText$NoteTitleChangedListener;)V

    return-void
.end method

.method public final r0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->noteCommonSetting:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->noteCommonSetting:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteCommonSetting$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout;->setListener(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteCommonSettingsLayout$NoteCommonSettingListener;)V

    return-void
.end method

.method public final s0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->noteExportSetting:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->noteExportSetting:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_1

    const-string v1, "docManagerBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;->setDocManagerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->noteExportSetting:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteExportSetting$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNoteExportSetting$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;->setListener(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;)V

    return-void
.end method

.method public final setCloseAction(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closeAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->j1:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setDocManagerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "docManagerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setEditBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setListener(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->e1:Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$NoteDocMoreSettingsListener;

    return-void
.end method

.method public final setNoteTabData(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteTabData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->i1:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    return-void
.end method

.method public final setSyncNoteModel(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "syncNoteModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->h1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-void
.end method

.method public final showPageWhiteSpaceGuide(Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/common/data/GuideInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "guideInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dockType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->notePageSetting:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutNotePageSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutNotePageSettingsBinding;->whitespaceAdjustment:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v1, "whitespaceAdjustment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/sunia/HTREnginev2/y1k;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sunia/HTREnginev2/y1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final t0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->notePageSetting:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->notePageSetting:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNotePageSettingsLayout$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment$initNotePageSettingsLayout$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;->setListener(Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$NotePageSettingChangedListener;)V

    return-void
.end method

.method public final u0()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getMoreSettingEvent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->A0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->flTagContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->flTagContainer:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->h1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-nez p0, :cond_1

    const-string p0, "syncNoteModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteTagLayout;->setSyncNoteModel(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public final w0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->i1:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    if-nez v1, :cond_0

    const-string v1, "noteTabData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->setModel(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->p0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->v0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->t0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->s0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->r0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupNoteDocumentMoreSettingsBinding;->ivClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/z1k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/z1k;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->u0()V

    return-void
.end method

.method public final y0()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->f1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->h1:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->i1:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->j1:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final z0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->w0()V

    const-string v0, "view_galaxy_docsSetting_0001"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteSettingMoreFragment;->A0(Ljava/lang/String;)V

    return-void
.end method
