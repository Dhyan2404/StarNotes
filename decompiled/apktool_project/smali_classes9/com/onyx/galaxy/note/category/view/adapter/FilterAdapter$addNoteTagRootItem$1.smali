.class public final Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener<",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilterAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,792:1\n256#2,2:793\n256#2,2:795\n*S KotlinDebug\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1\n*L\n347#1:793,2\n348#1:795,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\"\u0010\t\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J \u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u0018\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;",
        "holder",
        "",
        "position",
        "item",
        "",
        "onBind",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreate",
        "",
        "expanded",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFilterAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,792:1\n256#2,2:793\n256#2,2:795\n*S KotlinDebug\n*F\n+ 1 FilterAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1\n*L\n347#1:793,2\n348#1:795,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1;->b(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static final b(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "click_galaxy_tag_0001"

    invoke-static {p1, v2, v0, v1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent$default(Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->access$getViewModel$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoTagRoot()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;Z)V
    .locals 0

    if-eqz p2, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_tree_arrow:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ic_arrow_right:I

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;->ivNoteTagExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    return-void
.end method

.method public bridge synthetic onBind(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;

    check-cast p3, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1;->onBind(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;ILcom/onyx/galaxy/note/category/data/FilterInfo;)V

    return-void
.end method

.method public onBind(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;ILcom/onyx/galaxy/note/category/data/FilterInfo;)V
    .locals 6
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/data/FilterInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    invoke-static {p2}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;->access$getSelectId$p(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 3
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getHasChild()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 5
    :goto_0
    sget-object v2, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter$Companion;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter$Companion;->getNoteTagRootExpandOp()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v2

    .line 6
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;->getViewBinding()Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1;->a:Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    .line 7
    iget-object v5, v3, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;->clsRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v5, p2}, Landroid/view/View;->setSelected(Z)V

    .line 8
    iget-object v5, v3, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;->ivTagRoot:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v5, p2}, Landroid/view/View;->setSelected(Z)V

    .line 9
    iget-object v5, v3, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;->tvTagRoot:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v5, p2}, Landroid/view/View;->setSelected(Z)V

    .line 10
    iget-object p2, v3, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;->tvTagCreateHint:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p2, v1, v0, v0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 11
    iget-object p2, v3, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;->tvTagCreateHint:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvTagCreateHint"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v1, p3, 0x1

    const/16 v5, 0x8

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v5

    .line 12
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p2, v3, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;->ivNoteTagExpand:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivNoteTagExpand"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v5

    .line 14
    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p0, p1, v2}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1;->c(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;Z)V

    .line 16
    iget-object p0, v3, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;->clsRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    new-instance p2, Lcom/sunia/HTREnginev2/olg;

    invoke-direct {p2, v4}, Lcom/sunia/HTREnginev2/olg;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/drag/TagRootDragListener;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/category/view/drag/TagRootDragListener;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$addNoteTagRootItem$1;->onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;
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
    new-instance p0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter$FilterNoteTagRootItemViewHolder;-><init>(Lcom/onyx/galaxy/note/databinding/ItemFilterNoteTagRootBinding;)V

    return-object p0
.end method
