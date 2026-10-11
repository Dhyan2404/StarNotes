.class public Lcom/sunia/commonv2/bean/MathLine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private decimalResult:Ljava/lang/String;

.field private improperFraction:Ljava/lang/String;

.field private improperFractionResult:Ljava/lang/String;

.field private improperFraction_mathLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/MathLabels;",
            ">;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;

.field private mathLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/MathLabels;",
            ">;"
        }
    .end annotation
.end field

.field private properFraction:Ljava/lang/String;

.field private properFractionResult:Ljava/lang/String;

.field private properFraction_mathLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/MathLabels;",
            ">;"
        }
    .end annotation
.end field

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecimalResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/MathLine;->decimalResult:Ljava/lang/String;

    return-object p0
.end method

.method public getImproperFraction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/MathLine;->improperFraction:Ljava/lang/String;

    return-object p0
.end method

.method public getImproperFractionResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/MathLine;->improperFractionResult:Ljava/lang/String;

    return-object p0
.end method

.method public getImproperFraction_mathLabels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/MathLabels;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/MathLine;->improperFraction_mathLabels:Ljava/util/List;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/MathLine;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getMathLabels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/MathLabels;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/MathLine;->mathLabels:Ljava/util/List;

    return-object p0
.end method

.method public getProperFraction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/MathLine;->properFraction:Ljava/lang/String;

    return-object p0
.end method

.method public getProperFractionResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/MathLine;->properFractionResult:Ljava/lang/String;

    return-object p0
.end method

.method public getProperFraction_mathLabels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/MathLabels;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/MathLine;->properFraction_mathLabels:Ljava/util/List;

    return-object p0
.end method

.method public getResultCode()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/MathLine;->resultCode:I

    return p0
.end method

.method public setDecimalResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/MathLine;->decimalResult:Ljava/lang/String;

    return-void
.end method

.method public setImproperFraction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/MathLine;->improperFraction:Ljava/lang/String;

    return-void
.end method

.method public setImproperFractionResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/MathLine;->improperFractionResult:Ljava/lang/String;

    return-void
.end method

.method public setImproperFraction_mathLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/MathLabels;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/bean/MathLine;->improperFraction_mathLabels:Ljava/util/List;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/MathLine;->label:Ljava/lang/String;

    return-void
.end method

.method public setMathLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/MathLabels;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/bean/MathLine;->mathLabels:Ljava/util/List;

    return-void
.end method

.method public setProperFraction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/MathLine;->properFraction:Ljava/lang/String;

    return-void
.end method

.method public setProperFractionResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/MathLine;->properFractionResult:Ljava/lang/String;

    return-void
.end method

.method public setProperFraction_mathLabels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/MathLabels;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/bean/MathLine;->properFraction_mathLabels:Ljava/util/List;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/MathLine;->resultCode:I

    return-void
.end method
