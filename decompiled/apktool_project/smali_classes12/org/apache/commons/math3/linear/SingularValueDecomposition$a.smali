.class public Lorg/apache/commons/math3/linear/SingularValueDecomposition$a;
.super Lorg/apache/commons/math3/linear/DefaultRealMatrixPreservingVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getCovariance(D)Lorg/apache/commons/math3/linear/RealMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[[D

.field public final synthetic b:Lorg/apache/commons/math3/linear/SingularValueDecomposition;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/SingularValueDecomposition;[[D)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$a;->b:Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    iput-object p2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$a;->a:[[D

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/DefaultRealMatrixPreservingVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(IID)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$a;->a:[[D

    aget-object v0, v0, p1

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$a;->b:Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    invoke-static {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a(Lorg/apache/commons/math3/linear/SingularValueDecomposition;)[D

    move-result-object p0

    aget-wide p0, p0, p1

    div-double/2addr p3, p0

    aput-wide p3, v0, p2

    return-void
.end method
