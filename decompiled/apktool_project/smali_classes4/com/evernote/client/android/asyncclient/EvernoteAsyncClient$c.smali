.class public Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->c(Ljava/lang/Exception;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/client/android/asyncclient/EvernoteCallback;

.field public final synthetic f:Ljava/lang/Exception;

.field public final synthetic g:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$c;->g:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$c;->e:Lcom/evernote/client/android/asyncclient/EvernoteCallback;

    iput-object p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$c;->f:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$c;->e:Lcom/evernote/client/android/asyncclient/EvernoteCallback;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$c;->f:Ljava/lang/Exception;

    invoke-interface {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteCallback;->onException(Ljava/lang/Exception;)V

    return-void
.end method
