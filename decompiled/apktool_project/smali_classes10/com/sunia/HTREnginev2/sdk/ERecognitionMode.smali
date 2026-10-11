.class public final enum Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

.field public static final enum MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

.field public static final enum MODE_ICR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;
    .locals 2

    sget-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ICR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    sget-object v1, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    filled-new-array {v0, v1}, [Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    const-string v1, "MODE_ICR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ICR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    new-instance v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    const-string v1, "MODE_ECR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    invoke-static {}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->$values()[Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->$VALUES:[Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

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

    iput p3, p0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->value:I

    return-void
.end method

.method public static isAutoMode(I)Z
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ICR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isManualMode(I)Z
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;
    .locals 1

    const-class v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    return-object p0
.end method

.method public static values()[Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->$VALUES:[Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    invoke-virtual {v0}, [Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->value:I

    return p0
.end method
