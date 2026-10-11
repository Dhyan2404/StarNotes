.class public abstract Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/ConvergenceChecker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
        "TPAIR;>;"
    }
.end annotation


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->a:D

    iput-wide p3, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->b:D

    return-void
.end method


# virtual methods
.method public abstract converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITPAIR;TPAIR;)Z"
        }
    .end annotation
.end method

.method public getAbsoluteThreshold()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->b:D

    return-wide v0
.end method

.method public getRelativeThreshold()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->a:D

    return-wide v0
.end method
