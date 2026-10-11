.class public Lcom/onyx/engine/sdk/TextRunParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field addHyphen:Z

.field addLineTailSpace:Z

.field combineWords:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/TextRunParameter;->addLineTailSpace:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/TextRunParameter;->addHyphen:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/TextRunParameter;->combineWords:Z

    return-void
.end method


# virtual methods
.method public isAddHyphen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/TextRunParameter;->addHyphen:Z

    return p0
.end method

.method public isAddLineTailSpace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/TextRunParameter;->addLineTailSpace:Z

    return p0
.end method

.method public isCombineWords()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/TextRunParameter;->combineWords:Z

    return p0
.end method

.method public setAddHyphen(Z)Lcom/onyx/engine/sdk/TextRunParameter;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/TextRunParameter;->addHyphen:Z

    return-object p0
.end method

.method public setAddLineTailSpace(Z)Lcom/onyx/engine/sdk/TextRunParameter;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/TextRunParameter;->addLineTailSpace:Z

    return-object p0
.end method

.method public setCombineWords(Z)Lcom/onyx/engine/sdk/TextRunParameter;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/TextRunParameter;->combineWords:Z

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
