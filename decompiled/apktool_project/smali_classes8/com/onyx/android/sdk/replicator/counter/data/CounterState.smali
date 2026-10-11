.class public final enum Lcom/onyx/android/sdk/replicator/counter/data/CounterState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onyx/android/sdk/replicator/counter/data/CounterState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/counter/data/CounterState;",
        "",
        "(Ljava/lang/String;I)V",
        "STATE_IDLE",
        "STATE_RUNNING",
        "STATE_PAUSE",
        "sdk-replicator_overseasRelease"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

.field public static final enum STATE_IDLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

.field public static final enum STATE_PAUSE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

.field public static final enum STATE_RUNNING:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;


# direct methods
.method private static final synthetic $values()[Lcom/onyx/android/sdk/replicator/counter/data/CounterState;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_IDLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    sget-object v1, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_RUNNING:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    sget-object v2, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_PAUSE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    filled-new-array {v0, v1, v2}, [Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    const-string v1, "STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_IDLE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    new-instance v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    const-string v1, "STATE_RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_RUNNING:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    new-instance v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    const-string v1, "STATE_PAUSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->STATE_PAUSE:Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    invoke-static {}, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->$values()[Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->$VALUES:[Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/onyx/android/sdk/replicator/counter/data/CounterState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/counter/data/CounterState;
    .locals 1

    const-class v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    return-object p0
.end method

.method public static values()[Lcom/onyx/android/sdk/replicator/counter/data/CounterState;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/counter/data/CounterState;->$VALUES:[Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onyx/android/sdk/replicator/counter/data/CounterState;

    return-object v0
.end method
