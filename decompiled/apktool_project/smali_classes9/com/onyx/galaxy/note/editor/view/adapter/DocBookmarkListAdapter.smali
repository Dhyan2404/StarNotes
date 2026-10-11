.class public Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;
.super Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocBookmarkListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocBookmarkListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,334:1\n1855#2,2:335\n372#3,7:337\n*S KotlinDebug\n*F\n+ 1 DocBookmarkListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter\n*L\n79#1:335,2\n194#1:337,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0008\u0016\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001hB\u0017\u0012\u0006\u0010C\u001a\u00020>\u0012\u0006\u0010G\u001a\u00020\u000e\u00a2\u0006\u0004\u0008f\u0010gJ\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\u000b\u001a\u00020\tH\u0002J \u0010\u0010\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J \u0010\u0017\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0002H\u0002J \u0010\u0018\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0004H\u0002J\u0018\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\r\u001a\u00020\u0002H\u0002J\u0018\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\r\u001a\u00020\u0002H\u0002J\u0008\u0010\u001f\u001a\u00020\tH\u0002J\u0014\u0010#\u001a\u00020\t2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0 J\u0014\u0010$\u001a\u00020\t2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00020 J\u0014\u0010\'\u001a\u00020\t2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\t0%J\u000e\u0010)\u001a\u00020\t2\u0006\u0010(\u001a\u00020\u0007J\u0006\u0010*\u001a\u00020\u0007J\u000e\u0010,\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007J\u000e\u0010-\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007J(\u00101\u001a\u00020\t2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010/\u001a\u00020\u00072\u0008\u00100\u001a\u0004\u0018\u00010\u0002H\u0014J&\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u0002042\u0006\u00106\u001a\u00020\u0007H\u0014J\u000e\u0010:\u001a\u00020\t2\u0006\u00109\u001a\u000208J\u0006\u0010;\u001a\u00020\tJ\u0018\u0010<\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u0007H\u0014J\u0018\u0010=\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u0007H\u0014R\u0017\u0010C\u001a\u00020>8\u0006\u00a2\u0006\u000c\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010BR\u0017\u0010G\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010D\u001a\u0004\u0008E\u0010FR\"\u0010L\u001a\u000e\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0H8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010KR\u0016\u0010N\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010MR\u0016\u0010P\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010MR\u001b\u0010V\u001a\u00020Q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010UR\u0018\u0010Y\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u0018\u0010\\\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0018\u0010^\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010]R\"\u0010e\u001a\u00020I8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010d\u00a8\u0006i"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;",
        "Landroid/view/View;",
        "view",
        "",
        "pos",
        "",
        "D",
        "quitEditMode",
        "binding",
        "model",
        "",
        "editing",
        "C",
        "Landroid/widget/ImageView;",
        "imageView",
        "bookmarkModel",
        "z",
        "Landroid/widget/TextView;",
        "textView",
        "y",
        "v",
        "s",
        "Landroid/widget/EditText;",
        "editText",
        "B",
        "edittext",
        "t",
        "quitEditAndSave",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "list",
        "setVirtualPageList",
        "setBookmarkList",
        "Lkotlin/Function0;",
        "callback",
        "setEditFocusCallback",
        "index",
        "setCurrentIndex",
        "getCurrentIndex",
        "newPosition",
        "clearLastFocus",
        "enterEditMode",
        "holder",
        "position",
        "item",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "Landroid/graphics/Rect;",
        "areaRect",
        "setListAreaRect",
        "commitTitleEdit",
        "onItemChildClick",
        "onItemChildLongClick",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "A",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Z",
        "getFullscreen",
        "()Z",
        "fullscreen",
        "",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
        "Ljava/util/Map;",
        "pageDataMap",
        "I",
        "currentIndex",
        "E",
        "editingIndex",
        "Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;",
        "F",
        "Lkotlin/Lazy;",
        "u",
        "()Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;",
        "windowInputManager",
        "G",
        "Landroid/widget/EditText;",
        "currentEditText",
        "H",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
        "currentModel",
        "Landroid/graphics/Rect;",
        "listAreaRect",
        "J",
        "Ljava/lang/String;",
        "getKeyword",
        "()Ljava/lang/String;",
        "setKeyword",
        "(Ljava/lang/String;)V",
        "keyword",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V",
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
        "SMAP\nDocBookmarkListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocBookmarkListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,334:1\n1855#2,2:335\n372#3,7:337\n*S KotlinDebug\n*F\n+ 1 DocBookmarkListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter\n*L\n79#1:335,2\n194#1:337,7\n*E\n"
    }
