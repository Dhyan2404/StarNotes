.class public Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;->e:Z

    return-void
.end method


# virtual methods
.method public isRestrictedToNonNegative()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;->e:Z

    return p0
.end method
