.class public final Lorg/apache/commons/math3/util/Incrementor$b;
.super Lorg/apache/commons/math3/util/Incrementor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/util/Incrementor;->wrap(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)Lorg/apache/commons/math3/util/Incrementor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field public final synthetic e:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/util/Incrementor$b;->e:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-direct {p0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/util/Incrementor$b;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result p1

    invoke-super {p0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    iget-object p1, p0, Lorg/apache/commons/math3/util/Incrementor$b;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result p1

    invoke-super {p0, p1}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount(I)V

    return-void
.end method


# virtual methods
.method public incrementCount()V
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    iget-object p0, p0, Lorg/apache/commons/math3/util/Incrementor$b;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V

    return-void
.end method

.method public resetCount()V
    .locals 2

    invoke-super {p0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    iget-object v0, p0, Lorg/apache/commons/math3/util/Incrementor$b;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/util/Incrementor$b;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void
.end method

.method public setMaximalCount(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    iget-object v0, p0, Lorg/apache/commons/math3/util/Incrementor$b;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/util/Incrementor$b;->d:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    return-void
.end method
