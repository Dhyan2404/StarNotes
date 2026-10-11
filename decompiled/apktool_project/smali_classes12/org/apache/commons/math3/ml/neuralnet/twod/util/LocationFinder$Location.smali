.class public Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->a:I

    iput p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->b:I

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->b:I

    return p0
.end method

.method public getRow()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/util/LocationFinder$Location;->a:I

    return p0
.end method
