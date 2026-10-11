.class public Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;->a:Lorg/apache/commons/math3/FieldElement;

    return-void
.end method


# virtual methods
.method public end()Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;->a:Lorg/apache/commons/math3/FieldElement;

    return-object p0
.end method

.method public start(IIIIII)V
    .locals 0

    return-void
.end method

.method public visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)TT;"
        }
    .end annotation

    return-object p3
.end method
