.class public Lcom/onyx/engine/sdk/GrayAreaParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/engine/sdk/GrayAreaParameter$GrayRange;
    }
.end annotation


# instance fields
.field range:Lcom/onyx/engine/sdk/GrayAreaParameter$GrayRange;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/engine/sdk/GrayAreaParameter$GrayRange;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/GrayAreaParameter$GrayRange;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/GrayAreaParameter;->range:Lcom/onyx/engine/sdk/GrayAreaParameter$GrayRange;

    return-void
.end method


# virtual methods
.method public getRange()Lcom/onyx/engine/sdk/GrayAreaParameter$GrayRange;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/GrayAreaParameter;->range:Lcom/onyx/engine/sdk/GrayAreaParameter$GrayRange;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/GrayAreaParameter;->size:I

    return p0
.end method

.method public setRange(Lcom/onyx/engine/sdk/GrayAreaParameter$GrayRange;)Lcom/onyx/engine/sdk/GrayAreaParameter;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/GrayAreaParameter;->range:Lcom/onyx/engine/sdk/GrayAreaParameter$GrayRange;

    return-object p0
.end method

.method public setSize(I)Lcom/onyx/engine/sdk/GrayAreaParameter;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/GrayAreaParameter;->size:I

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
