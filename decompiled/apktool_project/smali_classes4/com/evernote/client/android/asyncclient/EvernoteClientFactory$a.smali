.class public Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$a;
.super Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;-><init>(Lcom/evernote/client/android/EvernoteSession;Lcom/squareup/okhttp/OkHttpClient;Lcom/evernote/client/conn/mobile/ByteStore;Ljava/util/Map;Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$a;->d:Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    invoke-direct {p0, p2}, Lcom/evernote/client/android/asyncclient/EvernoteAsyncClient;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
