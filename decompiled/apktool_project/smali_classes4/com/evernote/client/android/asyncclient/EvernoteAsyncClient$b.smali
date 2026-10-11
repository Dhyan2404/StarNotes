.class public Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;->d(Ljava/lang/Object;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/client/android/asyncclient/EvernoteCallback;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;Lcom/evernote/client/android/asyncclient/EvernoteCallback;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$b;->g:Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$b;->e:Lcom/evernote/client/android/asyncclient/EvernoteCallback;

    iput-object p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$b;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$b;->e:Lcom/evernote/client/android/asyncclient/EvernoteCallback;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient$b;->f:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
