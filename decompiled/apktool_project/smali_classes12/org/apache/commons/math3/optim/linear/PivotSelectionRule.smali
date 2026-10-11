.class public final enum Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;",
        ">;",
        "Lorg/apache/commons/math3/optim/OptimizationData;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

.field public static final enum BLAND:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

.field public static final enum DANTZIG:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    const-string v1, "DANTZIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->DANTZIG:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    new-instance v1, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    const-string v2, "BLAND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->BLAND:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    filled-new-array {v0, v1}, [Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->$VALUES:[Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->$VALUES:[Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    return-object v0
.end method
