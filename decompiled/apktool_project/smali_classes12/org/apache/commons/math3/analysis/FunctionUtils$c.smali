.class public final Lorg/apache/commons/math3/analysis/FunctionUtils$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->fix1stArgument(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/commons/math3/analysis/BivariateFunction;

.field public final synthetic f:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/BivariateFunction;D)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$c;->e:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iput-wide p2, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$c;->f:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(D)D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$c;->e:Lorg/apache/commons/math3/analysis/BivariateFunction;

    iget-wide v1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$c;->f:D

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide p0

    return-wide p0
.end method
