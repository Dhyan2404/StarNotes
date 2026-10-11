.class public final enum Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/calculatorv2/ink/solver/SolverContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FractionPreference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

.field public static final enum DECIMAL:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

.field public static final enum IMPROPER_FRACTION:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

.field public static final enum MIXED_NUMBER:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;
    .locals 3

    sget-object v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->DECIMAL:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    sget-object v1, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->IMPROPER_FRACTION:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    sget-object v2, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->MIXED_NUMBER:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    filled-new-array {v0, v1, v2}, [Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    const-string v1, "DECIMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->DECIMAL:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    new-instance v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    const-string v1, "IMPROPER_FRACTION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->IMPROPER_FRACTION:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    new-instance v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    const-string v1, "MIXED_NUMBER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->MIXED_NUMBER:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->$values()[Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    move-result-object v0

    sput-object v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->$VALUES:[Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;
    .locals 1

    const-class v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    return-object p0
.end method

.method public static values()[Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;
    .locals 1

    sget-object v0, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->$VALUES:[Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    invoke-virtual {v0}, [Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    return-object v0
.end method
