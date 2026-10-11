.class public Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getHtmlHelperBusinessAsync(Lcom/evernote/client/android/asyncclient/EvernoteCallback;)Ljava/util/concurrent/Future;
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
.field public final synthetic e:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$e;->e:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$e;->e:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;->getHtmlHelperBusiness()Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

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

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$e;->a()Lcom/evernote/client/android/asyncclient/EvernoteHtmlHelper;

    move-result-object p0

    return-object p0
.end method
