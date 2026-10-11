.class public Lorg/apache/commons/math3/fitting/WeightedObservedPoints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1332bfdL


# instance fields
.field private final observations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->observations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(DD)V
    .locals 7

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->add(DDD)V

    return-void
.end method

.method public add(DDD)V
    .locals 8

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->observations:Ljava/util/List;

    new-instance v7, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;-><init>(DDD)V

    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Lorg/apache/commons/math3/fitting/WeightedObservedPoint;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->observations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->observations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoints;->observations:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
