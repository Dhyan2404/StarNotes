.class public final enum Lcom/tencent/beacon/event/open/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/beacon/event/open/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/beacon/event/open/EventType;

.field public static final enum DT_NORMAL:Lcom/tencent/beacon/event/open/EventType;

.field public static final enum DT_REALTIME:Lcom/tencent/beacon/event/open/EventType;

.field public static final enum IMMEDIATE:Lcom/tencent/beacon/event/open/EventType;

.field public static final enum IMMEDIATE_MSF:Lcom/tencent/beacon/event/open/EventType;

.field public static final enum NORMAL:Lcom/tencent/beacon/event/open/EventType;

.field public static final enum REALTIME:Lcom/tencent/beacon/event/open/EventType;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/tencent/beacon/event/open/EventType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/beacon/event/open/EventType;->NORMAL:Lcom/tencent/beacon/event/open/EventType;

    new-instance v1, Lcom/tencent/beacon/event/open/EventType;

    const-string v2, "REALTIME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/beacon/event/open/EventType;->REALTIME:Lcom/tencent/beacon/event/open/EventType;

    new-instance v2, Lcom/tencent/beacon/event/open/EventType;

    const-string v3, "DT_NORMAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/tencent/beacon/event/open/EventType;->DT_NORMAL:Lcom/tencent/beacon/event/open/EventType;

    new-instance v3, Lcom/tencent/beacon/event/open/EventType;

    const-string v4, "DT_REALTIME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/tencent/beacon/event/open/EventType;->DT_REALTIME:Lcom/tencent/beacon/event/open/EventType;

    new-instance v4, Lcom/tencent/beacon/event/open/EventType;

    const-string v5, "IMMEDIATE_MSF"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/tencent/beacon/event/open/EventType;->IMMEDIATE_MSF:Lcom/tencent/beacon/event/open/EventType;

    new-instance v5, Lcom/tencent/beacon/event/open/EventType;

    const-string v6, "IMMEDIATE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/tencent/beacon/event/open/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/tencent/beacon/event/open/EventType;->IMMEDIATE:Lcom/tencent/beacon/event/open/EventType;

    filled-new-array/range {v0 .. v5}, [Lcom/tencent/beacon/event/open/EventType;

    move-result-object v0

    sput-object v0, Lcom/tencent/beacon/event/open/EventType;->$VALUES:[Lcom/tencent/beacon/event/open/EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/beacon/event/open/EventType;
    .locals 1

    const-class v0, Lcom/tencent/beacon/event/open/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/beacon/event/open/EventType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/beacon/event/open/EventType;
    .locals 1

    sget-object v0, Lcom/tencent/beacon/event/open/EventType;->$VALUES:[Lcom/tencent/beacon/event/open/EventType;

    invoke-virtual {v0}, [Lcom/tencent/beacon/event/open/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/beacon/event/open/EventType;

    return-object v0
.end method
