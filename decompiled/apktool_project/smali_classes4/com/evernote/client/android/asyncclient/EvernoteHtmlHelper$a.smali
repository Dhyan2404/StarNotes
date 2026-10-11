.class public Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;->downloadNoteAsync(Ljava/lang/String;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/squareup/okhttp/Response;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper$a;->f:Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper$a;->f:Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper$a;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;->downloadNote(Ljava/lang/String;)Lcom/squareup/okhttp/Response;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper$a;->a()Lcom/squareup/okhttp/Response;

    move-result-object p0

    return-object p0
.end method
