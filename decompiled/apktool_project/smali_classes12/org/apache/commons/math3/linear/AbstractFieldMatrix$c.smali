.class public Lorg/apache/commons/math3/linear/AbstractFieldMatrix$c;
.super Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->transpose()Lorg/apache/commons/math3/linear/FieldMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lorg/apache/commons/math3/linear/FieldMatrix;

.field public final synthetic c:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/AbstractFieldMatrix;Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$c;->c:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;

    iput-object p3, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$c;->b:Lorg/apache/commons/math3/linear/FieldMatrix;

    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;-><init>(Lorg/apache/commons/math3/FieldElement;)V

    return-void
.end method


# virtual methods
.method public visit(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$c;->b:Lorg/apache/commons/math3/linear/FieldMatrix;

    invoke-interface {p0, p2, p1, p3}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    return-void
.end method
