.class public final Lcom/sunia/HTREnginev2/d1k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/evernote/edam/type/LinkedNotebook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/d1k;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/evernote/edam/type/LinkedNotebook;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/sunia/HTREnginev2/d1k;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evernote/edam/type/LinkedNotebook;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sunia/HTREnginev2/d1k;->c()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->listLinkedNotebooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/edam/type/LinkedNotebook;

    sget-object v2, Lcom/sunia/HTREnginev2/d1k;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/evernote/edam/type/LinkedNotebook;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sunia/HTREnginev2/d1k;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evernote/edam/type/LinkedNotebook;

    return-object p0
.end method

.method public static b(Lcom/evernote/client/android/type/NoteRef;)Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    invoke-static {}, Lcom/sunia/HTREnginev2/d1k;->c()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/client/android/type/NoteRef;->isLinked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sunia/HTREnginev2/d1k;->c()Lcom/evernote/client/android/EvernoteSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getNoteStoreClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/evernote/client/android/type/NoteRef;->getNotebookGuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/d1k;->a(Ljava/lang/String;)Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getEvernoteClientFactory()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getLinkedNotebookHelper(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->getClient()Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/evernote/client/android/EvernoteSession;
    .locals 2

    invoke-static {}, Lcom/evernote/client/android/EvernoteSession;->getInstance()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session not logged in"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
