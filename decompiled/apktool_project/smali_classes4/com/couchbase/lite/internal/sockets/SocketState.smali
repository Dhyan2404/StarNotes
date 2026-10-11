.class public final enum Lcom/couchbase/lite/internal/sockets/SocketState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/internal/sockets/SocketState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/internal/sockets/SocketState;

.field public static final enum CLOSED:Lcom/couchbase/lite/internal/sockets/SocketState;

.field public static final enum CLOSING:Lcom/couchbase/lite/internal/sockets/SocketState;

.field public static final enum OPEN:Lcom/couchbase/lite/internal/sockets/SocketState;

.field public static final enum OPENING:Lcom/couchbase/lite/internal/sockets/SocketState;

.field public static final enum UNOPENED:Lcom/couchbase/lite/internal/sockets/SocketState;

.field private static final WS_STATE_BUILDER:Lcom/couchbase/lite/internal/utils/StateMachine$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/utils/StateMachine$Builder<",
            "Lcom/couchbase/lite/internal/sockets/SocketState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/internal/sockets/SocketState;
    .locals 5

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->UNOPENED:Lcom/couchbase/lite/internal/sockets/SocketState;

    sget-object v1, Lcom/couchbase/lite/internal/sockets/SocketState;->OPENING:Lcom/couchbase/lite/internal/sockets/SocketState;

    sget-object v2, Lcom/couchbase/lite/internal/sockets/SocketState;->OPEN:Lcom/couchbase/lite/internal/sockets/SocketState;

    sget-object v3, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSING:Lcom/couchbase/lite/internal/sockets/SocketState;

    sget-object v4, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSED:Lcom/couchbase/lite/internal/sockets/SocketState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/couchbase/lite/internal/sockets/SocketState;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/couchbase/lite/internal/sockets/SocketState;

    const-string v1, "UNOPENED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/internal/sockets/SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->UNOPENED:Lcom/couchbase/lite/internal/sockets/SocketState;

    new-instance v1, Lcom/couchbase/lite/internal/sockets/SocketState;

    const-string v3, "OPENING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/couchbase/lite/internal/sockets/SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/couchbase/lite/internal/sockets/SocketState;->OPENING:Lcom/couchbase/lite/internal/sockets/SocketState;

    new-instance v3, Lcom/couchbase/lite/internal/sockets/SocketState;

    const-string v4, "OPEN"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/couchbase/lite/internal/sockets/SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/couchbase/lite/internal/sockets/SocketState;->OPEN:Lcom/couchbase/lite/internal/sockets/SocketState;

    new-instance v4, Lcom/couchbase/lite/internal/sockets/SocketState;

    const-string v5, "CLOSING"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/couchbase/lite/internal/sockets/SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSING:Lcom/couchbase/lite/internal/sockets/SocketState;

    new-instance v5, Lcom/couchbase/lite/internal/sockets/SocketState;

    const-string v6, "CLOSED"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/couchbase/lite/internal/sockets/SocketState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSED:Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-static {}, Lcom/couchbase/lite/internal/sockets/SocketState;->$values()[Lcom/couchbase/lite/internal/sockets/SocketState;

    move-result-object v6

    sput-object v6, Lcom/couchbase/lite/internal/sockets/SocketState;->$VALUES:[Lcom/couchbase/lite/internal/sockets/SocketState;

    new-instance v6, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;

    const-class v7, Lcom/couchbase/lite/internal/sockets/SocketState;

    sget-object v8, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    invoke-direct {v6, v7, v8, v0, v5}, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;-><init>(Ljava/lang/Class;Lcom/couchbase/lite/LogDomain;Ljava/lang/Enum;Ljava/lang/Enum;)V

    filled-new-array {v4}, [Lcom/couchbase/lite/internal/sockets/SocketState;

    move-result-object v5

    invoke-virtual {v6, v0, v1, v5}, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/couchbase/lite/internal/utils/StateMachine$Builder;

    move-result-object v0

    filled-new-array {v4}, [Lcom/couchbase/lite/internal/sockets/SocketState;

    move-result-object v5

    invoke-virtual {v0, v1, v3, v5}, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/couchbase/lite/internal/utils/StateMachine$Builder;

    move-result-object v0

    new-array v1, v2, [Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-virtual {v0, v3, v4, v1}, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/couchbase/lite/internal/utils/StateMachine$Builder;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->WS_STATE_BUILDER:Lcom/couchbase/lite/internal/utils/StateMachine$Builder;

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

.method public static getSocketStateMachine()Lcom/couchbase/lite/internal/utils/StateMachine;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/couchbase/lite/internal/utils/StateMachine<",
            "Lcom/couchbase/lite/internal/sockets/SocketState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->WS_STATE_BUILDER:Lcom/couchbase/lite/internal/utils/StateMachine$Builder;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/utils/StateMachine$Builder;->build()Lcom/couchbase/lite/internal/utils/StateMachine;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/internal/sockets/SocketState;
    .locals 1

    const-class v0, Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/sockets/SocketState;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/internal/sockets/SocketState;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->$VALUES:[Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-virtual {v0}, [Lcom/couchbase/lite/internal/sockets/SocketState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/internal/sockets/SocketState;

    return-object v0
.end method
