.class public final Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;
.super Lcom/chad/library/adapter4/BaseDifferAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseDifferAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaterialPaperCategoryAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialPaperCategoryAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1855#2,2:99\n*S KotlinDebug\n*F\n+ 1 MaterialPaperCategoryAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter\n*L\n30#1:99,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00010B\u000f\u0012\u0006\u0010!\u001a\u00020\u001e\u00a2\u0006\u0004\u0008.\u0010/J+\u0010\u000b\u001a\u00020\t2#\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004J\u0006\u0010\u000c\u001a\u00020\tJ\u001e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00052\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\rH\u0014J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\"\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0014J \u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0005H\u0014J\u0012\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0002R\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R3\u0010$\u001a\u001f\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R2\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020&0%j\u0008\u0012\u0004\u0012\u00020&`\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;",
        "Lcom/chad/library/adapter4/BaseDifferAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "position",
        "",
        "callback",
        "setCategoryTitleChange",
        "notifySelectChange",
        "",
        "list",
        "getItemViewType",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "onViewAttachedToWindow",
        "onViewRecycled",
        "item",
        "onBindViewHolder",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "",
        "n",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "t",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "templateViewModel",
        "u",
        "Lkotlin/jvm/functions/Function1;",
        "categoryTitleChange",
        "Ljava/util/ArrayList;",
        "Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;",
        "Lkotlin/collections/ArrayList;",
        "v",
        "Ljava/util/ArrayList;",
        "getList",
        "()Ljava/util/ArrayList;",
        "setList",
        "(Ljava/util/ArrayList;)V",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V",
        "CategoryHolder",
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
        "SMAP\nMaterialPaperCategoryAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaterialPaperCategoryAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1855#2,2:99\n*S KotlinDebug\n*F\n+ 1 MaterialPaperCategoryAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter\n*L\n30#1:99,2\n*E\n"
    }
.end annotation


# instance fields
.field public t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "templateViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/TemplateDiffCallback;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/view/adapter/TemplateDiffCallback;-><init>()V

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->v:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemViewType(ILjava/util/List;)I
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;)I"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result p0

    return p0
.end method

.method public final getList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->v:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final notifySelectChange()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->v:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->notifyPaperSelect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;ILcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;ILcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->n(Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;->getRecycleView()Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientationSafely()I

    move-result v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSourceType()Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    move-result-object p0

    invoke-virtual {v0, p3, v1, p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->loadPaperList(Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;ILcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    .line 6
    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;->setTag(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;->getRecycleView()Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->update()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;
    .locals 1
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/base/data/Orientation;->Companion:Lcom/onyx/android/sdk/base/data/Orientation$Companion;

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/base/data/Orientation$Companion;->isPortrait(I)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/onyx/galaxy/note/R$layout;->item_template_category_vertical:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/onyx/galaxy/note/R$layout;->item_template_category_horizontal:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    :goto_0
    new-instance p2, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->t:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-direct {p2, p1, p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;-><init>(Landroid/view/View;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->v:Ljava/util/ArrayList;

    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;->getRecycleView()Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;->getRecycleView()Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;->getRecycleView()Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->notifyPaperChange()V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->v:Ljava/util/ArrayList;

    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter$CategoryHolder;->getRecycleView()Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCategoryTitleChange(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->u:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;->v:Ljava/util/ArrayList;

    return-void
.end method
