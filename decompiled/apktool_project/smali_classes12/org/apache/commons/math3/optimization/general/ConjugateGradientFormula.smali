.class public final enum Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

.field public static final enum FLETCHER_REEVES:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

.field public static final enum POLAK_RIBIERE:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    const-string v1, "FLETCHER_REEVES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;->FLETCHER_REEVES:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    new-instance v1, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    const-string v2, "POLAK_RIBIERE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;->POLAK_RIBIERE:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    filled-new-array {v0, v1}, [Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;->$VALUES:[Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;->$VALUES:[Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    return-object v0
.end method
