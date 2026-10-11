.class public Landroidx/input/motionprediction/kalman/matrix/DVector2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public a1:D

.field public a2:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public magnitude()D
    .locals 4

    iget-wide v0, p0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iget-wide v2, p0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public set(Landroidx/input/motionprediction/kalman/matrix/DVector2;)V
    .locals 2
    .param p1    # Landroidx/input/motionprediction/kalman/matrix/DVector2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iput-wide v0, p0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a1:D

    iget-wide v0, p1, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    iput-wide v0, p0, Landroidx/input/motionprediction/kalman/matrix/DVector2;->a2:D

    return-void
.end method
