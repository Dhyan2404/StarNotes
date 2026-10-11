.class public Lcom/evernote/clients/LinkedNoteStoreClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/evernote/clients/NoteStoreClient;

.field public b:Lcom/evernote/clients/NoteStoreClient;

.field public c:Lcom/evernote/edam/userstore/AuthenticationResult;


# direct methods
.method public constructor <init>(Lcom/evernote/clients/NoteStoreClient;Lcom/evernote/clients/NoteStoreClient;Lcom/evernote/edam/userstore/AuthenticationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/clients/LinkedNoteStoreClient;->a:Lcom/evernote/clients/NoteStoreClient;

    iput-object p2, p0, Lcom/evernote/clients/LinkedNoteStoreClient;->b:Lcom/evernote/clients/NoteStoreClient;

    iput-object p3, p0, Lcom/evernote/clients/LinkedNoteStoreClient;->c:Lcom/evernote/edam/userstore/AuthenticationResult;

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/userstore/AuthenticationResult;
    .locals 0

    iget-object p0, p0, Lcom/evernote/clients/LinkedNoteStoreClient;->c:Lcom/evernote/edam/userstore/AuthenticationResult;

    return-object p0
.end method

.method public b()Lcom/evernote/clients/NoteStoreClient;
    .locals 0

    iget-object p0, p0, Lcom/evernote/clients/LinkedNoteStoreClient;->a:Lcom/evernote/clients/NoteStoreClient;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/evernote/clients/LinkedNoteStoreClient;->a()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/edam/userstore/AuthenticationResult;->getAuthenticationToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createNote(Lcom/evernote/edam/type/Note;Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/Note;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/LinkedNoteStoreClient;->getClient()Lcom/evernote/clients/NoteStoreClient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/evernote/clients/NoteStoreClient;->getSharedNotebookByAuth()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object p2

    invoke-virtual {p2}, Lcom/evernote/edam/type/SharedNotebook;->getNotebookGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/evernote/edam/type/Note;->setNotebookGuid(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/evernote/clients/LinkedNoteStoreClient;->getClient()Lcom/evernote/clients/NoteStoreClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/evernote/clients/NoteStoreClient;->createNote(Lcom/evernote/edam/type/Note;)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public getClient()Lcom/evernote/clients/NoteStoreClient;
    .locals 0

    iget-object p0, p0, Lcom/evernote/clients/LinkedNoteStoreClient;->b:Lcom/evernote/clients/NoteStoreClient;

    return-object p0
.end method

.method public getCorrespondingNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/Notebook;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/LinkedNoteStoreClient;->getClient()Lcom/evernote/clients/NoteStoreClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evernote/clients/NoteStoreClient;->getSharedNotebookByAuth()Lcom/evernote/edam/type/SharedNotebook;

    move-result-object p1

    invoke-virtual {p0}, Lcom/evernote/clients/LinkedNoteStoreClient;->getClient()Lcom/evernote/clients/NoteStoreClient;

    move-result-object p0

    invoke-virtual {p1}, Lcom/evernote/edam/type/SharedNotebook;->getNotebookGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/evernote/clients/NoteStoreClient;->getNotebook(Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public isNotebookWritable(Lcom/evernote/edam/type/LinkedNotebook;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/evernote/clients/LinkedNoteStoreClient;->getCorrespondingNotebook(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/edam/type/Notebook;->getRestrictions()Lcom/evernote/edam/type/NotebookRestrictions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/edam/type/NotebookRestrictions;->isNoCreateNotes()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public listNotebooks()Ljava/util/List;
    .locals 0
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
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/LinkedNoteStoreClient;->b()Lcom/evernote/clients/NoteStoreClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/clients/NoteStoreClient;->listLinkedNotebooks()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
