.class public Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->createBusinessNotebookAsync(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/evernote/edam/type/LinkedNotebook;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/edam/type/Notebook;

.field public final synthetic f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

.field public final synthetic g:Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$b;->g:Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$b;->e:Lcom/evernote/edam/type/Notebook;

    iput-object p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$b;->f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/edam/type/LinkedNotebook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$b;->g:Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$b;->e:Lcom/evernote/edam/type/Notebook;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$b;->f:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {v0, v1, p0}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper;->createBusinessNotebook(Lcom/evernote/edam/type/Notebook;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)Lcom/evernote/edam/type/LinkedNotebook;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteBusinessNotebookHelper$b;->a()Lcom/evernote/edam/type/LinkedNotebook;

    move-result-object p0

    return-object p0
.end method
