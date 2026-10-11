.class public final enum Lcom/onyx/engine/sdk/LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/engine/sdk/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onyx/engine/sdk/LogLevel;

.field public static final enum CRITICAL:Lcom/onyx/engine/sdk/LogLevel;

.field public static final enum DEBUG:Lcom/onyx/engine/sdk/LogLevel;

.field public static final enum ERROR:Lcom/onyx/engine/sdk/LogLevel;

.field public static final enum INFO:Lcom/onyx/engine/sdk/LogLevel;

.field public static final enum OFF:Lcom/onyx/engine/sdk/LogLevel;

.field public static final enum TRACE:Lcom/onyx/engine/sdk/LogLevel;

.field public static final enum WARN:Lcom/onyx/engine/sdk/LogLevel;


# direct methods
.method private static synthetic $values()[Lcom/onyx/engine/sdk/LogLevel;
    .locals 7

    sget-object v0, Lcom/onyx/engine/sdk/LogLevel;->TRACE:Lcom/onyx/engine/sdk/LogLevel;

    sget-object v1, Lcom/onyx/engine/sdk/LogLevel;->DEBUG:Lcom/onyx/engine/sdk/LogLevel;

    sget-object v2, Lcom/onyx/engine/sdk/LogLevel;->INFO:Lcom/onyx/engine/sdk/LogLevel;

    sget-object v3, Lcom/onyx/engine/sdk/LogLevel;->WARN:Lcom/onyx/engine/sdk/LogLevel;

    sget-object v4, Lcom/onyx/engine/sdk/LogLevel;->ERROR:Lcom/onyx/engine/sdk/LogLevel;

    sget-object v5, Lcom/onyx/engine/sdk/LogLevel;->CRITICAL:Lcom/onyx/engine/sdk/LogLevel;

    sget-object v6, Lcom/onyx/engine/sdk/LogLevel;->OFF:Lcom/onyx/engine/sdk/LogLevel;

    filled-new-array/range {v0 .. v6}, [Lcom/onyx/engine/sdk/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/engine/sdk/LogLevel;

    const-string v1, "TRACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LogLevel;->TRACE:Lcom/onyx/engine/sdk/LogLevel;

    new-instance v0, Lcom/onyx/engine/sdk/LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LogLevel;->DEBUG:Lcom/onyx/engine/sdk/LogLevel;

    new-instance v0, Lcom/onyx/engine/sdk/LogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LogLevel;->INFO:Lcom/onyx/engine/sdk/LogLevel;

    new-instance v0, Lcom/onyx/engine/sdk/LogLevel;

    const-string v1, "WARN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LogLevel;->WARN:Lcom/onyx/engine/sdk/LogLevel;

    new-instance v0, Lcom/onyx/engine/sdk/LogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LogLevel;->ERROR:Lcom/onyx/engine/sdk/LogLevel;

    new-instance v0, Lcom/onyx/engine/sdk/LogLevel;

    const-string v1, "CRITICAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LogLevel;->CRITICAL:Lcom/onyx/engine/sdk/LogLevel;

    new-instance v0, Lcom/onyx/engine/sdk/LogLevel;

    const-string v1, "OFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/onyx/engine/sdk/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/engine/sdk/LogLevel;->OFF:Lcom/onyx/engine/sdk/LogLevel;

    invoke-static {}, Lcom/onyx/engine/sdk/LogLevel;->$values()[Lcom/onyx/engine/sdk/LogLevel;

    move-result-object v0

    sput-object v0, Lcom/onyx/engine/sdk/LogLevel;->$VALUES:[Lcom/onyx/engine/sdk/LogLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/engine/sdk/LogLevel;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/onyx/engine/sdk/LogLevel;
    .locals 1

    sget-object v0, Lcom/onyx/engine/sdk/LogLevel;->$VALUES:[Lcom/onyx/engine/sdk/LogLevel;

    invoke-virtual {v0}, [Lcom/onyx/engine/sdk/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/engine/sdk/LogLevel;

    return-object v0
.end method
