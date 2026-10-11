.class public final synthetic Lcom/sunia/HTREnginev2/e7m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e7m;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e7m;->e:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->q0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
