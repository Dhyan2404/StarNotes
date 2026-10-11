.class public final synthetic Lcom/sunia/HTREnginev2/xii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xii;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xii;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/xii;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xii;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xii;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xii;->g:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;->l(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Ljava/lang/String;)V

    return-void
.end method
