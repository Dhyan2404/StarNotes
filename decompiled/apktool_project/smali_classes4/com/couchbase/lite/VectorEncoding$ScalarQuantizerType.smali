.class public final enum Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/VectorEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScalarQuantizerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

.field public static final enum SQ4:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

.field public static final enum SQ6:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

.field public static final enum SQ8:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;


# instance fields
.field private final bits:J


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;
    .locals 3

    sget-object v0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->SQ4:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    sget-object v1, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->SQ6:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    sget-object v2, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->SQ8:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    filled-new-array {v0, v1, v2}, [Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    const/4 v1, 0x0

    const-wide/16 v2, 0x4

    const-string v4, "SQ4"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->SQ4:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    new-instance v0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    const/4 v1, 0x1

    const-wide/16 v2, 0x6

    const-string v4, "SQ6"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->SQ6:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    new-instance v0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    const/4 v1, 0x2

    const-wide/16 v2, 0x8

    const-string v4, "SQ8"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->SQ8:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    invoke-static {}, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->$values()[Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->$VALUES:[Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->bits:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;
    .locals 1

    const-class v0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->$VALUES:[Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    invoke-virtual {v0}, [Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    return-object v0
.end method


# virtual methods
.method public getBits()J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->bits:J

    return-wide v0
.end method
