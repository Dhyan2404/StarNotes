.class public Lorg/apache/commons/math3/linear/AbstractRealMatrix$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getFrobeniusNorm()D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:D

.field public final synthetic b:Lorg/apache/commons/math3/linear/AbstractRealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$b;->b:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$b;->a:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public start(IIIIII)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$b;->a:D

    return-void
.end method

.method public visit(IID)V
    .locals 0

    iget-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$b;->a:D

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$b;->a:D

    return-void
.end method
