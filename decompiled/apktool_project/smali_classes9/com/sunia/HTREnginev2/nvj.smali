.class public final synthetic Lcom/sunia/HTREnginev2/nvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nvj;->e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nvj;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nvj;->e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nvj;->f:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->p(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Ljava/lang/String;)V

    return-void
.end method
