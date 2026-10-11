.class public final synthetic Lcom/sunia/HTREnginev2/x0k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x0k;->e:Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/x0k;->f:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/x0k;->e:Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x0k;->f:Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->d(Lcom/onyx/galaxy/note/databinding/LayoutNoteQuotaWarningBinding;Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;Landroid/view/View;)V

    return-void
.end method
