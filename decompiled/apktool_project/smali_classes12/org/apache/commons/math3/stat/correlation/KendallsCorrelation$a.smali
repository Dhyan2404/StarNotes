.class public Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;->correlation([D[D)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/util/Pair<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$a;->e:Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/util/Pair;

    check-cast p2, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/KendallsCorrelation$a;->a(Lorg/apache/commons/math3/util/Pair;Lorg/apache/commons/math3/util/Pair;)I

    move-result p0

    return p0
.end method
