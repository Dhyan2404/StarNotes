.class public final enum Lcom/couchbase/lite/internal/sockets/MessageFraming;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/internal/sockets/MessageFraming;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/internal/sockets/MessageFraming;

.field public static final C4_NO_FRAMING:I = 0x1

.field public static final C4_WEB_SOCKET_CLIENT_FRAMING:I = 0x0

.field public static final C4_WEB_SOCKET_SERVER_FRAMING:I = 0x2

.field public static final enum CLIENT_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;

.field private static final FRAMINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/internal/sockets/MessageFraming;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NO_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;

.field public static final enum SERVER_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/internal/sockets/MessageFraming;
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/sockets/MessageFraming;->CLIENT_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;

    sget-object v1, Lcom/couchbase/lite/internal/sockets/MessageFraming;->NO_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;

    sget-object v2, Lcom/couchbase/lite/internal/sockets/MessageFraming;->SERVER_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;

    filled-new-array {v0, v1, v2}, [Lcom/couchbase/lite/internal/sockets/MessageFraming;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/couchbase/lite/internal/sockets/MessageFraming;

    const-string v1, "CLIENT_FRAMING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/internal/sockets/MessageFraming;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/internal/sockets/MessageFraming;->CLIENT_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;

    new-instance v1, Lcom/couchbase/lite/internal/sockets/MessageFraming;

    const-string v3, "NO_FRAMING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/couchbase/lite/internal/sockets/MessageFraming;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/couchbase/lite/internal/sockets/MessageFraming;->NO_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;

    new-instance v3, Lcom/couchbase/lite/internal/sockets/MessageFraming;

    const-string v5, "SERVER_FRAMING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/couchbase/lite/internal/sockets/MessageFraming;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/couchbase/lite/internal/sockets/MessageFraming;->SERVER_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;

    invoke-static {}, Lcom/couchbase/lite/internal/sockets/MessageFraming;->$values()[Lcom/couchbase/lite/internal/sockets/MessageFraming;

    move-result-object v5

    sput-object v5, Lcom/couchbase/lite/internal/sockets/MessageFraming;->$VALUES:[Lcom/couchbase/lite/internal/sockets/MessageFraming;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/sockets/MessageFraming;->FRAMINGS:Ljava/util/Map;

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

.method public static getC4Framing(Lcom/couchbase/lite/internal/sockets/MessageFraming;)I
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/sockets/MessageFraming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/sockets/MessageFraming;->FRAMINGS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string v0, "framing"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/internal/sockets/MessageFraming;
    .locals 1

    const-class v0, Lcom/couchbase/lite/internal/sockets/MessageFraming;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/sockets/MessageFraming;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/internal/sockets/MessageFraming;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/sockets/MessageFraming;->$VALUES:[Lcom/couchbase/lite/internal/sockets/MessageFraming;

    invoke-virtual {v0}, [Lcom/couchbase/lite/internal/sockets/MessageFraming;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/internal/sockets/MessageFraming;

    return-object v0
.end method
