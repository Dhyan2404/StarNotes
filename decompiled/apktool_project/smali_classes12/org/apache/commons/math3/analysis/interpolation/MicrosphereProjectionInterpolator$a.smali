.class public Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->interpolate([[D[D)Lorg/apache/commons/math3/analysis/MultivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

.field public final synthetic f:[[D

.field public final synthetic g:[D

.field public final synthetic h:Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;[[D[D)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$a;->h:Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$a;->e:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    iput-object p3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$a;->f:[[D

    iput-object p4, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$a;->g:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$a;->e:Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$a;->f:[[D

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$a;->g:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$a;->h:Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->a(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;)D

    move-result-wide v4

    iget-object p0, p0, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator$a;->h:Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;

    invoke-static {p0}, Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;->b(Lorg/apache/commons/math3/analysis/interpolation/MicrosphereProjectionInterpolator;)D

    move-result-wide v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;->value([D[[D[DDD)D

    move-result-wide p0

    return-wide p0
.end method