.end annotation


# instance fields
.field public final A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final B:Z

.field public C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public D:I

.field public E:I

.field public final F:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public G:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public H:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public I:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public J:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->B:Z

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->C:Ljava/util/Map;

    const/4 p1, -0x1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->D:I

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$windowInputManager$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$windowInputManager$2;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->F:Lkotlin/Lazy;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->J:Ljava/lang/String;

    sget v1, Lcom/onyx/galaxy/note/R$id;->more_settings:I

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/i6f;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/i6f;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->addOnDebouncedChildClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;IJLcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method

.method public static final A(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/view/View;)V
    .locals 0

    const-string p1, "$holder"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->moreSettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public static final synthetic access$getPageDataMap$p(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->C:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->w(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->x(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->A(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->r(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/onyx/galaxy/note/R$id;->centerSettingButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->B:Z

    if-eqz v0, :cond_0

    move-object p2, p1

    :cond_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->D(Landroid/view/View;I)V

    return-void
.end method

.method public static final w(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;Landroid/view/View;Z)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$editText"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$model"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->t(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->B(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    :goto_1
    return-void
.end method

.method public static final x(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$editText"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$model"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x6

    if-ne p4, p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->t(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final B(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->G:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->H:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->I:Landroid/graphics/Rect;

    invoke-direct {p2, p0}, Lcom/onyx/android/sdk/universal/common/events/EditFocusEvent;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final C(Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;Z)V
    .locals 1

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->B:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_14:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->title:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p2, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->dividerView:Lcom/onyx/android/sdk/theme/widgets/TintView;

    xor-int/lit8 p1, p3, 0x1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final D(Landroid/view/View;I)V
    .locals 8

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v7, Lcom/onyx/galaxy/note/editor/view/popup/DocBookmarkActionPopup;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->D:I

    iget-boolean v6, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->B:Z

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/DocBookmarkActionPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;IZ)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;ILcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    invoke-virtual {v7, v1}, Lcom/onyx/galaxy/note/editor/view/popup/DocBookmarkActionPopup;->setListener(Lcom/onyx/galaxy/note/editor/view/popup/DocBookmarkActionPopup$ActionListener;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->globalVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    const/4 v6, 0x4

    const/4 p0, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/base/extension/PopupExtKt;->showActionPopup$default(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/graphics/Rect;IIILjava/lang/Object;)V

    return-void
.end method

.method public final clearLastFocus(I)V
    .locals 1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    sget p1, Lcom/onyx/galaxy/note/R$id;->title_edit:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/widget/EditText;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_3
    return-void
.end method

.method public final commitTitleEdit()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->G:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->H:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->H:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->t(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    :cond_0
    return-void
.end method

.method public final enterEditMode(I)V
    .locals 1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->u()Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->enterAdjustResizeSoftInput()V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final getCurrentIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->D:I

    return p0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getFullscreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->B:Z

    return p0
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->J:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V
    .locals 5
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->D:I

    if-ne v4, p2, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    invoke-virtual {v3, p3}, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->setModel(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    .line 5
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    invoke-virtual {v3}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_3

    sget v4, Lcom/onyx/galaxy/note/R$drawable;->bg_stroke_primary:I

    goto :goto_2

    :cond_3
    sget v4, Lcom/onyx/galaxy/note/R$drawable;->selector_doc_overview_item_bg:I

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->moreSettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-boolean v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->B:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 8
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->centerSettingButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-boolean v4, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->B:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 9
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isSelectionMode()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    .line 10
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->checkbox:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isItemSelected(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 11
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->centerSettingButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v4, Lcom/sunia/HTREnginev2/l6f;

    invoke-direct {v4, p1}, Lcom/sunia/HTREnginev2/l6f;-><init>(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 13
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->title:Landroid/widget/TextView;

    const-string v2, "title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->y(Landroid/widget/TextView;ILcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    .line 15
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    const-string v2, "getBinding(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    invoke-virtual {p0, v1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->v(Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;ILcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    .line 16
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    invoke-virtual {p0, p2, p3, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->C(Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;Z)V

    .line 17
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->image:Landroid/widget/ImageView;

    const-string p2, "image"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->z(Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p1
.end method

.method public onItemChildClick(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->quitEditAndSave()V

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onItemChildClick(Landroid/view/View;I)V

    return-void
.end method

.method public onItemChildLongClick(Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->quitEditAndSave()V

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onItemChildLongClick(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public final quitEditAndSave()V
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/onyx/galaxy/note/R$id;->title_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->t(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->quitEditMode()V

    return-void
.end method

.method public final quitEditMode()V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$quitEditMode$1;

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$quitEditMode$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;I)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->requireRecyclerViewSafety(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->u()Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;->backToPreviousSoftInput()V

    return-void
.end method

.method public final s(Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;)V
    .locals 1

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$bindCharLengthListener$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$bindCharLengthListener$1;-><init>(Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->setTextChangeCallback(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final setBookmarkList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final setCurrentIndex(I)V
    .locals 1

    iput p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->D:I

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final setEditFocusCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 0
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

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->J:Ljava/lang/String;

    return-void
.end method

.method public final setListAreaRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "areaRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->I:Landroid/graphics/Rect;

    return-void
.end method

.method public final setVirtualPageList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->Companion:Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel$Companion;->fromVirtualPageList(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->C:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(Landroid/widget/EditText;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V
    .locals 2

    iget v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/UpdateBookmarkEvent;

    invoke-direct {v1, p2}, Lcom/onyx/android/sdk/universal/editor/events/app/UpdateBookmarkEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->quitEditMode()V

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$commitTitleEdit$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$commitTitleEdit$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->requireRecyclerViewSafety(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final u()Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->F:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/common/keyboard/WindowSoftInputManager;

    return-object p0
.end method

.method public final v(Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;ILcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V
    .locals 4

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->titleEditContainer:Lcom/google/android/material/textfield/TextInputLayout;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->countText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    if-ne v1, p2, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->s(Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;)V

    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->titleEdit:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    const-string v0, "titleEdit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setRawInputType(I)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/sunia/HTREnginev2/j6f;

    invoke-direct {v0, p0, p2, p3}, Lcom/sunia/HTREnginev2/j6f;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/sunia/HTREnginev2/k6f;

    invoke-direct {v0, p0, p2, p3}, Lcom/sunia/HTREnginev2/k6f;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p0, p1, Lcom/onyx/galaxy/note/databinding/ItemDocBookmarkBinding;->titleEditContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postToShowInputKeyboardWithDelay(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final y(Landroid/widget/TextView;ILcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V
    .locals 10

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    sget p3, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_03:I

    invoke-static {p3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    sget p3, Lcom/onyx/galaxy/note/R$string;->no_key_description:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_2
    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_01:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/SpanUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/SpanUtils;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->J:Ljava/lang/String;

    sget p3, Lcom/onyx/android/sdk/skin/R$color;->theme_text_color_highlight_01:I

    invoke-static {p3}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/base/utils/SpanUtils;->highLightKeyword$default(Lcom/onyx/android/sdk/base/utils/SpanUtils;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Landroid/text/SpannableString;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->E:I

    if-eq p0, p2, :cond_3

    move v1, v2

    :cond_3
    invoke-static {p1, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final z(Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V
    .locals 11

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->C:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v10, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->A:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getPageIndex()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, v10

    move-object v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILjava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->note_item_bookmark_width:I

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->note_item_bookmark_height:I

    invoke-virtual {p2, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;->getPageDisplayRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2, v1, p2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToPageByOrientation(Landroid/graphics/RectF;FF)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, p2, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSwipeAbleDifferAdapter;->isScrollBarDragging()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_holder_logo:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {p1}, Lcom/onyx/galaxy/note/common/glide/GlideApp;->with(Landroid/view/View;)Lcom/onyx/galaxy/note/common/glide/GlideRequests;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/glide/GlideRequests;->load(Ljava/lang/Object;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/glide/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/onyx/galaxy/note/common/glide/GlideRequest;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
