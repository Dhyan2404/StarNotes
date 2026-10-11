.class public Lorg/apache/commons/math3/linear/RealVector$b$c;
.super Lorg/apache/commons/math3/linear/RealVector$Entry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/RealVector$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic c:Lorg/apache/commons/math3/linear/RealVector$b;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector$b;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$b$c;->c:Lorg/apache/commons/math3/linear/RealVector$b;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    return-void
.end method


# virtual methods
.method public getValue()D
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$b$c;->c:Lorg/apache/commons/math3/linear/RealVector$b;

    iget-object v0, v0, Lorg/apache/commons/math3/linear/RealVector$b;->e:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public setValue(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method
