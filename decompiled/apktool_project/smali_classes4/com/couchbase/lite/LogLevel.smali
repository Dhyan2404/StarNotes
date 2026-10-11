.class public final enum Lcom/couchbase/lite/LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/LogLevel;

.field public static final enum DEBUG:Lcom/couchbase/lite/LogLevel;

.field public static final enum ERROR:Lcom/couchbase/lite/LogLevel;

.field public static final enum INFO:Lcom/couchbase/lite/LogLevel;

.field private static final LEVELS:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/couchbase/lite/LogLevel;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NONE:Lcom/couchbase/lite/LogLevel;

.field public static final enum VERBOSE:Lcom/couchbase/lite/LogLevel;

.field public static final enum WARNING:Lcom/couchbase/lite/LogLevel;


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/LogLevel;
    .locals 6

    sget-object v0, Lcom/couchbase/lite/LogLevel;->DEBUG:Lcom/couchbase/lite/LogLevel;

    sget-object v1, Lcom/couchbase/lite/LogLevel;->VERBOSE:Lcom/couchbase/lite/LogLevel;

    sget-object v2, Lcom/couchbase/lite/LogLevel;->INFO:Lcom/couchbase/lite/LogLevel;

    sget-object v3, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    sget-object v4, Lcom/couchbase/lite/LogLevel;->ERROR:Lcom/couchbase/lite/LogLevel;

    sget-object v5, Lcom/couchbase/lite/LogLevel;->NONE:Lcom/couchbase/lite/LogLevel;

    filled-new-array/range {v0 .. v5}, [Lcom/couchbase/lite/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/couchbase/lite/LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/LogLevel;->DEBUG:Lcom/couchbase/lite/LogLevel;

    new-instance v1, Lcom/couchbase/lite/LogLevel;

    const-string v2, "VERBOSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/couchbase/lite/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/couchbase/lite/LogLevel;->VERBOSE:Lcom/couchbase/lite/LogLevel;

    new-instance v2, Lcom/couchbase/lite/LogLevel;

    const-string v3, "INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/couchbase/lite/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/couchbase/lite/LogLevel;->INFO:Lcom/couchbase/lite/LogLevel;

    new-instance v3, Lcom/couchbase/lite/LogLevel;

    const-string v4, "WARNING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/couchbase/lite/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/couchbase/lite/LogLevel;->WARNING:Lcom/couchbase/lite/LogLevel;

    new-instance v4, Lcom/couchbase/lite/LogLevel;

    const-string v5, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/couchbase/lite/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/couchbase/lite/LogLevel;->ERROR:Lcom/couchbase/lite/LogLevel;

    new-instance v5, Lcom/couchbase/lite/LogLevel;

    const-string v6, "NONE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/couchbase/lite/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/couchbase/lite/LogLevel;->NONE:Lcom/couchbase/lite/LogLevel;

    invoke-static {}, Lcom/couchbase/lite/LogLevel;->$values()[Lcom/couchbase/lite/LogLevel;

    move-result-object v6

    sput-object v6, Lcom/couchbase/lite/LogLevel;->$VALUES:[Lcom/couchbase/lite/LogLevel;

    new-instance v6, Ljava/util/EnumMap;

    const-class v7, Lcom/couchbase/lite/LogLevel;

    invoke-direct {v6, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v6, Lcom/couchbase/lite/LogLevel;->LEVELS:Ljava/util/EnumMap;

    const-string v7, "D"

    invoke-virtual {v6, v0, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "V"

    invoke-virtual {v6, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "I"

    invoke-virtual {v6, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "W"

    invoke-virtual {v6, v3, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "E"

    invoke-virtual {v6, v4, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ""

    invoke-virtual {v6, v5, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/LogLevel;
    .locals 1

    const-class v0, Lcom/couchbase/lite/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/LogLevel;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogLevel;->$VALUES:[Lcom/couchbase/lite/LogLevel;

    invoke-virtual {v0}, [Lcom/couchbase/lite/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/LogLevel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/LogLevel;->LEVELS:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Unrecognized log level: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "?"

    return-object p0
.end method
