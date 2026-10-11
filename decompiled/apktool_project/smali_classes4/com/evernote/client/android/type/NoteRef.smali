.class public Lcom/evernote/client/android/type/NoteRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/client/android/type/NoteRef$DefaultFactory;,
        Lcom/evernote/client/android/type/NoteRef$Factory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/evernote/client/android/type/NoteRef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLinked:Z

.field private final mNoteGuid:Ljava/lang/String;

.field private final mNotebookGuid:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/evernote/client/android/type/NoteRef$a;

    invoke-direct {v0}, Lcom/evernote/client/android/type/NoteRef$a;-><init>()V

    sput-object v0, Lcom/evernote/client/android/type/NoteRef;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evernote/client/android/type/NoteRef;->mNoteGuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/evernote/client/android/type/NoteRef;->mNotebookGuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/evernote/client/android/type/NoteRef;->mTitle:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/evernote/client/android/type/NoteRef;->mLinked:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/type/NoteRef;->mNoteGuid:Ljava/lang/String;

    return-object p0
.end method

.method public getNotebookGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/evernote/client/android/type/NoteRef;->mNotebookGuid:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/type/NoteRef;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isLinked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/evernote/client/android/type/NoteRef;->mLinked:Z

    return p0
.end method

.method public loadLinkedNotebook()Lcom/evernote/edam/type/LinkedNotebook;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/evernote/client/android/type/NoteRef;->mLinked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/sunia/HTREnginev2/d1k;->c()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->listLinkedNotebooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v2}, Lcom/evernote/edam/type/LinkedNotebook;->getGuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/evernote/client/android/type/NoteRef;->mNotebookGuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    return-object v1
.end method

.method public loadNote(ZZZZ)Lcom/evernote/edam/type/Note;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sunia/HTREnginev2/d1k;->b(Lcom/evernote/client/android/type/NoteRef;)Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/evernote/client/android/type/NoteRef;->mNoteGuid:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getNote(Ljava/lang/String;ZZZZ)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public loadNoteFully()Lcom/evernote/edam/type/Note;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/evernote/client/android/type/NoteRef;->loadNote(ZZZZ)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public loadNotePartial()Lcom/evernote/edam/type/Note;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/evernote/client/android/type/NoteRef;->loadNote(ZZZZ)Lcom/evernote/edam/type/Note;

    move-result-object p0

    return-object p0
.end method

.method public loadNotebook()Lcom/evernote/edam/type/Notebook;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/type/NoteRef;->mNotebookGuid:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v2, p0, Lcom/evernote/client/android/type/NoteRef;->mLinked:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/sunia/HTREnginev2/d1k;->a(Ljava/lang/String;)Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object p0

    invoke-static {}, Lcom/sunia/HTREnginev2/d1k;->c()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getLinkedNotebookHelper(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->getCorrespondingNotebook()Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/sunia/HTREnginev2/d1k;->b(Lcom/evernote/client/android/type/NoteRef;)Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object p0, p0, Lcom/evernote/client/android/type/NoteRef;->mNotebookGuid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getNotebook(Ljava/lang/String;)Lcom/evernote/edam/type/Notebook;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/evernote/client/android/type/NoteRef;->mNoteGuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/evernote/client/android/type/NoteRef;->mNotebookGuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/evernote/client/android/type/NoteRef;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/evernote/client/android/type/NoteRef;->mLinked:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
