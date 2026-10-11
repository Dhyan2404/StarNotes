.class public final enum Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnalyzerMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

.field public static final enum CHEMICAL:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

.field public static final enum DIAGRAM:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

.field public static final enum DOCUMENT:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

.field public static final enum DRAWING:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

.field public static final enum MATH:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

.field public static final enum MATHS:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

.field public static final enum SHAPE:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

.field public static final enum TEXT_BLOCK:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

.field public static final enum TEXT_LINE:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;


# direct methods
.method private static synthetic $values()[Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;
    .locals 9

    sget-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->DOCUMENT:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    sget-object v1, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->DIAGRAM:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    sget-object v2, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->TEXT_BLOCK:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    sget-object v3, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->TEXT_LINE:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    sget-object v4, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->MATH:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    sget-object v5, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->MATHS:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    sget-object v6, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->DRAWING:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    sget-object v7, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->SHAPE:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    sget-object v8, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->CHEMICAL:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    filled-new-array/range {v0 .. v8}, [Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    const-string v1, "DOCUMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->DOCUMENT:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    new-instance v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    const-string v1, "DIAGRAM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->DIAGRAM:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    new-instance v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    const-string v1, "TEXT_BLOCK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->TEXT_BLOCK:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    new-instance v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    const-string v1, "TEXT_LINE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->TEXT_LINE:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    new-instance v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    const-string v1, "MATH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->MATH:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    new-instance v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    const-string v1, "MATHS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->MATHS:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    new-instance v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    const-string v1, "DRAWING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->DRAWING:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    new-instance v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    const-string v1, "SHAPE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->SHAPE:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    new-instance v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    const-string v1, "CHEMICAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->CHEMICAL:Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->$values()[Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    move-result-object v0

    sput-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->$VALUES:[Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;
    .locals 1

    const-class v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    return-object p0
.end method

.method public static values()[Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;
    .locals 1

    sget-object v0, Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->$VALUES:[Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    invoke-virtual {v0}, [Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/calculatorv2/ink/analyzer/GenericRecognizer$AnalyzerMode;

    return-object v0
.end method
