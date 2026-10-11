.class public final enum Lcom/couchbase/lite/ConcurrencyControl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/ConcurrencyControl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/ConcurrencyControl;

.field public static final enum FAIL_ON_CONFLICT:Lcom/couchbase/lite/ConcurrencyControl;

.field public static final enum LAST_WRITE_WINS:Lcom/couchbase/lite/ConcurrencyControl;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/ConcurrencyControl;
    .locals 2

    sget-object v0, Lcom/couchbase/lite/ConcurrencyControl;->LAST_WRITE_WINS:Lcom/couchbase/lite/ConcurrencyControl;

    sget-object v1, Lcom/couchbase/lite/ConcurrencyControl;->FAIL_ON_CONFLICT:Lcom/couchbase/lite/ConcurrencyControl;

    filled-new-array {v0, v1}, [Lcom/couchbase/lite/ConcurrencyControl;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/ConcurrencyControl;

    const-string v1, "LAST_WRITE_WINS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/couchbase/lite/ConcurrencyControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/ConcurrencyControl;->LAST_WRITE_WINS:Lcom/couchbase/lite/ConcurrencyControl;

    new-instance v0, Lcom/couchbase/lite/ConcurrencyControl;

    const-string v1, "FAIL_ON_CONFLICT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/couchbase/lite/ConcurrencyControl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/couchbase/lite/ConcurrencyControl;->FAIL_ON_CONFLICT:Lcom/couchbase/lite/ConcurrencyControl;

    invoke-static {}, Lcom/couchbase/lite/ConcurrencyControl;->$values()[Lcom/couchbase/lite/ConcurrencyControl;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/ConcurrencyControl;->$VALUES:[Lcom/couchbase/lite/ConcurrencyControl;

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

    iput p3, p0, Lcom/couchbase/lite/ConcurrencyControl;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/ConcurrencyControl;
    .locals 1

    const-class v0, Lcom/couchbase/lite/ConcurrencyControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/ConcurrencyControl;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/ConcurrencyControl;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/ConcurrencyControl;->$VALUES:[Lcom/couchbase/lite/ConcurrencyControl;

    invoke-virtual {v0}, [Lcom/couchbase/lite/ConcurrencyControl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/ConcurrencyControl;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/ConcurrencyControl;->value:I

    return p0
.end method
