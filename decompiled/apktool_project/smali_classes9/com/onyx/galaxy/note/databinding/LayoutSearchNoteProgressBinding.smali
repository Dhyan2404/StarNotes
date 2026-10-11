.class public final Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cancelButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivSearchingLoading:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progressText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final remainNotesText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final slLoading:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/view/ShadowLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/widget/ImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/ui/view/ShadowLayout;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/ui/view/ShadowLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/galaxy/note/ui/view/ShadowLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;->e:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;->cancelButton:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p3, p0, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;->ivSearchingLoading:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;->progressText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;->remainNotesText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;->slLoading:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;
    .locals 9
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/onyx/galaxy/note/R$id;->cancel_button:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v4, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_searching_loading:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->progress_text:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v6, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$id;->remain_notes_text:I

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v7, :cond_0

    move-object v8, p0

    check-cast v8, Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    new-instance p0, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;

    move-object v2, p0

    move-object v3, v8

    invoke-direct/range {v2 .. v8}, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;-><init>(Lcom/onyx/galaxy/note/ui/view/ShadowLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/widget/ImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/ui/view/ShadowLayout;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;
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
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->layout_search_note_progress:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;->getRoot()Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/onyx/galaxy/note/ui/view/ShadowLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutSearchNoteProgressBinding;->e:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    return-object p0
.end method
