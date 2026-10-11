.class public Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->deleteLinkedNotebookAsync(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

.field public final synthetic f:Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$b;->f:Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$b;->e:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$b;->f:Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$b;->e:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    invoke-virtual {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper;->deleteLinkedNotebook(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteLinkedNotebookHelper$b;->a()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
