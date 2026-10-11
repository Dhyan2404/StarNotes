.class public Lcom/tencent/cos/xml/CloudControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudControl"

.field private static volatile instance:Lcom/tencent/cos/xml/CloudControl;


# instance fields
.field private final BEACON_CLOUD_APPKEY:Ljava/lang/String;

.field private final BEACON_CLOUD_URL:Ljava/lang/String;

.field public final CLOUD_CONTROL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://cos-android-sdk-doc-1253960454.cos.ap-shanghai.myqcloud.com/beacon_cc/android/"

    iput-object v0, p0, Lcom/tencent/cos/xml/CloudControl;->BEACON_CLOUD_URL:Ljava/lang/String;

    const-string v0, "appKey"

    iput-object v0, p0, Lcom/tencent/cos/xml/CloudControl;->BEACON_CLOUD_APPKEY:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const v1, 0x7fffffff

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/CloudControl;->CLOUD_CONTROL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/cos/xml/CloudControl;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/cos/xml/CloudControl;Ljava/lang/String;Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/CloudControl;->lambda$getBeaconAppKey$3(Ljava/lang/String;Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/cos/xml/CloudControl;->lambda$getBeaconAppKey$2(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/cos/xml/CloudControl;->lambda$getBeaconAppKey$1(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic d(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/cos/xml/CloudControl;->lambda$getBeaconAppKey$0(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;I)V

    return-void
.end method

.method public static getInstance()Lcom/tencent/cos/xml/CloudControl;
    .locals 2

    sget-object v0, Lcom/tencent/cos/xml/CloudControl;->instance:Lcom/tencent/cos/xml/CloudControl;

    if-nez v0, :cond_1

    const-class v0, Lcom/tencent/cos/xml/CloudControl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/cos/xml/CloudControl;->instance:Lcom/tencent/cos/xml/CloudControl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/cos/xml/CloudControl;

    invoke-direct {v1}, Lcom/tencent/cos/xml/CloudControl;-><init>()V

    sput-object v1, Lcom/tencent/cos/xml/CloudControl;->instance:Lcom/tencent/cos/xml/CloudControl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/cos/xml/CloudControl;->instance:Lcom/tencent/cos/xml/CloudControl;

    return-object v0
.end method

.method private static synthetic lambda$getBeaconAppKey$0(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;I)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBeaconAppKey failure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic lambda$getBeaconAppKey$1(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic lambda$getBeaconAppKey$2(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getBeaconAppKey$3(Ljava/lang/String;Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://cos-android-sdk-doc-1253960454.cos.ap-shanghai.myqcloud.com/beacon_cc/android/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "appKey"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBeaconAppKey onSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/tencent/cos/xml/CloudControl;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/cos/xml/d;

    invoke-direct {v0, p2, p1}, Lcom/tencent/cos/xml/d;-><init>(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/tencent/cos/xml/CloudControl;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/cos/xml/b;

    invoke-direct {v1, p2, v0}, Lcom/tencent/cos/xml/b;-><init>(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/tencent/cos/xml/CloudControl;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/cos/xml/c;

    invoke-direct {v0, p2, p1}, Lcom/tencent/cos/xml/c;-><init>(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getBeaconAppKey(Ljava/lang/String;Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/CloudControl;->CLOUD_CONTROL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tencent/cos/xml/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/cos/xml/a;-><init>(Lcom/tencent/cos/xml/CloudControl;Ljava/lang/String;Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
