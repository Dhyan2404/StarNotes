.class public Lcom/sunia/HTREnginev2/sdk/RecognitionMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MODE_ECR:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_ICR:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ICR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->getValue()I

    move-result v0

    sput v0, Lcom/sunia/HTREnginev2/sdk/RecognitionMode;->MODE_ICR:I

    sget-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->getValue()I

    move-result v0

    sput v0, Lcom/sunia/HTREnginev2/sdk/RecognitionMode;->MODE_ECR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
