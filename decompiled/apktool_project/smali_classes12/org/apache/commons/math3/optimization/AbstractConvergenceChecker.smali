.class public abstract Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/ConvergenceChecker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
        "TPAIR;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final c:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->c:D

    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->d:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-wide v0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->c:D

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->a:D

    .line 3
    sget-wide v0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->d:D

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->b:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->a:D

    .line 6
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->b:D

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

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->b:D

    return-wide v0
.end method

.method public getRelativeThreshold()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/AbstractConvergenceChecker;->a:D

    return-wide v0
.end method
