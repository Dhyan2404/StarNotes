.class public Lorg/apache/commons/math3/util/RandomPivotingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/util/PivotingStrategyInterface;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x13352a9L


# instance fields
.field private final random:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/util/RandomPivotingStrategy;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method


# virtual methods
.method public pivotIndex([DII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    sub-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    iget-object p0, p0, Lorg/apache/commons/math3/util/RandomPivotingStrategy;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p0, p3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method
