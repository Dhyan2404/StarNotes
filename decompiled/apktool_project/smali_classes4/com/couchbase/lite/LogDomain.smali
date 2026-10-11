.class public final enum Lcom/couchbase/lite/LogDomain;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/LogDomain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/LogDomain;

.field public static final ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALL_DOMAINS:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/couchbase/lite/LogDomain;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DATABASE:Lcom/couchbase/lite/LogDomain;

.field public static final enum LISTENER:Lcom/couchbase/lite/LogDomain;

.field public static final enum NETWORK:Lcom/couchbase/lite/LogDomain;

.field public static final enum QUERY:Lcom/couchbase/lite/LogDomain;

.field public static final enum REPLICATOR:Lcom/couchbase/lite/LogDomain;


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/LogDomain;
    .locals 5

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    sget-object v1, Lcom/couchbase/lite/LogDomain;->QUERY:Lcom/couchbase/lite/LogDomain;

    sget-object v2, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    sget-object v3, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    sget-object v4, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/LogDomain;

    const-string v1, "DATABASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/LogDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lcom/couchbase/lite/LogDomain;

    const-string v1, "QUERY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/LogDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/LogDomain;->QUERY:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lcom/couchbase/lite/LogDomain;

    const-string v1, "REPLICATOR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/LogDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lcom/couchbase/lite/LogDomain;

    const-string v1, "NETWORK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/LogDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lcom/couchbase/lite/LogDomain;

    const-string v1, "LISTENER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/LogDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    invoke-static {}, Lcom/couchbase/lite/LogDomain;->$values()[Lcom/couchbase/lite/LogDomain;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/LogDomain;->$VALUES:[Lcom/couchbase/lite/LogDomain;

    const-class v0, Lcom/couchbase/lite/LogDomain;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/couchbase/lite/LogDomain;->ALL:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/LogDomain;->ALL_DOMAINS:Ljava/util/EnumSet;

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

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/LogDomain;
    .locals 1

    const-class v0, Lcom/couchbase/lite/LogDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/LogDomain;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/LogDomain;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->$VALUES:[Lcom/couchbase/lite/LogDomain;

    invoke-virtual {v0}, [Lcom/couchbase/lite/LogDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/LogDomain;

    return-object v0
.end method
