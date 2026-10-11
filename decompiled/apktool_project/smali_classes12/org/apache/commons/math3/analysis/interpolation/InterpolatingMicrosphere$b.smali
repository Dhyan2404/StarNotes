.class public Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;->a:D

    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;->b:D

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;->a:D

    return-wide v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/interpolation/InterpolatingMicrosphere$b;->b:D

    return-wide v0
.end method
