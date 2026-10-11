.class public final Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener<",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000G\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J0\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016J \u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J*\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00022\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBind",
        "",
        "",
        "payloads",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreate",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "model",
        "Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;",
        "viewBinding",
        "e",
        "c",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->d(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->f(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;Landroid/view/View;)V

    return-void
.end method

.method public static final d(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$searchNoteHWRAdapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    sget-object p2, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance p3, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p4

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->access$getSearchType(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object p1

    invoke-direct {p3, p4, p0, p1}, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    invoke-virtual {p2, p3}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;Landroid/view/View;)V
    .locals 7

    const-string p1, "$item"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v6, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->ALL:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v6}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;)V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->access$getEditorBundleCache$p(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    new-instance v1, Lcom/sunia/HTREnginev2/b7m;

    invoke-direct {v1, v0, p0}, Lcom/sunia/HTREnginev2/b7m;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getHwrList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;)V

    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;->rvHwrs:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;->rvHwrs:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p0, p2, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;->rvHwrs:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final e(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;)V
    .locals 8

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;->tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-result-object v4

    const-string v1, "getRoot(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/view/View;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1$a;

    invoke-direct {v4, p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1$a;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;)V

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    iget-object v0, p4, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;->clsNote:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "clsNote"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/a7m;

    invoke-direct {v3, p2}, Lcom/sunia/HTREnginev2/a7m;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;)V

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;

    check-cast p3, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;ILcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;

    check-cast p3, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;ILcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;Ljava/util/List;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;ILcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setUniqueIdTag(Landroid/view/View;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;

    move-result-object p2

    .line 5
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->e(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;)V

    .line 6
    invoke-virtual {p0, p3, p2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->c(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;ILcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;",
            "I",
            "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;ILcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;)V

    return-void

    .line 9
    :cond_0
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    .line 10
    instance-of p2, p0, Ljava/util/Map;

    if-eqz p2, :cond_5

    .line 11
    check-cast p0, Ljava/util/Map;

    const-string p2, "pay_load_key_update_hwr_list"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Ljava/util/List;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object p0, p3

    :goto_0
    if-nez p0, :cond_2

    return-void

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;->rvHwrs:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p2, p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;

    if-eqz p2, :cond_3

    move-object p3, p1

    check-cast p3, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;

    :cond_3
    if-nez p3, :cond_4

    return-void

    .line 13
    :cond_4
    invoke-virtual {p3, p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;
    .locals 0
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

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionHWRVH;-><init>(Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionHwrBinding;)V

    return-object p1
.end method
