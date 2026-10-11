.class public Lorg/apache/commons/math3/linear/AbstractFieldMatrix$a;
.super Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getSubMatrix([I[I)Lorg/apache/commons/math3/linear/FieldMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:[I

.field public final synthetic c:[I

.field public final synthetic d:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/AbstractFieldMatrix;Lorg/apache/commons/math3/FieldElement;[I[I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$a;->d:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;

    iput-object p3, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$a;->b:[I

    iput-object p4, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$a;->c:[I

    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;-><init>(Lorg/apache/commons/math3/FieldElement;)V

    return-void
.end method


# virtual methods
.method public visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)TT;"
        }
    .end annotation

    iget-object p3, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$a;->d:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;

    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$a;->b:[I

    aget p1, v0, p1

    iget-object p0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$a;->c:[I

    aget p0, p0, p2

    invoke-virtual {p3, p1, p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method
