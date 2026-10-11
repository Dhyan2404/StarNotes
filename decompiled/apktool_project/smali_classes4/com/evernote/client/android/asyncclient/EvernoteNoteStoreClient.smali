.class public Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
.super Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;
.source "SourceFile"


# instance fields
.field public final d:Lcom/evernote/edam/notestore/NoteStore$Client;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/evernote/edam/notestore/NoteStore$Client;Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1    # Lcom/evernote/edam/notestore/NoteStore$Client;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/edam/notestore/NoteStore$Client;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    invoke-static {p2}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authenticateToSharedNote(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->authenticateToSharedNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public authenticateToSharedNoteAsync(Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s1;

    invoke-direct {v0, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public authenticateToSharedNotebook(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->authenticateToSharedNotebook(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public authenticateToSharedNotebookAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/userstore/AuthenticationResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$m1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$m1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public copyNote(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Note;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->copyNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public copyNoteAsync(Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Note;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$l0;

    invoke-direct {v0, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$l0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public createLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/LinkedNotebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public createLinkedNotebookAsync(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$i1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$i1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/LinkedNotebook;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public createNote(Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public createNoteAsync(Lcom/evernote/edam/type/Note;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Note;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Note;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/Note;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public createNotebook(Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public createNotebookAsync(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Notebook;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$a;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$a;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/Notebook;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public createSearch(Lcom/evernote/edam/type/SavedSearch;)Lcom/evernote/edam/type/SavedSearch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)Lcom/evernote/edam/type/SavedSearch;

    move-result-object p0

    return-object p0
.end method

.method public createSearchAsync(Lcom/evernote/edam/type/SavedSearch;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/SavedSearch;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/SavedSearch;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public createSharedNotebook(Lcom/evernote/edam/type/SharedNotebook;)Lcom/evernote/edam/type/SharedNotebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public createSharedNotebookAsync(Lcom/evernote/edam/type/SharedNotebook;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/SharedNotebook;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$b1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$b1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/SharedNotebook;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public createTag(Lcom/evernote/edam/type/Tag;)Lcom/evernote/edam/type/Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->createTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)Lcom/evernote/edam/type/Tag;

    move-result-object p0

    return-object p0
.end method

.method public createTagAsync(Lcom/evernote/edam/type/Tag;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Tag;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Tag;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/Tag;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public deleteNote(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->deleteNote(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteNoteAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$h0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$h0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public emailNote(Lcom/evernote/edam/notestore/NoteEmailParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->emailNote(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteEmailParameters;)V

    return-void
.end method

.method public emailNoteAsync(Lcom/evernote/edam/notestore/NoteEmailParameters;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/NoteEmailParameters;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$p1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$p1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/NoteEmailParameters;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public expungeInactiveNotes()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeInactiveNotes(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public expungeInactiveNotesAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$k0;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$k0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public expungeLinkedNotebook(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeLinkedNotebook(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public expungeLinkedNotebookAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$l1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$l1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public expungeNote(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeNote(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public expungeNoteAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$i0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$i0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public expungeNotebook(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeNotebook(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public expungeNotebookAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public expungeNotes(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeNotes(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public expungeNotesAsync(Ljava/util/List;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$j0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$j0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/util/List;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public expungeSearch(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeSearch(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public expungeSearchAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$p;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$p;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public expungeSharedNotebooks(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeSharedNotebooks(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public expungeSharedNotebooksAsync(Ljava/util/List;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$h1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$h1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/util/List;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public expungeTag(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->expungeTag(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public expungeTagAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$j;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$j;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public findNoteCounts(Lcom/evernote/edam/notestore/NoteFilter;Z)Lcom/evernote/edam/notestore/NoteCollectionCounts;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->findNoteCounts(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Z)Lcom/evernote/edam/notestore/NoteCollectionCounts;

    move-result-object p0

    return-object p0
.end method

.method public findNoteCountsAsync(Lcom/evernote/edam/notestore/NoteFilter;ZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/NoteFilter;",
            "Z",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/notestore/NoteCollectionCounts;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/notestore/NoteCollectionCounts;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$t;

    invoke-direct {v0, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$t;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/NoteFilter;Z)V

    invoke-virtual {p0, v0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public findNoteOffset(Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->findNoteOffset(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public findNoteOffsetAsync(Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/NoteFilter;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r;

    invoke-direct {v0, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/NoteFilter;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public findNotes(Lcom/evernote/edam/notestore/NoteFilter;II)Lcom/evernote/edam/notestore/NoteList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->findNotes(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;II)Lcom/evernote/edam/notestore/NoteList;

    move-result-object p0

    return-object p0
.end method

.method public findNotesAsync(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/NoteFilter;",
            "II",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/notestore/NoteList;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/notestore/NoteList;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$q;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/NoteFilter;II)V

    invoke-virtual {p0, v0, p4}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public findNotesMetadata(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)Lcom/evernote/edam/notestore/NotesMetadataList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/edam/notestore/NoteStore$Client;->findNotesMetadata(Ljava/lang/String;Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)Lcom/evernote/edam/notestore/NotesMetadataList;

    move-result-object p0

    return-object p0
.end method

.method public findNotesMetadataAsync(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/NoteFilter;",
            "II",
            "Lcom/evernote/edam/notestore/NotesMetadataResultSpec;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)V

    invoke-virtual {p0, v6, p5}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public findRelated(Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;)Lcom/evernote/edam/notestore/RelatedResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->findRelated(Ljava/lang/String;Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;)Lcom/evernote/edam/notestore/RelatedResult;

    move-result-object p0

    return-object p0
.end method

.method public findRelatedAsync(Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/RelatedQuery;",
            "Lcom/evernote/edam/notestore/RelatedResultSpec;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/notestore/RelatedResult;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/notestore/RelatedResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$t1;

    invoke-direct {v0, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$t1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/RelatedQuery;Lcom/evernote/edam/notestore/RelatedResultSpec;)V

    invoke-virtual {p0, v0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->getDefaultNotebook(Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultNotebookAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$w1;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$w1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getFilteredSyncChunk(IILcom/evernote/edam/notestore/SyncChunkFilter;)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->getFilteredSyncChunk(Ljava/lang/String;IILcom/evernote/edam/notestore/SyncChunkFilter;)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method

.method public getFilteredSyncChunkAsync(IILcom/evernote/edam/notestore/SyncChunkFilter;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/evernote/edam/notestore/SyncChunkFilter;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/notestore/SyncChunk;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/notestore/SyncChunk;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;IILcom/evernote/edam/notestore/SyncChunkFilter;)V

    invoke-virtual {p0, v0, p4}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getLinkedNotebookSyncChunk(Lcom/evernote/edam/type/LinkedNotebook;IIZ)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/edam/notestore/NoteStore$Client;->getLinkedNotebookSyncChunk(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;IIZ)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method

.method public getLinkedNotebookSyncChunkAsync(Lcom/evernote/edam/type/LinkedNotebook;IIZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "IIZ",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/notestore/SyncChunk;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/notestore/SyncChunk;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/LinkedNotebook;IIZ)V

    invoke-virtual {p0, v6, p5}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getLinkedNotebookSyncState(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getLinkedNotebookSyncState(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0
.end method

.method public getLinkedNotebookSyncStateAsync(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/notestore/SyncState;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/notestore/SyncState;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/LinkedNotebook;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getNote(Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Note;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNote(Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public getNoteApplicationData(Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteApplicationData(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;

    move-result-object p0

    return-object p0
.end method

.method public getNoteApplicationDataAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/LazyMap;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/LazyMap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$w;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$w;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteApplicationDataEntryAsync(Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$x;

    invoke-direct {v0, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$x;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getNoteAsync(Ljava/lang/String;ZZZZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Note;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$u;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$u;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;ZZZZ)V

    invoke-virtual {p0, v7, p6}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getNoteContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteContentAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$a0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$a0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getNoteSearchText(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteSearchText(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoteSearchTextAsync(Ljava/lang/String;ZZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$b0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$b0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v0, p4}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getNoteTagNames(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteTagNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNoteTagNamesAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$d0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$d0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getNoteVersion(Ljava/lang/String;IZZZ)Lcom/evernote/edam/type/Note;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNoteVersion(Ljava/lang/String;Ljava/lang/String;IZZZ)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public getNoteVersionAsync(Ljava/lang/String;IZZZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Note;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$n0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;IZZZ)V

    invoke-virtual {p0, v7, p6}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getNotebook(Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getNotebook(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public getNotebookAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$v1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$v1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getPublicNotebook(ILjava/lang/String;)Lcom/evernote/edam/type/Notebook;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    invoke-virtual {p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->getPublicNotebook(ILjava/lang/String;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public getPublicNotebookAsync(ILjava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$a1;

    invoke-direct {v0, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$a1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;ILjava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getResource(Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Resource;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResource(Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Resource;

    move-result-object p0

    return-object p0
.end method

.method public getResourceAlternateData(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceAlternateData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getResourceAlternateDataAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "[B>;)",
            "Ljava/util/concurrent/Future<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$y0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$y0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getResourceApplicationData(Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceApplicationData(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/LazyMap;

    move-result-object p0

    return-object p0
.end method

.method public getResourceApplicationDataAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/LazyMap;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/LazyMap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$p0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$p0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceApplicationDataEntryAsync(Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$q0;

    invoke-direct {v0, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$q0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getResourceAsync(Ljava/lang/String;ZZZZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZ",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Resource;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Resource;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;ZZZZ)V

    invoke-virtual {p0, v7, p6}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getResourceAttributes(Ljava/lang/String;)Lcom/evernote/edam/type/ResourceAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceAttributes(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/ResourceAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getResourceAttributesAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/ResourceAttributes;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/ResourceAttributes;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$z0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$z0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getResourceByHash(Ljava/lang/String;[BZZZ)Lcom/evernote/edam/type/Resource;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceByHash(Ljava/lang/String;Ljava/lang/String;[BZZZ)Lcom/evernote/edam/type/Resource;

    move-result-object p0

    return-object p0
.end method

.method public getResourceByHashAsync(Ljava/lang/String;[BZZZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BZZZ",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Resource;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Resource;",
            ">;"
        }
    .end annotation

    new-instance v7, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$w0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$w0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;[BZZZ)V

    invoke-virtual {p0, v7, p6}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getResourceData(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getResourceDataAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "[B>;)",
            "Ljava/util/concurrent/Future<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$v0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$v0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getResourceRecognition(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceRecognition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getResourceRecognitionAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "[B>;)",
            "Ljava/util/concurrent/Future<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$x0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$x0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getResourceSearchText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getResourceSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceSearchTextAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getSearch(Ljava/lang/String;)Lcom/evernote/edam/type/SavedSearch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSearch(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/SavedSearch;

    move-result-object p0

    return-object p0
.end method

.method public getSearchAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$m;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$m;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getSharedNotebookByAuth()Lcom/evernote/edam/type/SharedNotebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSharedNotebookByAuth(Ljava/lang/String;)Lcom/evernote/edam/type/SharedNotebook;

    move-result-object p0

    return-object p0
.end method

.method public getSharedNotebookByAuthAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o1;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getSyncChunk(IIZ)Lcom/evernote/edam/notestore/SyncChunk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSyncChunk(Ljava/lang/String;IIZ)Lcom/evernote/edam/notestore/SyncChunk;

    move-result-object p0

    return-object p0
.end method

.method public getSyncChunkAsync(IIZLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/notestore/SyncChunk;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/notestore/SyncChunk;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;IIZ)V

    invoke-virtual {p0, v0, p4}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getSyncState()Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSyncState(Ljava/lang/String;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0
.end method

.method public getSyncStateAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/notestore/SyncState;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/notestore/SyncState;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$k;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$k;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getSyncStateWithMetrics(Lcom/evernote/edam/notestore/ClientUsageMetrics;)Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getSyncStateWithMetrics(Ljava/lang/String;Lcom/evernote/edam/notestore/ClientUsageMetrics;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0
.end method

.method public getSyncStateWithMetricsAsync(Lcom/evernote/edam/notestore/ClientUsageMetrics;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/notestore/ClientUsageMetrics;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/notestore/SyncState;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/notestore/SyncState;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$v;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$v;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/ClientUsageMetrics;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getTag(Ljava/lang/String;)Lcom/evernote/edam/type/Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->getTag(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/edam/type/Tag;

    move-result-object p0

    return-object p0
.end method

.method public getTagAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Tag;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public listLinkedNotebooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->listLinkedNotebooks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listLinkedNotebooksAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$k1;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$k1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public listNoteVersions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NoteVersionId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->listNoteVersions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listNoteVersionsAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NoteVersionId;",
            ">;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NoteVersionId;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$m0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$m0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public listNotebooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->listNotebooks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listNotebooksAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Notebook;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$u1;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$u1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public listSearches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->listSearches(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listSearchesAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SavedSearch;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$l;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$l;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public listSharedNotebooks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->listSharedNotebooks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listSharedNotebooksAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/SharedNotebook;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g1;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$g1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public listTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/edam/notestore/NoteStore$Client;->listTags(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listTagsAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Tag;",
            ">;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Tag;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$d;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$d;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public listTagsByNotebook(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Tag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->listTagsByNotebook(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public listTagsByNotebookAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Tag;",
            ">;>;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/Tag;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public sendMessageToSharedNotebookMembers(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->sendMessageToSharedNotebookMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public sendMessageToSharedNotebookMembersAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0, p4}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public setNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->setNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setNoteApplicationDataEntryAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$y;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$y;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p4}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->setResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setResourceApplicationDataEntryAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$s0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p4}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public setSharedNotebookRecipientSettings(JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/evernote/edam/notestore/NoteStore$Client;->setSharedNotebookRecipientSettings(Ljava/lang/String;JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)I

    move-result p0

    return p0
.end method

.method public setSharedNotebookRecipientSettingsAsync(JLcom/evernote/edam/type/SharedNotebookRecipientSettings;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/evernote/edam/type/SharedNotebookRecipientSettings;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)V

    invoke-virtual {p0, v0, p4}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public shareNote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->shareNote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shareNoteAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$q1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$q1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public stopSharingNote(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->stopSharingNote(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopSharingNoteAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$r1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public unsetNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->unsetNoteApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public unsetNoteApplicationDataEntryAsync(Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$z;

    invoke-direct {v0, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$z;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public unsetResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/evernote/edam/notestore/NoteStore$Client;->unsetResourceApplicationDataEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public unsetResourceApplicationDataEntryAsync(Ljava/lang/String;Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$t0;

    invoke-direct {v0, p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$t0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public untagAll(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->untagAll(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public untagAllAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$i;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$i;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public updateLinkedNotebook(Lcom/evernote/edam/type/LinkedNotebook;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateLinkedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/LinkedNotebook;)I

    move-result p0

    return p0
.end method

.method public updateLinkedNotebookAsync(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$j1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$j1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/LinkedNotebook;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public updateNote(Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateNote(Ljava/lang/String;Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public updateNoteAsync(Lcom/evernote/edam/type/Note;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Note;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/edam/type/Note;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/edam/type/Note;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$f0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/Note;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public updateNotebook(Lcom/evernote/edam/type/Notebook;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateNotebook(Ljava/lang/String;Lcom/evernote/edam/type/Notebook;)I

    move-result p0

    return p0
.end method

.method public updateNotebookAsync(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Notebook;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$b;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$b;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/Notebook;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public updateResource(Lcom/evernote/edam/type/Resource;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateResource(Ljava/lang/String;Lcom/evernote/edam/type/Resource;)I

    move-result p0

    return p0
.end method

.method public updateResourceAsync(Lcom/evernote/edam/type/Resource;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Resource;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$u0;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$u0;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/Resource;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public updateSearch(Lcom/evernote/edam/type/SavedSearch;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateSearch(Ljava/lang/String;Lcom/evernote/edam/type/SavedSearch;)I

    move-result p0

    return p0
.end method

.method public updateSearchAsync(Lcom/evernote/edam/type/SavedSearch;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/SavedSearch;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$o;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/SavedSearch;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public updateSharedNotebook(Lcom/evernote/edam/type/SharedNotebook;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateSharedNotebook(Ljava/lang/String;Lcom/evernote/edam/type/SharedNotebook;)I

    move-result p0

    return p0
.end method

.method public updateSharedNotebookAsync(Lcom/evernote/edam/type/SharedNotebook;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/SharedNotebook;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$d1;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$d1;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/SharedNotebook;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public updateTag(Lcom/evernote/edam/type/Tag;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->d:Lcom/evernote/edam/notestore/NoteStore$Client;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/evernote/edam/notestore/NoteStore$Client;->updateTag(Ljava/lang/String;Lcom/evernote/edam/type/Tag;)I

    move-result p0

    return p0
.end method

.method public updateTagAsync(Lcom/evernote/edam/type/Tag;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/edam/type/Tag;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$h;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$h;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/Tag;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
