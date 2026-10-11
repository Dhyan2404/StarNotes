.class public final Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CategoryHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\u0011\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroid/widget/TextView;",
        "H",
        "Landroid/widget/TextView;",
        "getTitle",
        "()Landroid/widget/TextView;",
        "setTitle",
        "(Landroid/widget/TextView;)V",
        "title",
        "Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;",
        "I",
        "Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;",
        "getRecycleView",
        "()Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;",
        "setRecycleView",
        "(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V",
        "recycleView",
        "Landroid/widget/FrameLayout;",
        "J",
        "Landroid/widget/FrameLayout;",
        "getListContainer",
        "()Landroid/widget/FrameLayout;",
        "setListContainer",
        "(Landroid/widget/FrameLayout;)V",
        "listContainer",
        "",
        "K",
        "Ljava/lang/String;",
        "getTag",
        "()Ljava/lang/String;",
        "setTag",
        "(Ljava/lang/String;)V",
        "tag",
        "Landroid/view/View;",
        "itemView",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "templateViewModel",
        "<init>",
        "(Landroid/view/View;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V",
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
.field public H:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public I:Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public J:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public K:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateViewModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->tv_category_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->H:Landroid/widget/TextView;

    sget v0, Lcom/onyx/galaxy/note/R$id;->rl_template_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->I:Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    sget v0, Lcom/onyx/galaxy/note/R$id;->list_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->J:Landroid/widget/FrameLayout;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->K:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->I:Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;->setTemplateViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    return-void
.end method


# virtual methods
.method public final getListContainer()Landroid/widget/FrameLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->J:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final getRecycleView()Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->I:Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->K:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->H:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setListContainer(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->J:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setRecycleView(Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->I:Lcom/onyx/galaxy/note/category/ui/TemplateRecycleView;

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->K:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter$CategoryHolder;->H:Landroid/widget/TextView;

    return-void
.end method
