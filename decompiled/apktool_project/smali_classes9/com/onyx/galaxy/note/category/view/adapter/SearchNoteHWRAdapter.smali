.class public final Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;
.super Lcom/chad/library/adapter4/BaseDifferAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$Companion;,
        Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseDifferAdapter<",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchNoteHWRAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteHWRAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,71:1\n277#2,2:72\n277#2,2:74\n*S KotlinDebug\n*F\n+ 1 SearchNoteHWRAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter\n*L\n45#1:72,2\n46#1:74,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001a2\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u001a\u001bB\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J&\u0010\t\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014J$\u0010\u000f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0014J\u001c\u0010\u0011\u001a\u00020\u00082\n\u0010\u0004\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0002H\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;",
        "Lcom/chad/library/adapter4/BaseDifferAdapter;",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "entity",
        "o",
        "",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;",
        "t",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;",
        "editorBundleCache",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;)V",
        "Companion",
        "VH",
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
        "SMAP\nSearchNoteHWRAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteHWRAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,71:1\n277#2,2:72\n277#2,2:74\n*S KotlinDebug\n*F\n+ 1 SearchNoteHWRAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter\n*L\n45#1:72,2\n46#1:74,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_LOAD_KEY_UPDATE_HWR_LIST:Ljava/lang/String; = "pay_load_key_update_hwr_list"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final t:Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;->Companion:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundleCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/NoteSearchBeanDiffCallback;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteSearchBeanDiffCallback;-><init>()V

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;->t:Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;

    return-void
.end method


# virtual methods
.method public final n(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getActiveScene()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteScene;->isDraft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/onyx/galaxy/note/R$string;->no_bound_page:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final o(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V
    .locals 11

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;->t:Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;->computeIfAbsent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;

    move-result-object v4

    new-instance p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionPageBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionPageBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v6

    const-string v0, "getRoot(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/view/View;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$a;

    invoke-direct {v7, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$a;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;)V

    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;

    check-cast p3, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;ILcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;ILcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionPageBinding;

    move-result-object p2

    .line 3
    iget-object v0, p2, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionPageBinding;->groupNoteThumbnail:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupNoteThumbnail"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p2, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionPageBinding;->groupNoteThumbnailLand:Landroidx/constraintlayout/widget/Group;

    const-string v2, "groupNoteThumbnailLand"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;->o(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)V

    .line 8
    iget-object p1, p2, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionPageBinding;->tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;->n(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter$VH;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;Landroid/view/ViewGroup;Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionPageBinding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
