.class public final enum Lcom/couchbase/lite/DocumentFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/DocumentFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/DocumentFlag;

.field public static final enum ACCESS_REMOVED:Lcom/couchbase/lite/DocumentFlag;

.field public static final enum DELETED:Lcom/couchbase/lite/DocumentFlag;


# instance fields
.field private final rawValue:I


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/DocumentFlag;
    .locals 2

    sget-object v0, Lcom/couchbase/lite/DocumentFlag;->DELETED:Lcom/couchbase/lite/DocumentFlag;

    sget-object v1, Lcom/couchbase/lite/DocumentFlag;->ACCESS_REMOVED:Lcom/couchbase/lite/DocumentFlag;

    filled-new-array {v0, v1}, [Lcom/couchbase/lite/DocumentFlag;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/couchbase/lite/DocumentFlag;

    const-string v1, "DELETED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/couchbase/lite/DocumentFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/DocumentFlag;->DELETED:Lcom/couchbase/lite/DocumentFlag;

    new-instance v0, Lcom/couchbase/lite/DocumentFlag;

    const-string v1, "ACCESS_REMOVED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/couchbase/lite/DocumentFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/DocumentFlag;->ACCESS_REMOVED:Lcom/couchbase/lite/DocumentFlag;

    invoke-static {}, Lcom/couchbase/lite/DocumentFlag;->$values()[Lcom/couchbase/lite/DocumentFlag;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/DocumentFlag;->$VALUES:[Lcom/couchbase/lite/DocumentFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/couchbase/lite/DocumentFlag;->rawValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/DocumentFlag;
    .locals 1

    const-class v0, Lcom/couchbase/lite/DocumentFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/DocumentFlag;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/DocumentFlag;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/DocumentFlag;->$VALUES:[Lcom/couchbase/lite/DocumentFlag;

    invoke-virtual {v0}, [Lcom/couchbase/lite/DocumentFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/DocumentFlag;

    return-object v0
.end method


# virtual methods
.method public rawValue()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/DocumentFlag;->rawValue:I

    return p0
.end method
