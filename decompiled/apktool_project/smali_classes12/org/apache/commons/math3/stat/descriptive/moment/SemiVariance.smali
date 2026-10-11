.class public Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
    }
.end annotation


# static fields
.field public static final DOWNSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

.field public static final UPSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

.field private static final serialVersionUID:J = -0x24d2e0dc3679d722L


# instance fields
.field private biasCorrected:Z

.field private varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->UPSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->UPSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    sput-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->DOWNSIDE_VARIANCE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 3
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 10
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 11
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 19
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 20
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 6
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 7
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 14
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->DOWNSIDE:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    .line 15
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 16
    iput-object p2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([D)V

    .line 7
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    iput-boolean v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    .line 8
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iput-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;-><init>()V

    .line 3
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;)V

    return-object v0
.end method

.method public evaluate([DD)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 5
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v6, 0x0

    array-length v7, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 6
    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v6, 0x0

    array-length v7, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p6, p7}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([DII)Z

    .line 8
    array-length p0, p1

    if-nez p0, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    .line 9
    :cond_0
    array-length p0, p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    return-wide v0

    .line 10
    :cond_1
    invoke-virtual {p4}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;->getDirection()Z

    move-result p0

    :goto_0
    if-ge p6, p7, :cond_4

    .line 11
    aget-wide v3, p1, p6

    cmpl-double p4, v3, p2

    if-lez p4, :cond_2

    move p4, v2

    goto :goto_1

    :cond_2
    const/4 p4, 0x0

    :goto_1
    if-ne p4, p0, :cond_3

    sub-double/2addr v3, p2

    mul-double/2addr v3, v3

    add-double/2addr v0, v3

    :cond_3
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_4
    if-eqz p5, :cond_5

    int-to-double p0, p7

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, p2

    :goto_2
    div-double/2addr v0, p0

    return-wide v0

    :cond_5
    int-to-double p0, p7

    goto :goto_2
.end method

.method public evaluate([DII)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->evaluate([DII)D

    move-result-wide v3

    .line 2
    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    iget-boolean v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v7, 0x0

    array-length v8, p1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([DLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->evaluate([D)D

    move-result-wide v3

    .line 4
    iget-boolean v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    const/4 v7, 0x0

    array-length v8, p1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->evaluate([DDLorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;ZII)D

    move-result-wide p0

    return-wide p0
.end method

.method public getVarianceDirection()Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-object p0
.end method

.method public isBiasCorrected()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    return p0
.end method

.method public setBiasCorrected(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->biasCorrected:Z

    return-void
.end method

.method public setVarianceDirection(Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance;->varianceDirection:Lorg/apache/commons/math3/stat/descriptive/moment/SemiVariance$Direction;

    return-void
.end method
