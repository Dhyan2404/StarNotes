.class public final Lorg/apache/commons/math3/util/MathArrays$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;[[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/util/MathArrays$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/commons/math3/util/MathArrays$d;Lorg/apache/commons/math3/util/MathArrays$d;)I
    .locals 2

    invoke-virtual {p2}, Lorg/apache/commons/math3/util/MathArrays$d;->a()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/MathArrays$d;->a()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/math3/util/MathArrays$d;

    check-cast p2, Lorg/apache/commons/math3/util/MathArrays$d;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays$b;->a(Lorg/apache/commons/math3/util/MathArrays$d;Lorg/apache/commons/math3/util/MathArrays$d;)I

    move-result p0

    return p0
.end method
