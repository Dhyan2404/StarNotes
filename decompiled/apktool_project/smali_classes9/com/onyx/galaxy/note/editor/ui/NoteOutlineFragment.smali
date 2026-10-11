.class public final Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;,
        Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;,
        Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteOutlineFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOutlineFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteOutlineFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,601:1\n1#2:602\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0018\u0000 v2\u00020\u0001:\u0002vwB\u0007\u00a2\u0006\u0004\u0008t\u0010uJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H\u0002J\u0008\u0010\u0014\u001a\u00020\u0004H\u0002J\u0008\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0002H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0008\u0010\u001b\u001a\u00020\u0004H\u0002J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0010\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0008\u0010 \u001a\u00020\u0004H\u0002J\u0011\u0010!\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J#\u0010&\u001a\u00020\u00042\u0006\u0010$\u001a\u00020#2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\n\u0010(\u001a\u0004\u0018\u00010\tH\u0002J$\u00100\u001a\u00020/2\u0006\u0010*\u001a\u00020)2\u0008\u0010,\u001a\u0004\u0018\u00010+2\u0008\u0010.\u001a\u0004\u0018\u00010-H\u0016J\u000e\u00102\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u000eJ\u000e\u00104\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u001cJ\u000e\u00106\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u001cJ\u0010\u00108\u001a\u00020\u00042\u0008\u0008\u0002\u00107\u001a\u00020\u000eJ\u0014\u0010;\u001a\u00020\u00042\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u000409J\u001a\u0010=\u001a\u00020\u00042\u0006\u0010<\u001a\u00020/2\u0008\u0010.\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010@\u001a\u00020\u00042\u0006\u0010?\u001a\u00020>H\u0016J\u0008\u0010A\u001a\u00020\u0004H\u0016J\u0010\u0010D\u001a\u00020\u00042\u0006\u0010C\u001a\u00020BH\u0007J\u0010\u0010F\u001a\u00020\u00042\u0006\u0010C\u001a\u00020EH\u0007J\u0010\u0010H\u001a\u00020\u00042\u0006\u0010C\u001a\u00020GH\u0007J\u0010\u0010J\u001a\u00020\u00042\u0006\u0010C\u001a\u00020IH\u0007J\u0010\u0010L\u001a\u00020\u00042\u0006\u0010C\u001a\u00020KH\u0007J\u0010\u0010N\u001a\u00020\u00042\u0006\u0010C\u001a\u00020MH\u0007J\u0010\u0010P\u001a\u00020\u00042\u0006\u0010C\u001a\u00020OH\u0007J\u0010\u0010R\u001a\u00020\u00042\u0006\u0010C\u001a\u00020QH\u0007R\u001b\u0010X\u001a\u00020S8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010WR\"\u0010_\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R$\u0010g\u001a\u0004\u0018\u00010`8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010d\"\u0004\u0008e\u0010fR\u0016\u00103\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0016\u00105\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008j\u0010iR\u0016\u0010m\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0016\u00107\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008n\u0010lR\u001c\u0010q\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u001c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\u0004098\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008r\u0010s\u00a8\u0006x"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "H0",
        "",
        "J0",
        "C0",
        "R0",
        "",
        "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;",
        "B0",
        "K0",
        "Z0",
        "Q0",
        "",
        "pageIndex",
        "U0",
        "b1",
        "T0",
        "x0",
        "W0",
        "X0",
        "selectionMode",
        "Y0",
        "a1",
        "S0",
        "I0",
        "V0",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "newEditorBundle",
        "P0",
        "t0",
        "M0",
        "w0",
        "()Ljava/lang/Integer;",
        "",
        "eventId",
        "triggerFrom",
        "N0",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "v0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "level",
        "setCurrentVisibleLevel",
        "editorBundle",
        "setEditBundle",
        "docManagerBundle",
        "setDocManagerBundle",
        "switchPageIndex",
        "setSwitchPageIndex",
        "Lkotlin/Function0;",
        "closeAction",
        "setCloseAction",
        "view",
        "onViewCreated",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "onDestroyView",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;",
        "event",
        "onQuitSelectionModeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;",
        "onEnterSelectionModeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;",
        "onSplitScreenShowQuoteEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;",
        "onAllDataSelectedEvent",
        "Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentEvent;",
        "onEditExcerptCommentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;",
        "onNoteTabDataChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;",
        "onEditorBundleChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;",
        "onSidebarVisibleLevelChangedEvent",
        "Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;",
        "d1",
        "Lkotlin/Lazy;",
        "u0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;",
        "binding",
        "e1",
        "Z",
        "getFullScreen",
        "()Z",
        "setFullScreen",
        "(Z)V",
        "fullScreen",
        "Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;",
        "f1",
        "Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;",
        "getEditExcerptCommentArgs",
        "()Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;",
        "setEditExcerptCommentArgs",
        "(Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;)V",
        "editExcerptCommentArgs",
        "g1",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "h1",
        "i1",
        "I",
        "currentVisibleLevel",
        "j1",
        "k1",
        "Ljava/util/List;",
        "tabList",
        "l1",
        "Lkotlin/jvm/functions/Function0;",
        "<init>",
        "()V",
        "Companion",
        "ViewPagerFragmentAdapter",
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
        "SMAP\nNoteOutlineFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOutlineFragment.kt\ncom/onyx/galaxy/note/editor/ui/NoteOutlineFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,601:1\n1#2:602\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static m1:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e1:Z

