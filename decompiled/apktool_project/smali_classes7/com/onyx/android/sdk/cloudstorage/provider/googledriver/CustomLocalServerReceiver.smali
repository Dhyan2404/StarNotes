.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Builder;,
        Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;,
        Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 &2\u00020\u0001:\u0003$%&B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B+\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\tB3\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010 \u001a\u00020\u0004H\u0016J\u0008\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u0004H\u0016R\u0011\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\r\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\r\"\u0004\u0008\u0014\u0010\u0011R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;",
        "Lcom/google/api/client/extensions/java6/auth/oauth2/VerificationCodeReceiver;",
        "()V",
        "host",
        "",
        "port",
        "",
        "successLandingPageUrl",
        "failureLandingPageUrl",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "callbackPath",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getCallbackPath",
        "()Ljava/lang/String;",
        "code",
        "getCode",
        "setCode",
        "(Ljava/lang/String;)V",
        "error",
        "getError",
        "setError",
        "getHost",
        "getPort",
        "()I",
        "setPort",
        "(I)V",
        "server",
        "Lorg/mortbay/jetty/Server;",
        "waitUnlessSignaled",
        "Ljava/util/concurrent/Semaphore;",
        "getWaitUnlessSignaled",
        "()Ljava/util/concurrent/Semaphore;",
        "getRedirectUri",
        "stop",
        "",
        "waitForCode",
        "Builder",
        "CallbackHandler",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CALLBACK_PATH:Ljava/lang/String; = "/Callback"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOCALHOST:Ljava/lang/String; = "localhost"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final callbackPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private error:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final failureLandingPageUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final host:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private port:I

.field private server:Lorg/mortbay/jetty/Server;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final successLandingPageUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final waitUnlessSignaled:Ljava/util/concurrent/Semaphore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v1, "localhost"

    const/4 v2, -0x1

    const-string v3, "/Callback"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "/Callback"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->host:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->port:I

    .line 4
    iput-object p3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->callbackPath:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->successLandingPageUrl:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->failureLandingPageUrl:Ljava/lang/String;

    .line 7
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public static final synthetic access$getFailureLandingPageUrl$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->failureLandingPageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSuccessLandingPageUrl$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->successLandingPageUrl:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final getCallbackPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->callbackPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->code:Ljava/lang/String;

    return-object p0
.end method

.method public final getError()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->error:Ljava/lang/String;

    return-object p0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->host:Ljava/lang/String;

    return-object p0
.end method

.method public final getPort()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->port:I

    return p0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    new-instance v1, Lorg/mortbay/jetty/Server;

    iget v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->port:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-direct {v1, v2}, Lorg/mortbay/jetty/Server;-><init>(I)V

    iput-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getConnectors()[Lorg/mortbay/jetty/Connector;

    move-result-object v1

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->host:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/mortbay/jetty/Connector;->setHost(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver$CallbackHandler;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;)V

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/Server;->addHandler(Lorg/mortbay/jetty/Handler;)V

    :try_start_0
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/mortbay/component/AbstractLifeCycle;->start()V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v3, "getRedirectUri start : "

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Lorg/mortbay/jetty/Connector;->getLocalPort()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->port:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RedirectUri : http://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->port:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->callbackPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->callbackPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRedirectUri error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/api/client/util/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getWaitUnlessSignaled()Ljava/util/concurrent/Semaphore;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public final setCode(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->code:Ljava/lang/String;

    return-void
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->error:Ljava/lang/String;

    return-void
.end method

.method public final setPort(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->port:I

    return-void
.end method

.method public stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "stop ...... "

    invoke-virtual {v0, v1, v4, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V

    const-string v3, "server stop ...... "

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->server:Lorg/mortbay/jetty/Server;

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server.stop() happen exception  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/api/client/util/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public waitForCode()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->waitUnlessSignaled:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->error:Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->code:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User authorization failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->error:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/CustomLocalServerReceiver;->error:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
