.class public Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getNorm()D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public final synthetic d:Lorg/apache/commons/math3/linear/AbstractRealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;->d:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;->c:D

    return-wide v0
.end method

.method public start(IIIIII)V
    .locals 0

    int-to-double p1, p4

    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;->a:D

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;->b:D

    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;->c:D

    return-void
.end method

.method public visit(IID)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;->b:D

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p2

    add-double/2addr v0, p2

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;->b:D

    int-to-double p1, p1

    iget-wide p3, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;->a:D

    cmpl-double p1, p1, p3

    if-nez p1, :cond_0

    iget-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;->c:D

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;->c:D

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$a;->b:D

    :cond_0
    return-void
.end method
