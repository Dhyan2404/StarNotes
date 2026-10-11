.class public final enum Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field public static final enum ABOVE_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field public static final enum ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field public static final enum BELOW_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field public static final enum LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field public static final enum RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    const-string v1, "ANY_SIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    new-instance v1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    const-string v2, "LEFT_SIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    new-instance v2, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    const-string v3, "RIGHT_SIDE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    new-instance v3, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    const-string v4, "BELOW_SIDE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->BELOW_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    new-instance v4, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    const-string v5, "ABOVE_SIDE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ABOVE_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->$VALUES:[Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->$VALUES:[Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-object v0
.end method
