.class public Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;
.super Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;


# static fields
.field public static final v0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final w0:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final q0:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final t0:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public u0:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->w0:Landroid/util/SparseIntArray;

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_expand:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_setting:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_library:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_sort_type:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_cloud:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->progress_sync:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->start_sync:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_op_menu:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_op_move:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_op_move:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_op_move:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_op_copy:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_op_copy:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_op_copy:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_op_lock:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_op_lock:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_op_lock:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_op_export:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_op_export:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_op_export:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_op_delete:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_op_delete:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_op_delete:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_toggle_sel_all:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_dust_bin_op_menu:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_dust_bin_op_delete:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_dust_bin_op_delete:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_dust_bin_op_delete:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->ll_dust_bin_op_restore:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->iv_dust_bin_op_restore:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->tv_dust_bin_op_restore:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->barrier1:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->guideline:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->barrier:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->guideline1:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->guideline2:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->v0:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->w0:Landroid/util/SparseIntArray;

    const/16 v2, 0x2d

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 48

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x6

    const/16 v4, 0x2a

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    const/16 v5, 0x28

    aget-object v5, p3, v5

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    const/16 v6, 0x29

    aget-object v6, p3, v6

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    const/16 v7, 0x2b

    aget-object v7, p3, v7

    check-cast v7, Landroidx/constraintlayout/widget/Guideline;

    const/16 v8, 0x2c

    aget-object v8, p3, v8

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    const/16 v9, 0xd

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/FrameLayout;

    const/4 v10, 0x3

    aget-object v10, p3, v10

    check-cast v10, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v11, 0x23

    aget-object v11, p3, v11

    check-cast v11, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v12, 0x26

    aget-object v12, p3, v12

    check-cast v12, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v13, 0x9

    aget-object v13, p3, v13

    check-cast v13, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v14, 0xb

    aget-object v14, p3, v14

    check-cast v14, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v16, 0x5

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    move-object/from16 v15, v16

    const/16 v16, 0x15

    aget-object v16, p3, v16

    check-cast v16, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v17, 0x1e

    aget-object v17, p3, v17

    check-cast v17, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v18, 0x6

    aget-object v18, p3, v18

    check-cast v18, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v19, 0x1b

    aget-object v19, p3, v19

    check-cast v19, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v20, 0x18

    aget-object v20, p3, v20

    check-cast v20, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v21, 0x12

    aget-object v21, p3, v21

    check-cast v21, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v22, 0x4

    aget-object v22, p3, v22

    check-cast v22, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v23, 0xa

    aget-object v23, p3, v23

    check-cast v23, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v24, 0xc

    aget-object v24, p3, v24

    check-cast v24, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v25, 0x22

    aget-object v25, p3, v25

    check-cast v25, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v26, 0x21

    aget-object v26, p3, v26

    check-cast v26, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v27, 0x25

    aget-object v27, p3, v27

    check-cast v27, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v28, 0x14

    aget-object v28, p3, v28

    check-cast v28, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v29, 0x1d

    aget-object v29, p3, v29

    check-cast v29, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v30, 0x1a

    aget-object v30, p3, v30

    check-cast v30, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v31, 0x17

    aget-object v31, p3, v31

    check-cast v31, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v32, 0x10

    aget-object v32, p3, v32

    check-cast v32, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/16 v33, 0x11

    aget-object v33, p3, v33

    check-cast v33, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const/4 v3, 0x1

    aget-object v34, p3, v3

    check-cast v34, Landroid/widget/LinearLayout;

    const/16 v35, 0x2

    aget-object v35, p3, v35

    check-cast v35, Landroid/widget/LinearLayout;

    const/16 v36, 0xe

    aget-object v36, p3, v36

    check-cast v36, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v37, 0xf

    aget-object v37, p3, v37

    check-cast v37, Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/16 v38, 0x24

    aget-object v38, p3, v38

    check-cast v38, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v39, 0x27

    aget-object v39, p3, v39

    check-cast v39, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v40, 0x16

    aget-object v40, p3, v40

    check-cast v40, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v41, 0x1f

    aget-object v41, p3, v41

    check-cast v41, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v42, 0x1c

    aget-object v42, p3, v42

    check-cast v42, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v43, 0x19

    aget-object v43, p3, v43

    check-cast v43, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v44, 0x13

    aget-object v44, p3, v44

    check-cast v44, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v45, 0x7

    aget-object v45, p3, v45

    check-cast v45, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v46, 0x8

    aget-object v46, p3, v46

    check-cast v46, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/16 v47, 0x20

    aget-object v47, p3, v47

    check-cast v47, Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const/4 v3, 0x6

    invoke-direct/range {v0 .. v47}, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/FrameLayout;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Lcom/onyx/android/sdk/theme/widgets/TintImageView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    .line 4
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivDisplayType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivMoreOperate:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpDone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivSelector:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llTitleLeftFunctionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llTitleRightFunctionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 10
    aget-object v0, p3, v0

    check-cast v0, Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->q0:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitleCenter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 14
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 15
    new-instance v0, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/onyx/galaxy/note/generated/callback/OnClickListener;-><init>(Lcom/onyx/galaxy/note/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->t0:Landroid/view/View$OnClickListener;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->mViewModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleMulSelect()V

    :cond_1
    return-void
.end method

.method public executeBindings()V
    .locals 24

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->mViewModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    const-wide/16 v6, 0x7f

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v7, 0x58

    const-wide/16 v9, 0x54

    const-wide/16 v11, 0x52

    const-wide/16 v15, 0x51

    const/16 v17, 0x0

    const/4 v13, 0x0

    if-eqz v6, :cond_22

    and-long v18, v2, v15

    cmp-long v6, v18, v4

    if-eqz v6, :cond_6

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v18

    move-object/from16 v14, v18

    goto :goto_0

    :cond_0
    move-object/from16 v14, v17

    :goto_0
    invoke-virtual {v1, v13, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    goto :goto_1

    :cond_1
    move-object/from16 v14, v17

    :goto_1
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->isGrid()Z

    move-result v14

    goto :goto_2

    :cond_2
    move v14, v13

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v14, :cond_3

    const-wide/16 v19, 0x4000

    goto :goto_3

    :cond_3
    const-wide/16 v19, 0x2000

    :goto_3
    or-long v2, v2, v19

    :cond_4
    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivDisplayType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v14, :cond_5

    sget v14, Lcom/onyx/galaxy/note/R$drawable;->ic_display_grid:I

    goto :goto_4

    :cond_5
    sget v14, Lcom/onyx/galaxy/note/R$drawable;->ic_display_linear:I

    :goto_4
    invoke-static {v6, v14}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_5

    :cond_6
    move-object/from16 v6, v17

    :goto_5
    and-long v19, v2, v11

    cmp-long v14, v19, v4

    const/16 v19, 0x4

    if-eqz v14, :cond_d

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v20

    move-object/from16 v13, v20

    goto :goto_6

    :cond_7
    move-object/from16 v13, v17

    :goto_6
    const/4 v11, 0x1

    invoke-virtual {v1, v11, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_7

    :cond_8
    move-object/from16 v11, v17

    :goto_7
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v14, :cond_a

    if-eqz v11, :cond_9

    const-wide/32 v12, 0x10000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x100000

    goto :goto_8

    :cond_9
    const-wide/32 v12, 0x8000

    or-long/2addr v2, v12

    const-wide/32 v12, 0x80000

    :goto_8
    or-long/2addr v2, v12

    :cond_a
    if-eqz v11, :cond_b

    move/from16 v12, v19

    goto :goto_9

    :cond_b
    const/4 v12, 0x0

    :goto_9
    if-eqz v11, :cond_c

    const/4 v11, 0x0

    goto :goto_a

    :cond_c
    move/from16 v11, v19

    goto :goto_a

    :cond_d
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_a
    and-long v13, v2, v9

    cmp-long v13, v13, v4

    if-eqz v13, :cond_14

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v21

    move-object/from16 v14, v21

    goto :goto_b

    :cond_e
    move-object/from16 v14, v17

    :goto_b
    const/4 v9, 0x2

    invoke-virtual {v1, v9, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_c

    :cond_f
    move-object/from16 v9, v17

    :goto_c
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v13, :cond_11

    if-eqz v9, :cond_10

    const-wide/16 v13, 0x400

    or-long/2addr v2, v13

    const-wide/16 v13, 0x1000

    goto :goto_d

    :cond_10
    const-wide/16 v13, 0x200

    or-long/2addr v2, v13

    const-wide/16 v13, 0x800

    :goto_d
    or-long/2addr v2, v13

    :cond_11
    if-eqz v9, :cond_12

    move/from16 v10, v19

    goto :goto_e

    :cond_12
    const/4 v10, 0x0

    :goto_e
    if-eqz v9, :cond_13

    const/4 v9, 0x0

    goto :goto_f

    :cond_13
    const/16 v9, 0x8

    goto :goto_f

    :cond_14
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_f
    and-long v13, v2, v7

    cmp-long v13, v13, v4

    if-eqz v13, :cond_1a

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isTopLevel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v14

    goto :goto_10

    :cond_15
    move-object/from16 v14, v17

    :goto_10
    const/4 v7, 0x3

    invoke-virtual {v1, v7, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_16

    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    goto :goto_11

    :cond_16
    move-object/from16 v7, v17

    :goto_11
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v13, :cond_18

    if-eqz v7, :cond_17

    const-wide/32 v13, 0x40000

    goto :goto_12

    :cond_17
    const-wide/32 v13, 0x20000

    :goto_12
    or-long/2addr v2, v13

    :cond_18
    if-eqz v7, :cond_19

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/onyx/android/sdk/imagepicker/R$dimen;->dp_24:I

    goto :goto_13

    :cond_19
    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/onyx/android/sdk/skin/R$dimen;->dp_12:I

    :goto_13
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    move v14, v7

    const-wide/16 v7, 0x70

    goto :goto_14

    :cond_1a
    const-wide/16 v7, 0x70

    const/4 v14, 0x0

    :goto_14
    and-long v22, v2, v7

    cmp-long v7, v22, v4

    if-eqz v7, :cond_21

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isHalfInMultiWindowMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_15

    :cond_1b
    move-object/from16 v0, v17

    :goto_15
    const/4 v8, 0x5

    invoke-virtual {v1, v8, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Boolean;

    :cond_1c
    invoke-static/range {v17 .. v17}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v7, :cond_1e

    if-eqz v0, :cond_1d

    const-wide/16 v7, 0x100

    or-long/2addr v2, v7

    const-wide/32 v7, 0x400000

    goto :goto_16

    :cond_1d
    const-wide/16 v7, 0x80

    or-long/2addr v2, v7

    const-wide/32 v7, 0x200000

    :goto_16
    or-long/2addr v2, v7

    :cond_1e
    if-eqz v0, :cond_1f

    const/16 v21, 0x0

    goto :goto_17

    :cond_1f
    const/16 v21, 0x8

    :goto_17
    if-eqz v0, :cond_20

    move/from16 v13, v19

    goto :goto_18

    :cond_20
    const/4 v13, 0x0

    :goto_18
    move/from16 v0, v21

    goto :goto_19

    :cond_21
    const/4 v0, 0x0

    const/4 v13, 0x0

    goto :goto_19

    :cond_22
    move-object/from16 v6, v17

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_19
    and-long v7, v2, v15

    cmp-long v7, v7, v4

    if-eqz v7, :cond_23

    iget-object v7, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivDisplayType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v7, v6}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_23
    const-wide/16 v6, 0x70

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_24

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivDisplayType:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivMoreOperate:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivSelector:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    const-wide/16 v6, 0x40

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpDone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v6, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->t0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_25
    const-wide/16 v6, 0x54

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_26

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->ivOpDone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llTitleRightFunctionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_26
    const-wide/16 v6, 0x52

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->llTitleLeftFunctionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitleCenter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_27
    const-wide/16 v6, 0x58

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/ViewBindingAdapter;->setPaddingStart(Landroid/view/View;F)V

    :cond_28
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x40

    :try_start_0
    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFieldChange(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->t(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->r(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;I)Z

    move-result p0

    return p0

    :cond_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->w(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :cond_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0

    :cond_4
    check-cast p2, Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->v(Landroidx/lifecycle/MediatorLiveData;I)Z

    move-result p0

    return p0

    :cond_5
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->s(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p0

    return p0
.end method

.method public final r(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->setViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBinding;->mViewModel:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final t(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v(Landroidx/lifecycle/MediatorLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteTopContainerBindingImpl;->u0:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
