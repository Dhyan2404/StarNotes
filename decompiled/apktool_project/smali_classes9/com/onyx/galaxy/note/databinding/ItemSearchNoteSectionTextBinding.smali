.class public final Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clsNote:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final groupNoteThumbnail:Landroidx/constraintlayout/widget/Group;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final groupNoteThumbnailLand:Landroidx/constraintlayout/widget/Group;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivNoteLockThumbnail:Lcom/google/android/material/imageview/ShapeableImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivNoteLockThumbnailLand:Lcom/google/android/material/imageview/ShapeableImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivNoteThumbnail:Lcom/google/android/material/imageview/ShapeableImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivNoteThumbnailLand:Lcom/google/android/material/imageview/ShapeableImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final noteThumbnailBottomShadow:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final noteThumbnailShadow:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final noteThumbnailShadowBottomLand:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final noteThumbnailShadowLand:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rvTexts:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vNoteThumbnailBroder:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vNoteThumbnailLandBroder:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/constraintlayout/widget/Group;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/constraintlayout/widget/Group;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/imageview/ShapeableImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/material/imageview/ShapeableImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/material/imageview/ShapeableImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/material/imageview/ShapeableImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/onyx/android/sdk/theme/widgets/TintTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/onyx/android/sdk/theme/widgets/TintView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/onyx/android/sdk/theme/widgets/TintView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->clsNote:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p3

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->groupNoteThumbnail:Landroidx/constraintlayout/widget/Group;

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->groupNoteThumbnailLand:Landroidx/constraintlayout/widget/Group;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->ivNoteLockThumbnail:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->ivNoteLockThumbnailLand:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->ivNoteThumbnail:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->ivNoteThumbnailLand:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->noteThumbnailBottomShadow:Landroid/view/View;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->noteThumbnailShadow:Landroid/view/View;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->noteThumbnailShadowBottomLand:Landroid/view/View;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->noteThumbnailShadowLand:Landroid/view/View;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->rvTexts:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->vNoteThumbnailBroder:Lcom/onyx/android/sdk/theme/widgets/TintView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->vNoteThumbnailLandBroder:Lcom/onyx/android/sdk/theme/widgets/TintView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;
    .locals 20
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/onyx/galaxy/note/R$id;->cls_note:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->group_note_thumbnail:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->group_note_thumbnail_land:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/Group;

    if-eqz v7, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_note_lock_thumbnail:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_note_lock_thumbnail_land:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_note_thumbnail:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v10, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_note_thumbnail_land:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v11, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->note_thumbnail_bottom_shadow:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->note_thumbnail_shadow:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->note_thumbnail_shadow_bottom_land:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->note_thumbnail_shadow_land:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->rv_texts:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    if-eqz v16, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_name:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v17, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_note_thumbnail_broder:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/onyx/android/sdk/theme/widgets/TintView;

    if-eqz v18, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_note_thumbnail_land_broder:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/onyx/android/sdk/theme/widgets/TintView;

    if-eqz v19, :cond_0

    new-instance v1, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-direct/range {v3 .. v19}, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;-><init>(Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;)V

    return-object v1

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;
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
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->item_search_note_section_text:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemSearchNoteSectionTextBinding;->e:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    return-object p0
.end method
