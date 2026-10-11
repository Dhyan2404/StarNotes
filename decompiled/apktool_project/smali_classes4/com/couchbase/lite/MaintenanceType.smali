.class public final enum Lcom/couchbase/lite/MaintenanceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/MaintenanceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/MaintenanceType;

.field public static final enum COMPACT:Lcom/couchbase/lite/MaintenanceType;

.field public static final enum FULL_OPTIMIZE:Lcom/couchbase/lite/MaintenanceType;

.field public static final enum INTEGRITY_CHECK:Lcom/couchbase/lite/MaintenanceType;

.field public static final enum OPTIMIZE:Lcom/couchbase/lite/MaintenanceType;

.field public static final enum REINDEX:Lcom/couchbase/lite/MaintenanceType;


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/MaintenanceType;
    .locals 5

    sget-object v0, Lcom/couchbase/lite/MaintenanceType;->REINDEX:Lcom/couchbase/lite/MaintenanceType;

    sget-object v1, Lcom/couchbase/lite/MaintenanceType;->COMPACT:Lcom/couchbase/lite/MaintenanceType;

    sget-object v2, Lcom/couchbase/lite/MaintenanceType;->INTEGRITY_CHECK:Lcom/couchbase/lite/MaintenanceType;

    sget-object v3, Lcom/couchbase/lite/MaintenanceType;->OPTIMIZE:Lcom/couchbase/lite/MaintenanceType;

    sget-object v4, Lcom/couchbase/lite/MaintenanceType;->FULL_OPTIMIZE:Lcom/couchbase/lite/MaintenanceType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/couchbase/lite/MaintenanceType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/MaintenanceType;

    const-string v1, "REINDEX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/MaintenanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/MaintenanceType;->REINDEX:Lcom/couchbase/lite/MaintenanceType;

    new-instance v0, Lcom/couchbase/lite/MaintenanceType;

    const-string v1, "COMPACT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/MaintenanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/MaintenanceType;->COMPACT:Lcom/couchbase/lite/MaintenanceType;

    new-instance v0, Lcom/couchbase/lite/MaintenanceType;

    const-string v1, "INTEGRITY_CHECK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/MaintenanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/MaintenanceType;->INTEGRITY_CHECK:Lcom/couchbase/lite/MaintenanceType;

    new-instance v0, Lcom/couchbase/lite/MaintenanceType;

    const-string v1, "OPTIMIZE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/MaintenanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/MaintenanceType;->OPTIMIZE:Lcom/couchbase/lite/MaintenanceType;

    new-instance v0, Lcom/couchbase/lite/MaintenanceType;

    const-string v1, "FULL_OPTIMIZE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/MaintenanceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/MaintenanceType;->FULL_OPTIMIZE:Lcom/couchbase/lite/MaintenanceType;

    invoke-static {}, Lcom/couchbase/lite/MaintenanceType;->$values()[Lcom/couchbase/lite/MaintenanceType;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/MaintenanceType;->$VALUES:[Lcom/couchbase/lite/MaintenanceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/MaintenanceType;
    .locals 1

    const-class v0, Lcom/couchbase/lite/MaintenanceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/MaintenanceType;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/MaintenanceType;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/MaintenanceType;->$VALUES:[Lcom/couchbase/lite/MaintenanceType;

    invoke-virtual {v0}, [Lcom/couchbase/lite/MaintenanceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/MaintenanceType;

    return-object v0
.end method
