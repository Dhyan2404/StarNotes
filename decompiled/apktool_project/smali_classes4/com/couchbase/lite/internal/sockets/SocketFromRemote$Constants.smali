.class public final enum Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/sockets/SocketFromRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/sockets/SocketFromRemote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Constants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;",
        ">;",
        "Lcom/couchbase/lite/internal/sockets/SocketFromRemote;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

.field public static final enum NULL:Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;->NULL:Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    filled-new-array {v0}, [Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;->NULL:Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    invoke-static {}, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;->$values()[Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;->$VALUES:[Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;
    .locals 1

    const-class v0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;->$VALUES:[Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    invoke-virtual {v0}, [Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/internal/sockets/SocketFromRemote$Constants;

    return-object v0
.end method


# virtual methods
.method public getLock()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public remoteClosed(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public remoteFailed(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public remoteOpened(ILjava/util/Map;)V
    .locals 0
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public remoteRequestsClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public remoteWrites([B)V
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setupRemoteSocketFactory(Lokhttp3/OkHttpClient$Builder;)V
    .locals 0
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
