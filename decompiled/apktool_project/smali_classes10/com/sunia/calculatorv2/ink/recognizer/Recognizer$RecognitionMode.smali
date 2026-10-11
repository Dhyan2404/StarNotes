.class final enum Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/calculatorv2/ink/recognizer/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecognitionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

.field public static final enum HORIZONTAL:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

.field public static final enum OPTICAL:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

.field public static final enum SUPERIMPOSED:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

.field public static final enum VERTICAL:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;


# direct methods
.method private static synthetic $values()[Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;
    .locals 4

    sget-object v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->HORIZONTAL:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    sget-object v1, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->VERTICAL:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    sget-object v2, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->SUPERIMPOSED:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    sget-object v3, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->OPTICAL:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->HORIZONTAL:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    new-instance v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    const-string v1, "VERTICAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->VERTICAL:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    new-instance v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    const-string v1, "SUPERIMPOSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->SUPERIMPOSED:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    new-instance v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    const-string v1, "OPTICAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->OPTICAL:Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    invoke-static {}, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->$values()[Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    move-result-object v0

    sput-object v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->$VALUES:[Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;
    .locals 1

    const-class v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    return-object p0
.end method

.method public static values()[Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;
    .locals 1

    sget-object v0, Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->$VALUES:[Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    invoke-virtual {v0}, [Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/calculatorv2/ink/recognizer/Recognizer$RecognitionMode;

    return-object v0
.end method
