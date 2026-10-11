.class public final Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cbSel:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final clThumbnail:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivFaceBottom:Lcom/google/android/material/imageview/ShapeableImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivFaceFourthTop:Lcom/google/android/material/imageview/ShapeableImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivFaceSecTop:Lcom/google/android/material/imageview/ShapeableImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivFaceThrTop:Lcom/google/android/material/imageview/ShapeableImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivFaceTop:Lcom/google/android/material/imageview/ShapeableImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivOption:Lcom/onyx/android/sdk/theme/widgets/TintImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivThumbnail:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llTags:Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vClickOpen:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vClickOption:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vDragBottom:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vDragIn:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vDragTop:Lcom/onyx/android/sdk/theme/widgets/TintView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vFolderBottomShadow:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/ImageView;Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/view/View;Landroid/view/View;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/constraintlayout/widget/ConstraintLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/imageview/ShapeableImageView;
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
    .param p9    # Lcom/onyx/android/sdk/theme/widgets/TintImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;
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
    .param p14    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Lcom/onyx/android/sdk/theme/widgets/TintView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/onyx/android/sdk/theme/widgets/TintView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p18    # Lcom/onyx/android/sdk/theme/widgets/TintView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p19    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->cbSel:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    move-object v1, p3

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->clThumbnail:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivFaceBottom:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivFaceFourthTop:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivFaceSecTop:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivFaceThrTop:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivFaceTop:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivOption:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->ivThumbnail:Landroid/widget/ImageView;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->llTags:Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->tvName:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->tvTime:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->vClickOpen:Landroid/view/View;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->vClickOption:Landroid/view/View;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->vDragBottom:Lcom/onyx/android/sdk/theme/widgets/TintView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->vDragIn:Lcom/onyx/android/sdk/theme/widgets/TintView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->vDragTop:Lcom/onyx/android/sdk/theme/widgets/TintView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->vFolderBottomShadow:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;
    .locals 23
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    sget v1, Lcom/onyx/galaxy/note/R$id;->cb_sel:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    if-eqz v5, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->cl_thumbnail:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v6, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_face_bottom:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_face_fourth_top:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_face_sec_top:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_face_thr_top:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v10, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_face_top:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v11, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_option:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-eqz v12, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_thumbnail:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_tags:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;

    if-eqz v14, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_name:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_time:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    if-eqz v16, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_click_open:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_click_option:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_drag_bottom:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/onyx/android/sdk/theme/widgets/TintView;

    if-eqz v19, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_drag_in:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/onyx/android/sdk/theme/widgets/TintView;

    if-eqz v20, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_drag_top:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/onyx/android/sdk/theme/widgets/TintView;

    if-eqz v21, :cond_0

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_folder_bottom_shadow:I

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_0

    new-instance v1, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v22}, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/imageview/ShapeableImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Landroid/widget/ImageView;Lcom/onyx/galaxy/note/category/view/TagsLinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/view/View;Landroid/view/View;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;Lcom/onyx/android/sdk/theme/widgets/TintView;Landroid/view/View;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;
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
    invoke-static {p0, v0, v1}, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->item_note_list_linear_folder:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ItemNoteListLinearFolderBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
