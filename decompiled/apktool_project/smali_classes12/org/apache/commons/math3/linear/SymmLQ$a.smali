.class public Lorg/apache/commons/math3/linear/SymmLQ$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/SymmLQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final F:D

.field public static final G:D


# instance fields
.field public A:Lorg/apache/commons/math3/linear/RealVector;

.field public final B:Lorg/apache/commons/math3/linear/RealVector;

.field public C:Lorg/apache/commons/math3/linear/RealVector;

.field public D:D

.field public E:Z

.field public final a:Lorg/apache/commons/math3/linear/RealLinearOperator;

.field public final b:Lorg/apache/commons/math3/linear/RealVector;

.field public final c:Z

.field public final d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:D

.field public j:D

.field public k:D

.field public l:D

.field public m:D

.field public final n:Z

.field public o:Z

.field public p:D

.field public final q:Lorg/apache/commons/math3/linear/RealLinearOperator;

.field public r:D

.field public final s:Lorg/apache/commons/math3/linear/RealVector;

.field public t:D

.field public u:Lorg/apache/commons/math3/linear/RealVector;

.field public v:Lorg/apache/commons/math3/linear/RealVector;

.field public w:D

.field public final x:D

.field public y:D

.field public z:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->G:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->F:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZDDZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iput-object p2, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->q:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iput-object p3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->b:Lorg/apache/commons/math3/linear/RealVector;

    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->B:Lorg/apache/commons/math3/linear/RealVector;

    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->n:Z

    iput-wide p5, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->x:D

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->s:Lorg/apache/commons/math3/linear/RealVector;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->o:Z

    iput-boolean p9, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->c:Z

    iput-wide p7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->d:D

    return-void
.end method

