.class public Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getLinkedHtmlHelperAsync(Lcom/evernote/edam/type/LinkedNotebook;Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/evernote/edam/type/LinkedNotebook;

.field public final synthetic f:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;Lcom/evernote/edam/type/LinkedNotebook;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$d;->f:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    iput-object p2, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$d;->e:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$d;->f:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$d;->e:Lcom/evernote/edam/type/LinkedNotebook;

    invoke-virtual {v0, p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getLinkedHtmlHelper(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$d;->a()Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    move-result-object p0

    return-object p0
.end method
