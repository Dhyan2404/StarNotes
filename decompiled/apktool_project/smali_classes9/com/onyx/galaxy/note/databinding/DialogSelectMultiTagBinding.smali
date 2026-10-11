.class public final Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cancelButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final currentTagTitleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final doneButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final emptyBinding:Lcom/onyx/galaxy/note/databinding/EmptyViewSelectMultiTagBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final multiTagLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final parentSizeView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectAllButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectAllText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectScopeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectUnclassifiedButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final treeLayout:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final treeListView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final unclassifiedIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final unclassifiedLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final unclassifiedText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/databinding/EmptyViewSelectMultiTagBinding;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Landroid/view/View;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/galaxy/note/databinding/EmptyViewSelectMultiTagBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/onyx/android/sdk/theme/widgets/TintImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/onyx/android/sdk/theme/widgets/TintImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/onyx/android/sdk/theme/widgets/TintImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->cancelButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p3

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->currentTagTitleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->doneButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->emptyBinding:Lcom/onyx/galaxy/note/databinding/EmptyViewSelectMultiTagBinding;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->multiTagLayout:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->parentSizeView:Landroid/view/View;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->selectAllButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->selectAllText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->selectScopeText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->selectUnclassifiedButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->titleText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->treeLayout:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->treeListView:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->unclassifiedIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->unclassifiedLayout:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->unclassifiedText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;
    .locals 21
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/onyx/galaxy/note/R$id;->cancelButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v5, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->currentTagTitleText:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v6, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->doneButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v7, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->emptyBinding:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/onyx/galaxy/note/databinding/EmptyViewSelectMultiTagBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/EmptyViewSelectMultiTagBinding;

    move-result-object v8

    move-object v9, v0

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    sget v1, Lcom/onyx/galaxy/note/R$id;->parentSizeView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->selectAllButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-eqz v11, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->selectAllText:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v12, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->selectScopeText:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v13, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->selectUnclassifiedButton:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-eqz v14, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->titleText:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->treeLayout:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    if-eqz v16, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->treeListView:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v17, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->unclassifiedIcon:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-eqz v18, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->unclassifiedLayout:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    if-eqz v19, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->unclassifiedText:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v20, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;

    move-object v3, v0

    move-object v4, v9

    invoke-direct/range {v3 .. v20}, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;-><init>(Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/databinding/EmptyViewSelectMultiTagBinding;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Landroid/view/View;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_select_multi_tag:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectMultiTagBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    return-object p0
.end method
