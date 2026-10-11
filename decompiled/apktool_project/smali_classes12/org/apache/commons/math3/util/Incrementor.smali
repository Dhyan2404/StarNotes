.class public Lorg/apache/commons/math3/util/Incrementor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final c:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor$a;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/apache/commons/math3/util/Incrementor;->b:I

    if-eqz p2, :cond_0

    .line 5
    iput p1, p0, Lorg/apache/commons/math3/util/Incrementor;->a:I

    .line 6
    iput-object p2, p0, Lorg/apache/commons/math3/util/Incrementor;->c:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

    return-void

    .line 7
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public static wrap(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)Lorg/apache/commons/math3/util/Incrementor;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/util/Incrementor$b;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/util/Incrementor$b;-><init>(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)V

    return-object v0
.end method


# virtual methods
.method public canIncrement()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/math3/util/Incrementor;->b:I

    iget p0, p0, Lorg/apache/commons/math3/util/Incrementor;->a:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/Incrementor;->b:I

    return p0
.end method

.method public getMaximalCount()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/Incrementor;->a:I

    return p0
.end method

.method public incrementCount()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 2
    iget v0, p0, Lorg/apache/commons/math3/util/Incrementor;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/util/Incrementor;->b:I

    iget v1, p0, Lorg/apache/commons/math3/util/Incrementor;->a:I

    if-le v0, v1, :cond_0

    .line 3
    iget-object p0, p0, Lorg/apache/commons/math3/util/Incrementor;->c:Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;

    invoke-interface {p0, v1}, Lorg/apache/commons/math3/util/Incrementor$MaxCountExceededCallback;->trigger(I)V

    :cond_0
    return-void
.end method

.method public incrementCount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/util/Incrementor;->b:I

    return-void
.end method

.method public setMaximalCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/util/Incrementor;->a:I

    return-void
.end method
