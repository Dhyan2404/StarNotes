.class public Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->checkVersionAsync(Ljava/lang/String;SSLcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:S

.field public final synthetic g:S

.field public final synthetic h:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;Ljava/lang/String;SS)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;->h:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;->e:Ljava/lang/String;

    iput-short p3, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;->f:S

    iput-short p4, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;->g:S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;->h:Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;->e:Ljava/lang/String;

    iget-short v2, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;->f:S

    iget-short p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;->g:S

    invoke-virtual {v0, v1, v2, p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient;->checkVersion(Ljava/lang/String;SS)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteUserStoreClient$e;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
