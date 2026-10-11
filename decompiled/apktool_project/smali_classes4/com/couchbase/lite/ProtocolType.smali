.class public final enum Lcom/couchbase/lite/ProtocolType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/ProtocolType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/ProtocolType;

.field public static final enum BYTE_STREAM:Lcom/couchbase/lite/ProtocolType;

.field public static final enum MESSAGE_STREAM:Lcom/couchbase/lite/ProtocolType;

.field private static final PROTOCOL_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/ProtocolType;",
            "Lcom/couchbase/lite/internal/sockets/MessageFraming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/ProtocolType;
    .locals 2

    sget-object v0, Lcom/couchbase/lite/ProtocolType;->MESSAGE_STREAM:Lcom/couchbase/lite/ProtocolType;

    sget-object v1, Lcom/couchbase/lite/ProtocolType;->BYTE_STREAM:Lcom/couchbase/lite/ProtocolType;

    filled-new-array {v0, v1}, [Lcom/couchbase/lite/ProtocolType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/couchbase/lite/ProtocolType;

    const-string v1, "MESSAGE_STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ProtocolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ProtocolType;->MESSAGE_STREAM:Lcom/couchbase/lite/ProtocolType;

    new-instance v1, Lcom/couchbase/lite/ProtocolType;

    const-string v2, "BYTE_STREAM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/couchbase/lite/ProtocolType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/couchbase/lite/ProtocolType;->BYTE_STREAM:Lcom/couchbase/lite/ProtocolType;

    invoke-static {}, Lcom/couchbase/lite/ProtocolType;->$values()[Lcom/couchbase/lite/ProtocolType;

    move-result-object v2

    sput-object v2, Lcom/couchbase/lite/ProtocolType;->$VALUES:[Lcom/couchbase/lite/ProtocolType;

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/couchbase/lite/ProtocolType;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v3, Lcom/couchbase/lite/internal/sockets/MessageFraming;->NO_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/couchbase/lite/internal/sockets/MessageFraming;->CLIENT_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/ProtocolType;->PROTOCOL_TYPES:Ljava/util/Map;

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

.method public static getFramingForProtocol(Lcom/couchbase/lite/ProtocolType;)Lcom/couchbase/lite/internal/sockets/MessageFraming;
    .locals 1
    .param p0    # Lcom/couchbase/lite/ProtocolType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/ProtocolType;->PROTOCOL_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/sockets/MessageFraming;

    const-string v0, "protocol"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/sockets/MessageFraming;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/ProtocolType;
    .locals 1

    const-class v0, Lcom/couchbase/lite/ProtocolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/ProtocolType;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/ProtocolType;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/ProtocolType;->$VALUES:[Lcom/couchbase/lite/ProtocolType;

    invoke-virtual {v0}, [Lcom/couchbase/lite/ProtocolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/ProtocolType;

    return-object v0
.end method
