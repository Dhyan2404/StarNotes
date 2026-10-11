.class public final Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->v()V
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
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,567:1\n277#2,2:568\n277#2,2:570\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1\n*L\n129#1:568,2\n130#1:570,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;",
        "onBind",
        "",
        "holder",
        "position",
        "",
        "item",
        "onCreate",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchNoteAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,567:1\n277#2,2:568\n277#2,2:570\n*S KotlinDebug\n*F\n+ 1 SearchNoteAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1\n*L\n129#1:568,2\n130#1:570,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;

    check-cast p3, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;ILcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;ILcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;->groupNoteThumbnail:Landroidx/constraintlayout/widget/Group;

    const-string v0, "groupNoteThumbnail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;->groupNoteThumbnailLand:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupNoteThumbnailLand"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, p1, v0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->access$loadNoteCover(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    .line 7
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SearchNoteEntity;->getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;->access$highLightKeyword(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionTitleVH$1;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;
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
    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$SectionTitleVH;-><init>(Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTitleBinding;)V

    return-object p1
.end method
