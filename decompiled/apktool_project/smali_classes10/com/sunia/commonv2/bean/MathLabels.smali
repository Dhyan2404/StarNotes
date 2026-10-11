.class public Lcom/sunia/commonv2/bean/MathLabels;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private label:Ljava/lang/String;

.field private pcomplement:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/MathLabels;->label:Ljava/lang/String;

    return-object p0
.end method

.method public getPcomplement()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/MathLabels;->pcomplement:I

    return p0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/MathLabels;->label:Ljava/lang/String;

    return-void
.end method

.method public setPcomplement(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/MathLabels;->pcomplement:I

    return-void
.end method
