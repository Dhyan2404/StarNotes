.class public Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/util/PivotingStrategyInterface;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x13352a9L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pivotIndex([DII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    sub-int p0, p3, p2

    invoke-static {p1, p2, p0}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    add-int/lit8 p3, p3, -0x1

    sub-int p0, p3, p2

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p2

    aget-wide v0, p1, p2

    aget-wide v2, p1, p0

    aget-wide v4, p1, p3

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    cmpg-double p1, v2, v4

    if-gez p1, :cond_0

    return p0

    :cond_0
    cmpg-double p0, v0, v4

    if-gez p0, :cond_1

    move p2, p3

    :cond_1
    return p2

    :cond_2
    cmpg-double p1, v0, v4

    if-gez p1, :cond_3

    return p2

    :cond_3
    cmpg-double p1, v2, v4

    if-gez p1, :cond_4

    goto :goto_0

    :cond_4
    move p3, p0

    :goto_0
    return p3
.end method
