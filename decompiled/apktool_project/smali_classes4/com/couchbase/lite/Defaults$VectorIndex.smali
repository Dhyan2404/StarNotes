.class public final Lcom/couchbase/lite/Defaults$VectorIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Defaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VectorIndex"
.end annotation


# static fields
.field public static final DISTANCE_METRIC:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

.field public static final ENCODING:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

.field public static final IS_LAZY:Z

.field public static final MAX_TRAINING_SIZE:J

.field public static final MIN_TRAINING_SIZE:J

.field public static final NUM_PROBES:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;->SQ8:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    sput-object v0, Lcom/couchbase/lite/Defaults$VectorIndex;->ENCODING:Lcom/couchbase/lite/VectorEncoding$ScalarQuantizerType;

    sget-object v0, Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;->EUCLIDEAN_SQUARED:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    sput-object v0, Lcom/couchbase/lite/Defaults$VectorIndex;->DISTANCE_METRIC:Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
