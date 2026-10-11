.class public final Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivLogo:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final layoutIcpContainer:Lcom/onyx/galaxy/note/databinding/IncludeIcpContainerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final starNoteDiscoverContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final startNoteDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final startNoteTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvDiscoverStartNote:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvInformationList:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvPrivacyAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvServiceContact:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvStarNoteBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvStarNoteCopyright:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvUserAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvVersion:Lcom/onyx/galaxy/note/settings/ui/LongPressPalmCollectionTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/onyx/galaxy/note/databinding/IncludeIcpContainerBinding;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/settings/ui/LongPressPalmCollectionTextView;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/galaxy/note/databinding/IncludeIcpContainerBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/onyx/android/sdk/theme/widgets/TintView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
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
    .param p11    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/onyx/galaxy/note/settings/ui/LongPressPalmCollectionTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    iput-object p2, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->bottomContainer:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->ivLogo:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->layoutIcpContainer:Lcom/onyx/galaxy/note/databinding/IncludeIcpContainerBinding;

    iput-object p5, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->starNoteDiscoverContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    iput-object p6, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->startNoteDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    iput-object p7, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->startNoteTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p8, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvDiscoverStartNote:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p9, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvInformationList:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p10, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvPrivacyAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p11, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvServiceContact:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p12, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvStarNoteBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p13, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvStarNoteCopyright:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p14, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvUserAgreement:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iput-object p15, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->tvVersion:Lcom/onyx/galaxy/note/settings/ui/LongPressPalmCollectionTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;
    .locals 19
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/onyx/galaxy/note/R$id;->bottom_container:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_logo:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->layout_icp_container:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/onyx/galaxy/note/databinding/IncludeIcpContainerBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/IncludeIcpContainerBinding;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    sget v1, Lcom/onyx/galaxy/note/R$id;->start_note_divider:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/onyx/android/sdk/theme/widgets/TintView;

    if-eqz v9, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->start_note_title:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v10, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_discover_start_note:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v11, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_information_list:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v12, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_privacy_agreement:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v13, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_service_contact:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v14, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_star_note_back:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_star_note_copyright:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v16, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_user_agreement:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v17, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_version:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/onyx/galaxy/note/settings/ui/LongPressPalmCollectionTextView;

    if-eqz v18, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    move-object v3, v0

    move-object v4, v8

    invoke-direct/range {v3 .. v18}, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;-><init>(Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/onyx/galaxy/note/databinding/IncludeIcpContainerBinding;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/galaxy/note/settings/ui/LongPressPalmCollectionTextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;
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
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->layout_star_note_discover:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutStarNoteDiscoverBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    return-object p0
.end method
