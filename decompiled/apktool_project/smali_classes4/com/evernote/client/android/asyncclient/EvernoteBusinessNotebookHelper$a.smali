.class public Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->listBusinessNotebooksAsync(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/evernote/edam/type/LinkedNotebook;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

.field public final synthetic f:Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$a;->f:Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$a;->e:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
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
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$a;->f:Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$a;->e:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->listBusinessNotebooks(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$a;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
