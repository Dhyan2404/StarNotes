.class public Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->setSharedNotebookRecipientSettingsAsync(JLcom/evernote/edam/type/SharedNotebookRecipientSettings;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
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
.field public final synthetic e:J

.field public final synthetic f:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

.field public final synthetic g:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e1;->g:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iput-wide p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e1;->e:J

    iput-object p4, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e1;->f:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e1;->g:Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;

    iget-wide v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e1;->e:J

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e1;->f:Lcom/evernote/edam/type/SharedNotebookRecipientSettings;

    invoke-virtual {v0, v1, v2, p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient;->setSharedNotebookRecipientSettings(JLcom/evernote/edam/type/SharedNotebookRecipientSettings;)I

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteNoteStoreClient$e1;->a()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
