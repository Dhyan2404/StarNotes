.class public Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getLinkedNotebookSyncStateAsync(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/evernote/edam/notestore/SyncState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/edam/type/LinkedNotebook;

.field public final synthetic f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c1;->f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c1;->e:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/notestore/SyncState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c1;->f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c1;->e:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->getLinkedNotebookSyncState(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$c1;->a()Lcom/evernote/edam/notestore/SyncState;

    move-result-object p0

    return-object p0
.end method
