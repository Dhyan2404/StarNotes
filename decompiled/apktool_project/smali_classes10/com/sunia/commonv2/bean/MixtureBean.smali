.class public Lcom/sunia/commonv2/bean/MixtureBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/MixtureBean;->id:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/MixtureBean;->type:I

    return p0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/MixtureBean;->id:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/MixtureBean;->type:I

    return-void
.end method
