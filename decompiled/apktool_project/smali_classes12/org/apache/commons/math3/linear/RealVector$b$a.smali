.class public Lorg/apache/commons/math3/linear/RealVector$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/RealVector$b;->iterator()Ljava/util/Iterator;
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
.field public final e:Lorg/apache/commons/math3/linear/RealVector$b$c;

.field public final synthetic f:Ljava/util/Iterator;

.field public final synthetic g:Lorg/apache/commons/math3/linear/RealVector$b;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealVector$b;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$b$a;->g:Lorg/apache/commons/math3/linear/RealVector$b;

    iput-object p2, p0, Lorg/apache/commons/math3/linear/RealVector$b$a;->f:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lorg/apache/commons/math3/linear/RealVector$b$c;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/linear/RealVector$b$c;-><init>(Lorg/apache/commons/math3/linear/RealVector$b;)V

    iput-object p2, p0, Lorg/apache/commons/math3/linear/RealVector$b$a;->e:Lorg/apache/commons/math3/linear/RealVector$b$c;

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/math3/linear/RealVector$Entry;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$b$a;->e:Lorg/apache/commons/math3/linear/RealVector$b$c;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$b$a;->f:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->setIndex(I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b$a;->e:Lorg/apache/commons/math3/linear/RealVector$b$c;

    return-object p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/RealVector$b$a;->f:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$b$a;->a()Lorg/apache/commons/math3/linear/RealVector$Entry;

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
