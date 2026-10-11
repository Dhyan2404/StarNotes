.class public final synthetic Lcom/sunia/HTREnginev2/tvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tvj;->e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tvj;->e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->o(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
