.class public abstract Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final fl:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llCreateCamera:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llCreateFileImport:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llCreateFolder:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llCreateNoBonds:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llCreateNote:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llCreatePicImport:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llQuickly:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llScanner:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llVipContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mQuotaModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final quicklySettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvVipHint:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/onyx/android/sdk/theme/widgets/TintFrameLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->fl:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->llCreateCamera:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->llCreateFileImport:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->llCreateFolder:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->llCreateNoBonds:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->llCreateNote:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->llCreatePicImport:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    iput-object p11, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->llQuickly:Lcom/onyx/galaxy/note/editor/view/PalmCollectionLinearLayout;

    iput-object p12, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->llScanner:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    iput-object p13, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->llVipContainer:Landroid/widget/LinearLayout;

    iput-object p14, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->quicklySettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iput-object p15, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->tvVipHint:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->popup_create_note:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;
    .locals 1
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

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/onyx/galaxy/note/R$layout;->popup_create_note:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v0, Lcom/onyx/galaxy/note/R$layout;->popup_create_note:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;

    return-object p0
.end method


# virtual methods
.method public getQuotaModel()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupCreateNoteBinding;->mQuotaModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    return-object p0
.end method

.method public abstract setQuotaModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;)V
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
