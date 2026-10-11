.class public Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;
.super Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;
.source "SourceFile"


# instance fields
.field protected final mClient:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

.field protected final mLinkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/LinkedNotebook;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/edam/type/LinkedNotebook;
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

    check-cast p1, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->mClient:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-static {p2}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/edam/type/LinkedNotebook;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->mLinkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    return-void
.end method


# virtual methods
.method public createNoteInLinkedNotebook(Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;
    .locals 1
    .param p1    # Lcom/evernote/edam/type/Note;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->mClient:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getSharedNotebookByAuth()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/edam/type/SharedNotebook;->getNotebookGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evernote/edam/type/Note;->setNotebookGuid(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->mClient:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->createNote(Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public createNoteInLinkedNotebookAsync(Lcom/evernote/edam/type/Note;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Lcom/evernote/edam/type/Note;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$a;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$a;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;Lcom/evernote/edam/type/Note;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public deleteLinkedNotebook(Lcom/evernote/client/android/EvernoteSession;)I
    .locals 0
    .param p1    # Lcom/evernote/client/android/EvernoteSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->deleteLinkedNotebook(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)I

    move-result p0

    return p0
.end method

.method public deleteLinkedNotebook(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)I
    .locals 4
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->mClient:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getSharedNotebookByAuth()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/evernote/edam/type/SharedNotebook;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->mClient:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {v0, v1}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->expungeSharedNotebooks(Ljava/util/List;)I

    .line 6
    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->mLinkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {p0}, Lcom/evernote/edam/type/LinkedNotebook;->getGuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->expungeLinkedNotebook(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteLinkedNotebookAsync(Lcom/evernote/client/android/EvernoteSession;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 0
    .param p1    # Lcom/evernote/client/android/EvernoteSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/EvernoteSession;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->deleteLinkedNotebookAsync(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public deleteLinkedNotebookAsync(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$b;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$b;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->mClient:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    return-object p0
.end method

.method public getCorrespondingNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->mClient:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getSharedNotebookByAuth()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object v0

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->mClient:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {v0}, Lcom/evernote/edam/type/SharedNotebook;->getNotebookGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getNotebook(Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public getCorrespondingNotebookAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$c;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$c;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public getLinkedNotebook()Lcom/evernote/edam/type/LinkedNotebook;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->mLinkedNotebook:Lcom/evernote/edam/type/LinkedNotebook;

    return-object p0
.end method

.method public isNotebookWritable()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->getCorrespondingNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->getRestrictions()Lcom/evernote/edam/type/NotebookRestrictions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isNoCreateNotes()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isNotebookWritableAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$d;

    invoke-direct {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$d;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;)V

    invoke-virtual {p0, v0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
