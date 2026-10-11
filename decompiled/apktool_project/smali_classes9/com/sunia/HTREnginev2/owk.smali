.class public final synthetic Lcom/sunia/HTREnginev2/owk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;

.field public final synthetic f:Landroid/net/Uri;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;Landroid/net/Uri;Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/owk;->e:Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/owk;->f:Landroid/net/Uri;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/owk;->g:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/owk;->e:Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/owk;->f:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/owk;->g:Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;->n(Lcom/onyx/galaxy/note/category/action/import/ParseNoteFileFromUriAction;Landroid/net/Uri;Lcom/onyx/android/sdk/universal/editor/action/import/ImportFromNoteFileAction;)V

    return-void
.end method
