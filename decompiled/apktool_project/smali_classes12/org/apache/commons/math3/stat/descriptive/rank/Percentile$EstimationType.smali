.class public abstract enum Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "EstimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum LEGACY:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_1:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_2:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_3:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_4:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_5:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_6:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_7:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_8:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field public static final enum R_9:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$1;

    const-string v1, "Legacy Apache Commons Math"

    const-string v2, "LEGACY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->LEGACY:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$2;

    const-string v2, "R-1"

    const-string v4, "R_1"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_1:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$3;

    const-string v4, "R-2"

    const-string v6, "R_2"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_2:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    new-instance v4, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$4;

    const-string v6, "R-3"

    const-string v8, "R_3"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_3:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$5;

    const-string v8, "R-4"

    const-string v10, "R_4"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_4:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    new-instance v8, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$6;

    const-string v10, "R-5"

    const-string v12, "R_5"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_5:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    new-instance v10, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$7;

    const-string v12, "R-6"

    const-string v14, "R_6"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_6:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    new-instance v12, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$8;

    const-string v14, "R-7"

    const-string v15, "R_7"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_7:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    new-instance v14, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$9;

    const-string v15, "R-8"

    const-string v13, "R_8"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$9;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_8:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    new-instance v13, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$10;

    const-string v15, "R-9"

    const-string v11, "R_9"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType$10;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->R_9:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    const/16 v11, 0xa

    new-array v11, v11, [Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    aput-object v0, v11, v3

    aput-object v1, v11, v5

    aput-object v2, v11, v7

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v8, v11, v0

    const/4 v0, 0x6

    aput-object v10, v11, v0

    const/4 v0, 0x7

    aput-object v12, v11, v0

    const/16 v0, 0x8

    aput-object v14, v11, v0

    aput-object v13, v11, v9

    sput-object v11, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->$VALUES:[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->$VALUES:[Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-object v0
.end method


# virtual methods
.method public estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D
    .locals 4

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    sub-double v0, p3, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p3, v2

    if-gez v2, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p6, p1, p2, p0}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide p0

    return-wide p0

    :cond_0
    int-to-double v2, p5

    cmpl-double p3, p3, v2

    if-ltz p3, :cond_1

    add-int/lit8 p5, p5, -0x1

    invoke-virtual {p6, p1, p2, p5}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide p0

    return-wide p0

    :cond_1
    add-int/lit8 p3, p0, -0x1

    invoke-virtual {p6, p1, p2, p3}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide p3

    invoke-virtual {p6, p1, p2, p0}, Lorg/apache/commons/math3/util/KthSelector;->select([D[II)D

    move-result-wide p0

    sub-double/2addr p0, p3

    mul-double/2addr v0, p0

    add-double/2addr p3, v0

    return-wide p3
.end method

.method public evaluate([DDLorg/apache/commons/math3/util/KthSelector;)D
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->evaluate([D[IDLorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([D[IDLorg/apache/commons/math3/util/KthSelector;)D
    .locals 8

    .line 1
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v2, p3, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v2, p3, v2

    if-lez v2, :cond_0

    div-double/2addr p3, v0

    .line 2
    array-length v0, p1

    invoke-virtual {p0, p3, p4, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->index(DI)D

    move-result-wide v4

    array-length v6, p1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->estimate([D[IDILorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide p0

    return-wide p0

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x64

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->name:Ljava/lang/String;

    return-object p0
.end method

.method public abstract index(DI)D
.end method
