.class public abstract Lcom/graphbuilder/curve/ParametricCurve;
.super Lcom/graphbuilder/curve/Curve;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphbuilder/curve/Curve;-><init>(Lcom/graphbuilder/curve/ControlPath;Lcom/graphbuilder/curve/GroupIterator;)V

    return-void
.end method


# virtual methods
.method public abstract eval([D)V
.end method

.method public abstract getSampleLimit()I
.end method
