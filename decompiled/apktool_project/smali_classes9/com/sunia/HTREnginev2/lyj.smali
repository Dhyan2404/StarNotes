.class public final synthetic Lcom/sunia/HTREnginev2/lyj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lyj;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lyj;->f:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/lyj;->g:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lyj;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/lyj;->f:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lyj;->g:Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->f(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method
