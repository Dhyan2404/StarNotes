.class public Lcom/graphbuilder/geom/PointFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphbuilder/geom/PointFactory$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(DD)Lcom/graphbuilder/geom/Point2d;
    .locals 1

    new-instance v0, Lcom/graphbuilder/geom/PointFactory$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/graphbuilder/geom/PointFactory$a;-><init>(DD)V

    return-object v0
.end method
