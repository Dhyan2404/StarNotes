.class public final synthetic Lcom/sunia/HTREnginev2/qwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

.field public final synthetic g:Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qwk;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qwk;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/qwk;->g:Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qwk;->e:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/qwk;->f:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qwk;->g:Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;->n(Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileIntentAction;)V

    return-void
.end method
