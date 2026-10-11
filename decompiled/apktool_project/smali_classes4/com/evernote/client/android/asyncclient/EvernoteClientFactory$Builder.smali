.class public Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/evernote/client/android/EvernoteSession;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/squareup/okhttp/OkHttpClient;

.field public d:Lcom/evernote/client/conn/mobile/ByteStore$Factory;

.field public e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/evernote/client/android/EvernoteSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/evernote/client/android/helper/EvernotePreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evernote/client/android/EvernoteSession;

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->a:Lcom/evernote/client/android/EvernoteSession;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;
    .locals 1

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Landroid/content/Context;)Lcom/evernote/client/conn/mobile/ByteStore$Factory;
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    div-long/2addr v0, v2

    long-to-int p0, v0

    new-instance v0, Lcom/evernote/client/conn/mobile/DiskBackedByteStore$Factory;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v2, "evernoteCache"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lcom/evernote/client/conn/mobile/DiskBackedByteStore$Factory;-><init>(Ljava/io/File;I)V

    return-object v0
.end method

.method public build()Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;
    .locals 8

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->c:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->c()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->c:Lcom/squareup/okhttp/OkHttpClient;

    :cond_0
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->d:Lcom/evernote/client/conn/mobile/ByteStore$Factory;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->a:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->b(Landroid/content/Context;)Lcom/evernote/client/conn/mobile/ByteStore$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->d:Lcom/evernote/client/conn/mobile/ByteStore$Factory;

    :cond_1
    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->e:Ljava/util/concurrent/ExecutorService;

    :cond_2
    const-string v0, "Cache-Control"

    const-string v1, "no-transform"

    invoke-virtual {p0, v0, v1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;

    const-string v0, "Accept"

    const-string v1, "application/x-thrift"

    invoke-virtual {p0, v0, v1}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;

    iget-object v0, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->a:Lcom/evernote/client/android/EvernoteSession;

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/client/android/EvernoteUtil;->generateUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;

    iget-object v3, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->a:Lcom/evernote/client/android/EvernoteSession;

    iget-object v4, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->c:Lcom/squareup/okhttp/OkHttpClient;

    iget-object v1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->d:Lcom/evernote/client/conn/mobile/ByteStore$Factory;

    invoke-interface {v1}, Lcom/evernote/client/conn/mobile/ByteStore$Factory;->create()Lcom/evernote/client/conn/mobile/ByteStore;

    move-result-object v5

    iget-object v6, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->b:Ljava/util/Map;

    iget-object v7, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->e:Ljava/util/concurrent/ExecutorService;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory;-><init>(Lcom/evernote/client/android/EvernoteSession;Lcom/squareup/okhttp/OkHttpClient;Lcom/evernote/client/conn/mobile/ByteStore;Ljava/util/Map;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public final c()Lcom/squareup/okhttp/OkHttpClient;
    .locals 4

    new-instance p0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {p0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v1, v2, v0}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v1, v2, v0}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    new-instance v0, Lcom/squareup/okhttp/ConnectionPool;

    const/16 v1, 0x14

    const-wide/32 v2, 0x1d4c0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/ConnectionPool;-><init>(IJ)V

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/OkHttpClient;->setConnectionPool(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/OkHttpClient;

    return-object p0
.end method

.method public setByteStoreFactory(Lcom/evernote/client/conn/mobile/ByteStore$Factory;)Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->d:Lcom/evernote/client/conn/mobile/ByteStore$Factory;

    return-object p0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->e:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public setHttpClient(Lcom/squareup/okhttp/OkHttpClient;)Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;
    .locals 0

    iput-object p1, p0, Lcom/evernote/client/android/asyncclient/EvernoteClientFactory$Builder;->c:Lcom/squareup/okhttp/OkHttpClient;

    return-object p0
.end method
