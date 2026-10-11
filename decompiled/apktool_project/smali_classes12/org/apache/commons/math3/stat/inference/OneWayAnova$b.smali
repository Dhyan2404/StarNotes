.class public Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/inference/OneWayAnova;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:D


# direct methods
.method public constructor <init>(IID)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->a:I

    .line 4
    iput p2, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->b:I

    .line 5
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->c:D

    return-void
.end method

.method public synthetic constructor <init>(IIDLorg/apache/commons/math3/stat/inference/OneWayAnova$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;-><init>(IID)V

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->c:D

    return-wide v0
.end method

.method public static synthetic b(Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->a:I

    return p0
.end method

.method public static synthetic c(Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->b:I

    return p0
.end method
