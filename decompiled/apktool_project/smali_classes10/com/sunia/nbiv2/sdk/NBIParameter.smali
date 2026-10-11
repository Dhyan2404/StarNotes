.class public Lcom/sunia/nbiv2/sdk/NBIParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private autoSmooth:I

.field private brushTexture:I

.field private continuity:I

.field private cursive:I

.field private feiBai:I

.field private lightBrush:I

.field private smooth:I

.field private width:I

.field private yiYang:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->continuity:I

    iput p2, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->cursive:I

    iput p3, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->lightBrush:I

    iput p4, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->width:I

    iput p5, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->feiBai:I

    iput p6, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->brushTexture:I

    iput p7, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->yiYang:I

    iput p8, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->smooth:I

    iput p9, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->autoSmooth:I

    return-void
.end method


# virtual methods
.method public getAutoSmooth()I
    .locals 0

    iget p0, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->autoSmooth:I

    return p0
.end method

.method public getBrushTexture()I
    .locals 0

    iget p0, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->brushTexture:I

    return p0
.end method

.method public getContinuity()I
    .locals 0

    iget p0, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->continuity:I

    return p0
.end method

.method public getCursive()I
    .locals 0

    iget p0, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->cursive:I

    return p0
.end method

.method public getFeiBai()I
    .locals 0

    iget p0, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->feiBai:I

    return p0
.end method

.method public getLightBrush()I
    .locals 0

    iget p0, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->lightBrush:I

    return p0
.end method

.method public getSmooth()I
    .locals 0

    iget p0, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->smooth:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->width:I

    return p0
.end method

.method public getYiYang()I
    .locals 0

    iget p0, p0, Lcom/sunia/nbiv2/sdk/NBIParameter;->yiYang:I

    return p0
.end method
