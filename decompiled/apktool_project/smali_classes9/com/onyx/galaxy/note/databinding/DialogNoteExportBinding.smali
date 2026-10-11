.class public abstract Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final bitmapPdf:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final exportTypeContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final exportWithBackground:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final formatDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final formatWaringDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final formatWaringDescContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageFile:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivBitmapPdf:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivImageFile:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivNoteFile:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ivVectorPdf:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llExportPages:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mModel:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final noteFile:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final savePath:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tilName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvBitmapPdf:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvExport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvExportPages:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvImageFile:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvNoteFile:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvShare:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvVectorPdf:Lcom/onyx/android/sdk/theme/widgets/TintTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vectorPdf:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Lcom/onyx/android/sdk/theme/widgets/TintTextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->bitmapPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p5

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->exportTypeContainer:Landroid/widget/LinearLayout;

    move-object v1, p6

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->exportWithBackground:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    move-object v1, p7

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->formatDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p8

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->formatWaringDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object v1, p9

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->formatWaringDescContainer:Landroid/widget/LinearLayout;

    move-object v1, p10

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->imageFile:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p11

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->ivBitmapPdf:Landroid/widget/ImageView;

    move-object v1, p12

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->ivImageFile:Landroid/widget/ImageView;

    move-object v1, p13

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->ivNoteFile:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->ivVectorPdf:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->llExportPages:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->noteFile:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->savePath:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tilName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvBitmapPdf:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvExport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvExportPages:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvImageFile:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvNoteFile:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvShare:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvVectorPdf:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->vectorPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_note_export:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;
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

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_note_export:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;
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
    sget v0, Lcom/onyx/galaxy/note/R$layout;->dialog_note_export:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->mModel:Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;

    return-object p0
.end method

.method public abstract setModel(Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
