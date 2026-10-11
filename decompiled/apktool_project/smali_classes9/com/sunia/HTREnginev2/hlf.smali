.class public final synthetic Lcom/sunia/HTREnginev2/hlf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/dialog/EditListNoteDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/EditListNoteDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/hlf;->e:Lcom/onyx/galaxy/note/category/view/dialog/EditListNoteDialog;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/hlf;->e:Lcom/onyx/galaxy/note/category/view/dialog/EditListNoteDialog;

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/dialog/EditListNoteDialog;->e(Lcom/onyx/galaxy/note/category/view/dialog/EditListNoteDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
