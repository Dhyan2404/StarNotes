.class public Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;
.super Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;,
        Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;,
        Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;
    }
.end annotation


# instance fields
.field public final d:Lcom/evernote/client/android/EvernoteSession;

.field public final e:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

.field public final f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/EvernoteSession;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1    # Lcom/evernote/client/android/EvernoteSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/android/EvernoteSession;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->d:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {p1}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->e:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    invoke-virtual {p1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object p1

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    return-void
.end method


# virtual methods
.method public final e(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->isIgnoreExceptions()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    throw p2
.end method

.method public execute(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;
    .locals 5
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->a(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)I

    move-result v0

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->b(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)I

    move-result v1

    if-ge v0, v1, :cond_5

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->e(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;-><init>(Ljava/util/Set;Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$a;)V

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->e(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    sget-object v3, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->getLinkedNotebooks(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evernote/edam/type/LinkedNotebook;

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->findNotesInBusinessNotebook(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Lcom/evernote/edam/type/LinkedNotebook;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->c(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;Lcom/evernote/edam/type/LinkedNotebook;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {p0, p1, v3}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->e(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->getLinkedNotebooks(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evernote/edam/type/LinkedNotebook;

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->findNotesInLinkedNotebook(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Lcom/evernote/edam/type/LinkedNotebook;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->b(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;Lcom/evernote/edam/type/LinkedNotebook;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {p0, p1, v3}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->e(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->findPersonalNotes(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;->a(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {p0, p1, v2}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->e(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset must be less than max notes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeAsync(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1    # Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;
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
            "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;",
            "Lcom/evernote/client/android/asyncclient/EvernoteCallback<",
            "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$a;

    invoke-direct {v0, p0, p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$a;-><init>(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)V

    invoke-virtual {p0, v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->submitTask(Ljava/util/concurrent/Callable;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public findAllNotes(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/NoteFilter;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;",
            "Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;",
            "Lcom/evernote/edam/notestore/NoteFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->b(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)I

    move-result v1

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->a(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)I

    move-result v2

    sub-int v3, v1, v2

    :goto_0
    if-lez v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->g(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Lcom/evernote/edam/notestore/NotesMetadataResultSpec;

    move-result-object v4

    invoke-virtual {p2, p3, v2, v1, v4}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->findNotesMetadata(Lcom/evernote/edam/notestore/NoteFilter;IILcom/evernote/edam/notestore/NotesMetadataResultSpec;)Lcom/evernote/edam/notestore/NotesMetadataList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evernote/edam/notestore/NotesMetadataList;->getTotalNotes()I

    move-result v5

    invoke-virtual {v4}, Lcom/evernote/edam/notestore/NotesMetadataList;->getStartIndex()I

    move-result v6

    invoke-virtual {v4}, Lcom/evernote/edam/notestore/NotesMetadataList;->getNotesSize()I

    move-result v3

    add-int/2addr v6, v3

    sub-int v3, v5, v6

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/evernote/edam/error/EDAMUserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/evernote/edam/error/EDAMSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/evernote/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/evernote/edam/error/EDAMNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {p0, p1, v4}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->e(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Ljava/lang/Exception;)V

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->h(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)I

    move-result v4

    sub-int/2addr v3, v4

    :goto_1
    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->h(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public findNotesInBusinessNotebook(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Lcom/evernote/edam/type/LinkedNotebook;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ")",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->e:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getBusinessNotebookHelper()Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->e:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    invoke-virtual {v1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getLinkedNotebookHelper(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->getCorrespondingNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object p2

    new-instance v1, Lcom/evernote/edam/notestore/NoteFilter;

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->f(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Lcom/evernote/edam/notestore/NoteFilter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/evernote/edam/notestore/NoteFilter;-><init>(Lcom/evernote/edam/notestore/NoteFilter;)V

    invoke-virtual {p2}, Lcom/evernote/edam/type/Notebook;->getGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/evernote/edam/notestore/NoteFilter;->setNotebookGuid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->getClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->findAllNotes(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/NoteFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public findNotesInLinkedNotebook(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Lcom/evernote/edam/type/LinkedNotebook;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ")",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->e:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    invoke-virtual {v0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getLinkedNotebookHelper(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->getCorrespondingNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object v0

    new-instance v1, Lcom/evernote/edam/notestore/NoteFilter;

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->f(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Lcom/evernote/edam/notestore/NoteFilter;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/evernote/edam/notestore/NoteFilter;-><init>(Lcom/evernote/edam/notestore/NoteFilter;)V

    invoke-virtual {v0}, Lcom/evernote/edam/type/Notebook;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/evernote/edam/notestore/NoteFilter;->setNotebookGuid(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->getClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->findAllNotes(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/NoteFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public findPersonalNotes(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;",
            ")",
            "Ljava/util/List<",
            "Lcom/evernote/edam/notestore/NotesMetadataList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->f(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Lcom/evernote/edam/notestore/NoteFilter;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->findAllNotes(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/notestore/NoteFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLinkedNotebooks(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->c(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->e:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    invoke-virtual {p2}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getBusinessNotebookHelper()Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->d:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {p2, v0}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->listBusinessNotebooks(Lcom/evernote/client/android/EvernoteSession;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lcom/evernote/edam/error/EDAMUserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/evernote/edam/error/EDAMSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/evernote/edam/error/EDAMNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/evernote/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->e(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Ljava/lang/Exception;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->c(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->d(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    :try_start_1
    iget-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {p2}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->listLinkedNotebooks()Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catch Lcom/evernote/edam/error/EDAMUserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/evernote/edam/error/EDAMNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/evernote/thrift/TException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/evernote/edam/error/EDAMSystemException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p2

    invoke-virtual {p0, p1, p2}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->e(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Ljava/lang/Exception;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;->d(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
