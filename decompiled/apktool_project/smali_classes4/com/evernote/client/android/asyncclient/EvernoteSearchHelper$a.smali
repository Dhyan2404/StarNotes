.class public Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->executeAsync(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;

.field public final synthetic f:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$a;->f:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$a;->e:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$a;->f:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$a;->e:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;

    invoke-virtual {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;->execute(Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Search;)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$a;->a()Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Result;

    move-result-object p0

    return-object p0
.end method
