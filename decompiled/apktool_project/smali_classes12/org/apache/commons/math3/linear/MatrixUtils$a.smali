.class public Lorg/apache/commons/math3/linear/MatrixUtils$a;
.super Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/MatrixUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor<",
        "Lorg/apache/commons/math3/fraction/BigFraction;",
        ">;"
    }
.end annotation


# instance fields
.field public b:[[D


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;-><init>(Lorg/apache/commons/math3/FieldElement;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    iget-object p0, p0, Lorg/apache/commons/math3/linear/MatrixUtils$a;->b:[[D

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v0
.end method

.method public b(IILorg/apache/commons/math3/fraction/BigFraction;)V
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/linear/MatrixUtils$a;->b:[[D

    aget-object p0, p0, p1

    invoke-virtual {p3}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method public start(IIIIII)V
    .locals 0

    filled-new-array {p1, p2}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/MatrixUtils$a;->b:[[D

    return-void
.end method

.method public bridge synthetic visit(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0

    check-cast p3, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/MatrixUtils$a;->b(IILorg/apache/commons/math3/fraction/BigFraction;)V

    return-void
.end method
