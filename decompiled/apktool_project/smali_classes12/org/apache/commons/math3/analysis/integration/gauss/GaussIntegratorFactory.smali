.class public Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreRuleFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreRuleFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->a:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/integration/gauss/LegendreHighPrecisionRuleFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->b:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/HermiteRuleFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/integration/gauss/HermiteRuleFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->c:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    return-void
.end method

.method public static a(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory<",
            "+",
            "Ljava/lang/Number;",
            ">;I)",
            "Lorg/apache/commons/math3/util/Pair<",
            "[D[D>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;->getRule(I)Lorg/apache/commons/math3/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/apache/commons/math3/util/Pair;DD)Lorg/apache/commons/math3/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair<",
            "[D[D>;DD)",
            "Lorg/apache/commons/math3/util/Pair<",
            "[D[D>;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    sub-double/2addr p3, p1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double/2addr p3, v1

    add-double/2addr p1, p3

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-wide v2, v0, v1

    mul-double/2addr v2, p3

    add-double/2addr v2, p1

    aput-wide v2, v0, v1

    aget-wide v2, p0, v1

    mul-double/2addr v2, p3

    aput-wide v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public hermite(I)Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->c:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->a(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/integration/gauss/SymmetricGaussIntegrator;-><init>(Lorg/apache/commons/math3/util/Pair;)V

    return-object v0
.end method

.method public legendre(I)Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->a:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->a(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>(Lorg/apache/commons/math3/util/Pair;)V

    return-object v0
.end method

.method public legendre(IDD)Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->a:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->a(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;

    move-result-object p0

    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->b(Lorg/apache/commons/math3/util/Pair;DD)Lorg/apache/commons/math3/util/Pair;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>(Lorg/apache/commons/math3/util/Pair;)V

    return-object v0
.end method

.method public legendreHighPrecision(I)Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->b:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->a(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>(Lorg/apache/commons/math3/util/Pair;)V

    return-object v0
.end method

.method public legendreHighPrecision(IDD)Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->b:Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;

    invoke-static {p0, p1}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->a(Lorg/apache/commons/math3/analysis/integration/gauss/BaseRuleFactory;I)Lorg/apache/commons/math3/util/Pair;

    move-result-object p0

    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegratorFactory;->b(Lorg/apache/commons/math3/util/Pair;DD)Lorg/apache/commons/math3/util/Pair;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/analysis/integration/gauss/GaussIntegrator;-><init>(Lorg/apache/commons/math3/util/Pair;)V

    return-object v0
.end method
