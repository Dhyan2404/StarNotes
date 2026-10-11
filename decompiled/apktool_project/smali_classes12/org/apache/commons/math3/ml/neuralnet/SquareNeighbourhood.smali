.class public final enum Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

.field public static final enum MOORE:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

.field public static final enum VON_NEUMANN:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    const-string v1, "VON_NEUMANN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;->VON_NEUMANN:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    const-string v2, "MOORE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;->MOORE:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    filled-new-array {v0, v1}, [Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;->$VALUES:[Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;->$VALUES:[Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    return-object v0
.end method
