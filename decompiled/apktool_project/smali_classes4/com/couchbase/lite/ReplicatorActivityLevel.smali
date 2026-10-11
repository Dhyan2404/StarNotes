.class public final enum Lcom/couchbase/lite/ReplicatorActivityLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/ReplicatorActivityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/ReplicatorActivityLevel;

.field public static final enum BUSY:Lcom/couchbase/lite/ReplicatorActivityLevel;

.field public static final enum CONNECTING:Lcom/couchbase/lite/ReplicatorActivityLevel;

.field public static final enum IDLE:Lcom/couchbase/lite/ReplicatorActivityLevel;

.field public static final enum OFFLINE:Lcom/couchbase/lite/ReplicatorActivityLevel;

.field public static final enum STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/ReplicatorActivityLevel;
    .locals 5

    sget-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    sget-object v1, Lcom/couchbase/lite/ReplicatorActivityLevel;->OFFLINE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    sget-object v2, Lcom/couchbase/lite/ReplicatorActivityLevel;->CONNECTING:Lcom/couchbase/lite/ReplicatorActivityLevel;

    sget-object v3, Lcom/couchbase/lite/ReplicatorActivityLevel;->IDLE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    sget-object v4, Lcom/couchbase/lite/ReplicatorActivityLevel;->BUSY:Lcom/couchbase/lite/ReplicatorActivityLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/ReplicatorActivityLevel;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ReplicatorActivityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    new-instance v0, Lcom/couchbase/lite/ReplicatorActivityLevel;

    const-string v1, "OFFLINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ReplicatorActivityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->OFFLINE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    new-instance v0, Lcom/couchbase/lite/ReplicatorActivityLevel;

    const-string v1, "CONNECTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ReplicatorActivityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->CONNECTING:Lcom/couchbase/lite/ReplicatorActivityLevel;

    new-instance v0, Lcom/couchbase/lite/ReplicatorActivityLevel;

    const-string v1, "IDLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ReplicatorActivityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->IDLE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    new-instance v0, Lcom/couchbase/lite/ReplicatorActivityLevel;

    const-string v1, "BUSY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ReplicatorActivityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->BUSY:Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-static {}, Lcom/couchbase/lite/ReplicatorActivityLevel;->$values()[Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->$VALUES:[Lcom/couchbase/lite/ReplicatorActivityLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/ReplicatorActivityLevel;
    .locals 1

    const-class v0, Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/ReplicatorActivityLevel;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/ReplicatorActivityLevel;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->$VALUES:[Lcom/couchbase/lite/ReplicatorActivityLevel;

    invoke-virtual {v0}, [Lcom/couchbase/lite/ReplicatorActivityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/ReplicatorActivityLevel;

    return-object v0
.end method
