.class synthetic Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sunia$calculatorv2$ink$solver$SolverContext$FractionPreference:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->values()[Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter$1;->$SwitchMap$com$sunia$calculatorv2$ink$solver$SolverContext$FractionPreference:[I

    :try_start_0
    sget-object v1, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->IMPROPER_FRACTION:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/HWREngineAdapter$1;->$SwitchMap$com$sunia$calculatorv2$ink$solver$SolverContext$FractionPreference:[I

    sget-object v1, Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;->MIXED_NUMBER:Lcom/sunia/calculatorv2/ink/solver/SolverContext$FractionPreference;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