.method public static c(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;
        }
    .end annotation

    invoke-virtual {p2, p2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    invoke-virtual {p1, p3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    sget-wide v4, Lorg/apache/commons/math3/linear/SymmLQ$a;->G:D

    add-double/2addr v4, v0

    sget-wide v6, Lorg/apache/commons/math3/linear/SymmLQ$a;->F:D

    mul-double/2addr v4, v6

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpl-double p3, v0, v4

    if-gtz p3, :cond_0

    return-void

    :cond_0
    new-instance p3, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;

    invoke-direct {p3}, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;-><init>()V

    invoke-virtual {p3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    const-string v1, "operator"

    invoke-virtual {v0, v1, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "vector1"

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "vector2"

    invoke-virtual {v0, p0, p2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "threshold"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    throw p3
.end method

.method public static d(DLorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6

    invoke-virtual {p6}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p5, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    invoke-virtual {p6, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p6, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static e(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p3, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p3, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static j(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    const-string v2, "operator"

    invoke-virtual {v1, v2, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "vector"

    invoke-virtual {v1, p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->E:Z

    return p0
.end method

.method public b()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    sget-wide v2, Lorg/apache/commons/math3/linear/SymmLQ$a;->G:D

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->w:D

    return-wide v0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->o:Z

    return p0
.end method

.method public h()V
    .locals 11

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->B:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->u:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->q:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-nez v3, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->q:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->c:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->u:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-static {v3, v4, v0, v5}, Lorg/apache/commons/math3/linear/SymmLQ$a;->c(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->u:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->f:D

    cmpg-double v0, v3, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->q:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v0, v3}, Lorg/apache/commons/math3/linear/SymmLQ$a;->j(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->f:D

    cmpl-double v0, v3, v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->E:Z

    return-void

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->E:Z

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->f:D

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->c:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    invoke-static {v4, v0, v3, v7}, Lorg/apache/commons/math3/linear/SymmLQ$a;->c(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    :cond_4
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->x:D

    neg-double v3, v3

    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v3, v4, v0, v7}, Lorg/apache/commons/math3/linear/SymmLQ$a;->e(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v3

    neg-double v7, v3

    iget-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->f:D

    div-double/2addr v7, v9

    iget-object v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->u:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/linear/SymmLQ$a;->e(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v7

    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v9

    neg-double v7, v7

    div-double/2addr v7, v9

    iget-object v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v7, v8, v0, v9}, Lorg/apache/commons/math3/linear/SymmLQ$a;->e(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->v:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->q:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v8, :cond_5

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    :cond_5
    iget-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->f:D

    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->t:D

    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->v:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v7

    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    cmpg-double v7, v7, v1

    if-gez v7, :cond_6

    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->q:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v7, v8}, Lorg/apache/commons/math3/linear/SymmLQ$a;->j(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    :cond_6
    iget-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    iget-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->f:D

    iput-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->h:D

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->k:D

    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->i:D

    iput-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->j:D

    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->r:D

    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->g:D

    iput-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->y:D

    mul-double v5, v3, v3

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->z:D

    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->D:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    sget-wide v5, Lorg/apache/commons/math3/linear/SymmLQ$a;->G:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->l:D

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->m:D

    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->n:Z

    if-eqz v3, :cond_7

    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->A:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    goto :goto_1

    :cond_7
    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->A:Lorg/apache/commons/math3/linear/RealVector;

    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SymmLQ$a;->l()V

    return-void
.end method

.method public i(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 13

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->B:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    iget-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->p:D

    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->h:D

    cmpg-double v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->n:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->B:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p1, v2, p0}, Lorg/apache/commons/math3/linear/RealVector;->setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V

    goto :goto_3

    :cond_0
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->g:D

    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->f:D

    div-double/2addr v3, v5

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->s:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->B:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v7

    mul-double/2addr v5, v3

    add-double/2addr v7, v5

    invoke-virtual {p1, v2, v7, v8}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->z:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->k:D

    const-wide/16 v7, 0x0

    cmpl-double v1, v5, v7

    if-nez v1, :cond_2

    sget-wide v5, Lorg/apache/commons/math3/linear/SymmLQ$a;->G:D

    mul-double/2addr v5, v3

    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->j:D

    div-double/2addr v3, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->g:D

    iget-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->y:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iget-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->f:D

    div-double/2addr v5, v7

    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->n:Z

    if-nez v1, :cond_3

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->B:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->A:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v7

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    invoke-virtual {p1, v2, v5, v6}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v2, v0, :cond_4

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->B:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v7

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->A:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v9

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->s:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v11

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    mul-double/2addr v11, v5

    add-double/2addr v7, v11

    invoke-virtual {p1, v2, v7, v8}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public k()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->x:D

    neg-double v4, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    neg-double v2, v2

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->t:D

    div-double v7, v2, v6

    iget-object v9, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->u:Lorg/apache/commons/math3/linear/RealVector;

    move-object v6, v1

    invoke-static/range {v4 .. v10}, Lorg/apache/commons/math3/linear/SymmLQ$a;->d(DLorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    neg-double v4, v2

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    div-double/2addr v4, v6

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->v:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/SymmLQ$a;->e(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->v:Lorg/apache/commons/math3/linear/RealVector;

    iput-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->u:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    iput-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->v:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->q:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    :cond_0
    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->t:D

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->v:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->q:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->C:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v4, v5}, Lorg/apache/commons/math3/linear/SymmLQ$a;->j(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    :cond_1
    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->z:D

    mul-double v8, v2, v2

    iget-wide v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->t:D

    mul-double v12, v10, v10

    add-double/2addr v8, v12

    mul-double/2addr v4, v4

    add-double/2addr v8, v4

    add-double/2addr v6, v8

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->z:D

    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->k:D

    mul-double/2addr v4, v4

    mul-double/2addr v10, v10

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->k:D

    div-double/2addr v6, v4

    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->t:D

    div-double/2addr v8, v4

    iget-wide v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->i:D

    mul-double v12, v6, v10

    mul-double v14, v8, v2

    add-double/2addr v12, v14

    mul-double/2addr v10, v8

    mul-double/2addr v2, v6

    sub-double/2addr v10, v2

    iput-wide v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->k:D

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    mul-double v10, v8, v2

    neg-double v14, v6

    mul-double/2addr v14, v2

    iput-wide v14, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->i:D

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->j:D

    div-double/2addr v2, v4

    mul-double v14, v2, v6

    mul-double v16, v2, v8

    move-wide/from16 v18, v10

    iget-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->B:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v10}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_2

    move/from16 v20, v10

    iget-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->B:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v21

    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v23

    iget-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->A:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v25

    iget-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->B:Lorg/apache/commons/math3/linear/RealVector;

    mul-double v27, v25, v14

    add-double v21, v21, v27

    mul-double v27, v23, v16

    move-wide/from16 v29, v14

    add-double v14, v21, v27

    invoke-virtual {v10, v11, v14, v15}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    iget-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->A:Lorg/apache/commons/math3/linear/RealVector;

    mul-double v25, v25, v8

    mul-double v23, v23, v6

    sub-double v14, v25, v23

    invoke-virtual {v10, v11, v14, v15}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v20

    move-wide/from16 v14, v29

    goto :goto_0

    :cond_2
    iget-wide v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->g:D

    iget-wide v14, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->y:D

    mul-double/2addr v6, v14

    mul-double/2addr v6, v2

    add-double/2addr v10, v6

    iput-wide v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->g:D

    mul-double/2addr v14, v8

    iput-wide v14, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->y:D

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->l:D

    invoke-static {v6, v7, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->l:D

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->m:D

    invoke-static {v6, v7, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->m:D

    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->D:D

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->D:D

    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->r:D

    mul-double/2addr v12, v2

    sub-double/2addr v4, v12

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->j:D

    move-wide/from16 v8, v18

    neg-double v4, v8

    mul-double/2addr v4, v2

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$a;->r:D

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/SymmLQ$a;->l()V

    return-void
.end method

.method public final l()V
    .locals 12

    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->z:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->D:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    sget-wide v4, Lorg/apache/commons/math3/linear/SymmLQ$a;->G:D

    mul-double v6, v0, v4

    mul-double/2addr v0, v2

    mul-double v2, v0, v4

    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->d:D

    mul-double/2addr v0, v8

    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->k:D

    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v8

    :goto_0
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->j:D

    mul-double/2addr v8, v8

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->r:D

    mul-double/2addr v10, v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->p:D

    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->y:D

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->f:D

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->e:D

    mul-double/2addr v8, v10

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->h:D

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->p:D

    cmpg-double v8, v10, v8

    if-gtz v8, :cond_1

    iget-wide v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->l:D

    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->m:D

    div-double/2addr v6, v8

    goto :goto_1

    :cond_1
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->l:D

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->m:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v10, v11, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    div-double v6, v8, v6

    :goto_1
    mul-double/2addr v4, v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v4, v8

    if-gez v4, :cond_5

    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->f:D

    cmpg-double v4, v4, v2

    if-lez v4, :cond_4

    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->h:D

    iget-wide v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->p:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->w:D

    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->h:D

    cmpg-double v2, v4, v2

    if-lez v2, :cond_3

    cmpg-double v0, v4, v0

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$a;->o:Z

    return-void

    :cond_4
    new-instance p0, Lorg/apache/commons/math3/linear/SingularOperatorException;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SingularOperatorException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Lorg/apache/commons/math3/linear/IllConditionedOperatorException;

    invoke-direct {p0, v6, v7}, Lorg/apache/commons/math3/linear/IllConditionedOperatorException;-><init>(D)V

    throw p0
.end method
