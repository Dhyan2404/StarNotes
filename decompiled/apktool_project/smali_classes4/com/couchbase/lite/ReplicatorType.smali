.class public final enum Lcom/couchbase/lite/ReplicatorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/ReplicatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/ReplicatorType;

.field public static final enum PULL:Lcom/couchbase/lite/ReplicatorType;

.field public static final enum PUSH:Lcom/couchbase/lite/ReplicatorType;

.field public static final enum PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/ReplicatorType;
    .locals 3

    sget-object v0, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    sget-object v1, Lcom/couchbase/lite/ReplicatorType;->PUSH:Lcom/couchbase/lite/ReplicatorType;

    sget-object v2, Lcom/couchbase/lite/ReplicatorType;->PULL:Lcom/couchbase/lite/ReplicatorType;

    filled-new-array {v0, v1, v2}, [Lcom/couchbase/lite/ReplicatorType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/ReplicatorType;

    const-string v1, "PUSH_AND_PULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ReplicatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    new-instance v0, Lcom/couchbase/lite/ReplicatorType;

    const-string v1, "PUSH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ReplicatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ReplicatorType;->PUSH:Lcom/couchbase/lite/ReplicatorType;

    new-instance v0, Lcom/couchbase/lite/ReplicatorType;

    const-string v1, "PULL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ReplicatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ReplicatorType;->PULL:Lcom/couchbase/lite/ReplicatorType;

    invoke-static {}, Lcom/couchbase/lite/ReplicatorType;->$values()[Lcom/couchbase/lite/ReplicatorType;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/ReplicatorType;->$VALUES:[Lcom/couchbase/lite/ReplicatorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/ReplicatorType;
    .locals 1

    const-class v0, Lcom/couchbase/lite/ReplicatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/ReplicatorType;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/ReplicatorType;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/ReplicatorType;->$VALUES:[Lcom/couchbase/lite/ReplicatorType;

    invoke-virtual {v0}, [Lcom/couchbase/lite/ReplicatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/ReplicatorType;

    return-object v0
.end method
