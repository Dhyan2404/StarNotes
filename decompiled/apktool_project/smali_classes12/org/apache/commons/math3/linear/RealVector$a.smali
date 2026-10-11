.class public Lorg/apache/commons/math3/linear/RealVector$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/commons/math3/linear/RealVector$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public f:Lorg/apache/commons/math3/linear/RealVector$Entry;

.field public final synthetic g:I

.field public final synthetic h:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$a;->h:Lorg/apache/commons/math3/linear/RealVector;

    iput p2, p0, Lorg/apache/commons/math3/linear/RealVector$a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/commons/math3/linear/RealVector$a;->e:I

    new-instance p2, Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    iput-object p2, p0, Lorg/apache/commons/math3/linear/RealVector$a;->f:Lorg/apache/commons/math3/linear/RealVector$Entry;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/math3/linear/RealVector$Entry;
    .locals 3

    iget v0, p0, Lorg/apache/commons/math3/linear/RealVector$a;->e:I

    iget v1, p0, Lorg/apache/commons/math3/linear/RealVector$a;->g:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$a;->f:Lorg/apache/commons/math3/linear/RealVector$Entry;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/commons/math3/linear/RealVector$a;->e:I

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->setIndex(I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$a;->f:Lorg/apache/commons/math3/linear/RealVector$Entry;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/math3/linear/RealVector$a;->e:I

    iget p0, p0, Lorg/apache/commons/math3/linear/RealVector$a;->g:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$a;->a()Lorg/apache/commons/math3/linear/RealVector$Entry;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
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
