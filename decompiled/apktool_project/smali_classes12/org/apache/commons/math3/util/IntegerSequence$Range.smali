.class public Lorg/apache/commons/math3/util/IntegerSequence$Range;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/IntegerSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->f:I

    iput p2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->g:I

    iput p3, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->h:I

    sub-int/2addr p2, p1

    div-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->e:I

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->f:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->g:I

    iget v2, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->h:I

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iget p0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->h:I

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withIncrement(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/IntegerSequence$Range;->e:I

    return p0
.end method
