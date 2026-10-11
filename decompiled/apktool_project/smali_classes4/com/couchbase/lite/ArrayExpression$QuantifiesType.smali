.class final enum Lcom/couchbase/lite/ArrayExpression$QuantifiesType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/ArrayExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuantifiesType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/ArrayExpression$QuantifiesType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

.field public static final enum ANY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

.field public static final enum ANY_AND_EVERY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

.field public static final enum EVERY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/ArrayExpression$QuantifiesType;
    .locals 3

    sget-object v0, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->ANY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    sget-object v1, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->ANY_AND_EVERY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    sget-object v2, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->EVERY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    filled-new-array {v0, v1, v2}, [Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->ANY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    new-instance v0, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    const-string v1, "ANY_AND_EVERY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->ANY_AND_EVERY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    new-instance v0, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    const-string v1, "EVERY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->EVERY:Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    invoke-static {}, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->$values()[Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->$VALUES:[Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/ArrayExpression$QuantifiesType;
    .locals 1

    const-class v0, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/ArrayExpression$QuantifiesType;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->$VALUES:[Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    invoke-virtual {v0}, [Lcom/couchbase/lite/ArrayExpression$QuantifiesType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/ArrayExpression$QuantifiesType;

    return-object v0
.end method
