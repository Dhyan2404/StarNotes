.class public Lorg/apache/commons/math3/linear/AbstractRealMatrix$e;
.super Lorg/apache/commons/math3/linear/DefaultRealMatrixPreservingVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractRealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/commons/math3/linear/RealMatrix;

.field public final synthetic b:Lorg/apache/commons/math3/linear/AbstractRealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$e;->b:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    iput-object p2, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$e;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/DefaultRealMatrixPreservingVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(IID)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$e;->a:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0, p2, p1, p3, p4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    return-void
.end method
