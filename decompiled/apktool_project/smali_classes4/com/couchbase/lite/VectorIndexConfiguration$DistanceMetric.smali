.class public final enum Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/VectorIndexConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DistanceMetric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

.field public static final enum COSINE:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

.field public static final enum DOT:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

.field public static final enum EUCLIDEAN:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

.field public static final enum EUCLIDEAN_SQUARED:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;


# instance fields
.field private final code:I

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;
    .locals 4

    sget-object v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->EUCLIDEAN_SQUARED:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    sget-object v1, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->COSINE:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    sget-object v2, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->EUCLIDEAN:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    sget-object v3, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->DOT:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    filled-new-array {v0, v1, v2, v3}, [Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    const-string v1, "EUCLIDEAN_SQUARED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->EUCLIDEAN_SQUARED:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    new-instance v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    const-string v1, "COSINE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v1, v2}, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->COSINE:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    new-instance v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    const-string v1, "EUCLIDEAN"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->EUCLIDEAN:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    new-instance v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    const-string v1, "DOT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v1, v2}, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->DOT:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    invoke-static {}, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->$values()[Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->$VALUES:[Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->name:Ljava/lang/String;

    iput p4, p0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;
    .locals 1

    const-class v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    return-object p0
.end method

.method public static values()[Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;
    .locals 1

    sget-object v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->$VALUES:[Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    invoke-virtual {v0}, [Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->code:I

    return p0
.end method

.method public getSQLName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->name:Ljava/lang/String;

    return-object p0
.end method
