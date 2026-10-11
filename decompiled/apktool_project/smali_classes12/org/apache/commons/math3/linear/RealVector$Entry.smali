.class public Lorg/apache/commons/math3/linear/RealVector$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/RealVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$Entry;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->setIndex(I)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/linear/RealVector$Entry;->a:I

    return p0
.end method

.method public getValue()D
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$Entry;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/linear/RealVector$Entry;->a:I

    return-void
.end method

.method public setValue(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$Entry;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    return-void
.end method
