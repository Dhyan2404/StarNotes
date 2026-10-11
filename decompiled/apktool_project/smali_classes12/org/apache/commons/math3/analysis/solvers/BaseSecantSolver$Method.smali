.class public final enum Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

.field public static final enum ILLINOIS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

.field public static final enum PEGASUS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

.field public static final enum REGULA_FALSI:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    const-string v1, "REGULA_FALSI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->REGULA_FALSI:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    new-instance v1, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    const-string v2, "ILLINOIS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ILLINOIS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    new-instance v2, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    const-string v3, "PEGASUS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->PEGASUS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    filled-new-array {v0, v1, v2}, [Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->$VALUES:[Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->$VALUES:[Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    return-object v0
.end method
