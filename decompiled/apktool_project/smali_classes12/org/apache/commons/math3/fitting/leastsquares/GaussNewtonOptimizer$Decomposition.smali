.class public abstract enum Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Decomposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

.field public static final enum CHOLESKY:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

.field public static final enum LU:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

.field public static final enum QR:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

.field public static final enum SVD:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$1;

    const-string v1, "LU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->LU:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    new-instance v1, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$2;

    const-string v3, "QR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->QR:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    new-instance v3, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$3;

    const-string v5, "CHOLESKY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->CHOLESKY:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    new-instance v5, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$4;

    const-string v7, "SVD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->SVD:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->$VALUES:[Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->$VALUES:[Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    return-object v0
.end method


# virtual methods
.method public abstract solve(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
.end method
