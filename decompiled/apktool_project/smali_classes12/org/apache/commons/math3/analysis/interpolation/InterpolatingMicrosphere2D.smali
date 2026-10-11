.class public Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;
.super Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
.source "SourceFile"


# static fields
.field public static final h:I = 0x2


# direct methods
.method public constructor <init>(IDDD)V
    .locals 10

    move v9, p1

    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    .line 1
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(IIDDD)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v9, :cond_0

    int-to-double v2, v1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    int-to-double v4, v9

    div-double/2addr v2, v4

    const/4 v4, 0x2

    new-array v4, v4, [D

    .line 2
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v5

    aput-wide v5, v4, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    const/4 v5, 0x1

    aput-wide v2, v4, v5

    move-object v2, p0

    invoke-virtual {p0, v4, v0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->add([DZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;-><init>(Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;->copy()Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere2D;

    move-result-object p0

    return-object p0
.end method
