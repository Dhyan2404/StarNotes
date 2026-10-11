.class public final synthetic Lcom/sunia/HTREnginev2/gji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/ImportUserManualNoteAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/action/import/ImportUserManualNoteAction;Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gji;->e:Lcom/onyx/galaxy/note/category/action/import/ImportUserManualNoteAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gji;->f:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gji;->e:Lcom/onyx/galaxy/note/category/action/import/ImportUserManualNoteAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gji;->f:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/action/import/ImportUserManualNoteAction;->l(Lcom/onyx/galaxy/note/category/action/import/ImportUserManualNoteAction;Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;Z)V

    return-void
.end method
