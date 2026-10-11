.class public Lcom/sunia/calculatorv2/ink/global/CalculatorVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COPY_MODE_ALL:I = 0x0

.field public static final COPY_MODE_EQUATION:I = 0x1

.field public static final COPY_MODE_RESULT:I = 0x2

.field public static final ERASER_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

.field public static final HAND_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

.field public static final HIGHLIGHTER_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

.field public static final MATH:Ljava/lang/String; = "math"

.field public static final MATH_CLASS_NAME:Ljava/lang/String; = "Math"

.field public static final PEN_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

.field public static final PLACEHOLDER_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

.field public static final SELECTOR_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sunia/calculatorv2/ink/editor/PointerTool$PenTool;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sunia/HTREnginev2/z;

    sget-object v2, Lcom/sunia/HTREnginev2/z;->c:Lcom/sunia/HTREnginev2/z;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sunia/HTREnginev2/z;->a:Lcom/sunia/HTREnginev2/z;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/sunia/HTREnginev2/z;->b:Lcom/sunia/HTREnginev2/z;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$PenTool;-><init>([Lcom/sunia/HTREnginev2/z;)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/global/CalculatorVariable;->PEN_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    new-instance v0, Lcom/sunia/calculatorv2/ink/editor/PointerTool$a;

    invoke-direct {v0}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$a;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/global/CalculatorVariable;->ERASER_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    new-instance v0, Lcom/sunia/calculatorv2/ink/editor/PointerTool$HandTool;

    invoke-direct {v0}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$HandTool;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/global/CalculatorVariable;->HAND_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    new-instance v0, Lcom/sunia/calculatorv2/ink/editor/PointerTool$b;

    invoke-direct {v0}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$b;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/global/CalculatorVariable;->HIGHLIGHTER_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    new-instance v0, Lcom/sunia/calculatorv2/ink/editor/PointerTool$d;

    invoke-direct {v0}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$d;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/global/CalculatorVariable;->SELECTOR_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    new-instance v0, Lcom/sunia/calculatorv2/ink/editor/PointerTool$c;

    invoke-direct {v0}, Lcom/sunia/calculatorv2/ink/editor/PointerTool$c;-><init>()V

    sput-object v0, Lcom/sunia/calculatorv2/ink/global/CalculatorVariable;->PLACEHOLDER_TOOL:Lcom/sunia/calculatorv2/ink/editor/PointerTool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