.field public f1:Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public h1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public i1:I

.field public j1:I

.field public k1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l1:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->Companion:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->DocOverview:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    sput-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->m1:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->d1:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->i1:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->j1:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->k1:Ljava/util/List;

    return-void
.end method

.method public static final A0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->X0()V

    return-void
.end method

.method public static final D0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->toggleDocOverViewThumbnailSize()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->ivThumbSize:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->getImageRes()I

    move-result v1

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/PageThumbnailSizeChangedEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/PageThumbnailSizeChangedEvent;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final E0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->l1:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_0

    const-string p0, "closeAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final F0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/AddEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/AddEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public static final G0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->V0()V

    return-void
.end method

.method public static final L0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->switchViewType:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p1}, Lcom/blankj/utilcode/util/KeyboardUtils;->isSoftInputVisible(Landroid/app/Activity;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic O0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->N0(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCloseAction$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->l1:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getCurrNoteOutlineType(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/galaxy/note/category/data/NoteOutlineType;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->v0()Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentVisibleLevel$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->i1:I

    return p0
.end method

.method public static final synthetic access$getDocManagerBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->h1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getLastOutlineType$cp()Lcom/onyx/galaxy/note/category/data/NoteOutlineType;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->m1:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    return-object v0
.end method

.method public static final synthetic access$reportEvent(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->M0()V

    return-void
.end method

.method public static final synthetic access$setLastOutlineType$cp(Lcom/onyx/galaxy/note/category/data/NoteOutlineType;)V
    .locals 0

    sput-object p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->m1:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    return-void
.end method

.method public static final synthetic access$supportSelectItem(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->S0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$switchToPage(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->U0(I)V

    return-void
.end method

.method public static final synthetic access$updateThumbnailSizeView(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->b1()V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->E0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->L0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;I)V

    return-void
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->z0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->A0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->y0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->G0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->D0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->F0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic setSwitchPageIndex$default(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setSwitchPageIndex(I)V

    return-void
.end method

.method public static final y0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->l1:Lkotlin/jvm/functions/Function0;

    if-nez p1, :cond_0

    const-string p1, "closeAction"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const-string p1, "click_sidebar_fullScreenView_0001"

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->w0()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->N0(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final z0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->W0()V

    return-void
.end method


# virtual methods
.method public final B0()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NoteOutlineType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->H0()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    const-string v3, "editorBundle"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportAddToOutline()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->TOC:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportCreatePageLink()Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->PageBookmark:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public final C0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->b1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->ivThumbSize:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getDocOverViewThumbnailSizeType()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->getImageRes()I

    move-result v1

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->ivThumbSize:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivThumbSize"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/hzj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/hzj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->close:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->close:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "close"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/izj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/izj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->ivAdd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivAdd"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/jzj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/jzj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->switchViewType:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "switchViewType"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/kzj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/kzj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->switchViewType:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->B0()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->k1:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v1, "tabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->k1:Ljava/util/List;

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$5;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$5;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/galaxy/note/common/extension/TabLayoutKt;->addNoteOutlineTabs(Lcom/google/android/material/tabs/TabLayout;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->fullscreenTabLayout:Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->bottomTabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->fullscreenTabLayout:Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;

    const-string v2, "fullscreenTabLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->k1:Ljava/util/List;

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$6;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$6;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/galaxy/note/common/extension/TabLayoutKt;->addFullscreenNoteOutlineTabs(Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->bottomTabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v2, "bottomTabLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->k1:Ljava/util/List;

    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$7;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$7;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    invoke-static {v0, v2, v3}, Lcom/onyx/galaxy/note/common/extension/TabLayoutKt;->addNoteOutlineBottomTabs(Lcom/google/android/material/tabs/TabLayout;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$sideBarTypes$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$sideBarTypes$1;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->tabList(Lcom/google/android/material/tabs/TabLayout;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$8;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$ViewPagerFragmentAdapter;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->j1:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->k1:Ljava/util/List;

    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->m1:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->j1:I

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->j1:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->fullscreenTabLayout:Lcom/onyx/galaxy/note/ui/view/SlideTintTabLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->j1:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->bottomTabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->j1:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_3
    iget v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->j1:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->U0(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->K0()V

    return-void
.end method

.method public final H0()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->h1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->l1:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final I0()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final J0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->C0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->x0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->Q0()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "view_galaxy_sidebar_0001"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->O0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public final K0()V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->unregisterSoftInputChangedListener(Landroid/view/Window;)V

    new-instance v1, Lcom/sunia/HTREnginev2/dzj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dzj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V

    return-void
.end method

.method public final M0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v1, "tabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->getSelectedTab(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v2, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v2, :cond_9

    if-eq v0, v3, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    goto :goto_6

    :cond_3
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    if-eqz v0, :cond_4

    const-string v0, "click_galaxy_excerpt_0006"

    goto :goto_2

    :cond_4
    const-string v0, "click_galaxy_excerpt_0001"

    :goto_2
    invoke-static {p0, v0, v1, v3, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->O0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_6

    :cond_5
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    if-eqz v0, :cond_6

    const-string v0, "click_galaxy_bookmark_0006"

    goto :goto_3

    :cond_6
    const-string v0, "click_galaxy_bookmark_0001"

    :goto_3
    invoke-static {p0, v0, v1, v3, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->O0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_6

    :cond_7
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    if-eqz v0, :cond_8

    const-string v0, "click_galaxy_outline_0003"

    goto :goto_4

    :cond_8
    const-string v0, "click_galaxy_outline_0001"

    :goto_4
    invoke-static {p0, v0, v1, v3, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->O0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_6

    :cond_9
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    if-eqz v0, :cond_a

    const-string v0, "click_galaxy_docsOverview_0004"

    goto :goto_5

    :cond_a
    const-string v0, "click_galaxy_docsOverview_0001"

    :goto_5
    invoke-static {p0, v0, v1, v3, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->O0(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    :goto_6
    return-void
.end method

.method public final N0(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_0

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "trigger_from"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance p2, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {p2, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final P0(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->H0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->t0(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->B0()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->m1:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->m1:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->J0()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->U0(I)V

    :cond_1
    return-void
.end method

.method public final Q0()V
    .locals 3

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->sidebar_title_height_fullscreen:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->titleLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "titleLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->title:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v1, "title"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setBold(Landroid/widget/TextView;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->topDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->bottomDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->R0()V

    const-string v0, "view_sidebar_fullScreenView_0001"

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->w0()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->N0(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final R0()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getScreenDevice()Lcom/onyx/android/sdk/device/IScreen;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/device/IScreen;->isSmallScreen(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->title:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->bottomTabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->fullscreenTabLayoutContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final S0()Z
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->k1:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    if-nez p0, :cond_4

    return v1

    :cond_4
    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->Excerpt:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    return v1
.end method

.method public final T0()Z
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_1

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->j1:I

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final U0(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->j1:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->Y0(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->b1()V

    :cond_1
    return-void
.end method

.method public final V0()V
    .locals 5

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->h1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v3, :cond_1

    const-string v3, "docManagerBundle"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    iget v4, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->j1:I

    invoke-direct {v0, v1, v3, v4}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$switchViewType$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$switchViewType$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->shortTimer(Lkotlin/jvm/functions/Function1;)I

    const-string v0, "click_sidebar_changeView_0001"

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->w0()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->N0(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->v0()Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsFullDocSidebarEvent;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "toLowerCase(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/event/StatisticsFullDocSidebarEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final W0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getTagSafely(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_1

    const-string p0, "editorBundle"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/SelectAllDataEvent;-><init>(Z)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final X0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->I0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->Y0(Z)V

    return-void
.end method

.method public final Y0(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "editorBundle"

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, p0

    :goto_1
    new-instance p0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final Z0()V
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->unregisterSoftInputChangedListener(Landroid/view/Window;)V

    :cond_1
    return-void
.end method

.method public final a1(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->finish:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->S0()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->closeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->finish:Lcom/onyx/android/sdk/ui/MediumTextView;

    sget p1, Lcom/onyx/galaxy/note/R$string;->finish:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->finish:Lcom/onyx/android/sdk/ui/MediumTextView;

    sget p1, Lcom/onyx/galaxy/note/R$string;->select:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public final b1()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->ivThumbSize:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->T0()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final getEditExcerptCommentArgs()Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->f1:Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;

    return-object p0
.end method

.method public final getFullScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    return p0
.end method

.method public final onAllDataSelectedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;->getSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;->getSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->R0()V

    :cond_0
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->Z0()V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->h1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

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
    return-void
.end method

.method public final onEditExcerptCommentEvent(Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v1, "tabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$onEditExcerptCommentEvent$tab$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$onEditExcerptCommentEvent$tab$1;

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->tabList(Lcom/google/android/material/tabs/TabLayout;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->Excerpt:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/google/android/material/tabs/TabLayout$Tab;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentEvent;->getArgs()Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->f1:Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->U0(I)V

    return-void
.end method

.method public final onEditorBundleChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;->getCurrent()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->P0(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public final onEnterSelectionModeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/EnterSelectionModeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->a1(Z)V

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

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->P0(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public final onQuitSelectionModeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/QuitSelectionModeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->a1(Z)V

    return-void
.end method

.method public final onSidebarVisibleLevelChangedEvent(Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/SidebarVisibleLevelChangedEvent;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->setCurrentVisibleLevel(I)V

    return-void
.end method

.method public final onSplitScreenShowQuoteEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowQuoteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->l1:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_0

    const-string p0, "closeAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->H0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->J0()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "editorBundle"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->h1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p1, :cond_1

    const-string p1, "docManagerBundle"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    invoke-static {p2, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_2
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->l1:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setCurrentVisibleLevel(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->i1:I

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->h1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setEditExcerptCommentArgs(Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->f1:Lcom/onyx/galaxy/note/editor/event/EditExcerptCommentArgs;

    return-void
.end method

.method public final setFullScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    return-void
.end method

.method public final setSwitchPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->j1:I

    return-void
.end method

.method public final t0(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 v1, 0x0

    const-string v2, "editorBundle"

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->g1:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    return-object p0
.end method

.method public final v0()Lcom/onyx/galaxy/note/category/data/NoteOutlineType;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v0, "tabLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->getSelectedTab(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    :cond_1
    return-object v0
.end method

.method public final w0()Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v0, "tabLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->getSelectedTab(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_2

    return-object v0

    :cond_2
    sget-object v1, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    const/4 v1, 0x2

    if-eq p0, v1, :cond_5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/4 v1, 0x4

    if-eq p0, v1, :cond_3

    return-object v0

    :cond_3
    const/16 p0, 0x7d3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 p0, 0x7d2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    const/16 p0, 0x7d1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6
    const/16 p0, 0x7d0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final x0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectionLayout:Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->e1:Z

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->finish:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->S0()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->b1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->closeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "closeText"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/ezj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ezj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->selectAll:Lcom/onyx/android/sdk/theme/widgets/TintRadioButton;

    const-string v0, "selectAll"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/fzj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/fzj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->u0()Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->finish:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v0, "finish"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/gzj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/gzj;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method
