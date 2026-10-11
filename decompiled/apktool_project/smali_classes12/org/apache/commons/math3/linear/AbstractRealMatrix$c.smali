.class public Lorg/apache/commons/math3/linear/AbstractRealMatrix$c;
.super Lorg/apache/commons/math3/linear/DefaultRealMatrixChangingVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getSubMatrix([I[I)Lorg/apache/commons/math3/linear/RealMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[I

.field public final synthetic b:[I

.field public final synthetic c:Lorg/apache/commons/math3/linear/AbstractRealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;[I[I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$c;->c:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    iput-object p2, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$c;->a:[I

    iput-object p3, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$c;->b:[I

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/DefaultRealMatrixChangingVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(IID)D
    .locals 0

    iget-object p3, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$c;->c:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    iget-object p4, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$c;->a:[I

    aget p1, p4, p1

    iget-object p0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$c;->b:[I

    aget p0, p0, p2

    invoke-virtual {p3, p1, p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide p0

    return-wide p0
.end method
