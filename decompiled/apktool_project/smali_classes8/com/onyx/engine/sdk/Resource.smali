.class public Lcom/onyx/engine/sdk/Resource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private basePath:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private height:F

.field private resourcePath:Ljava/lang/String;

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/engine/sdk/Resource;->basePath:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/onyx/engine/sdk/Resource;->resourcePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/engine/sdk/Resource;

    iget v2, p1, Lcom/onyx/engine/sdk/Resource;->width:F

    iget v3, p0, Lcom/onyx/engine/sdk/Resource;->width:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/Resource;->height:F

    iget v3, p0, Lcom/onyx/engine/sdk/Resource;->height:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/Resource;->basePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/Resource;->basePath:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/Resource;->resourcePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/Resource;->resourcePath:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/onyx/engine/sdk/Resource;->format:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/engine/sdk/Resource;->format:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBasePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Resource;->basePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Resource;->format:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/Resource;->height:F

    return p0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/Resource;->resourcePath:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/Resource;->width:F

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/onyx/engine/sdk/Resource;->basePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/engine/sdk/Resource;->resourcePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/engine/sdk/Resource;->format:Ljava/lang/String;

    iget v3, p0, Lcom/onyx/engine/sdk/Resource;->width:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget p0, p0, Lcom/onyx/engine/sdk/Resource;->height:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setBasePath(Ljava/lang/String;)Lcom/onyx/engine/sdk/Resource;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Resource;->basePath:Ljava/lang/String;

    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/onyx/engine/sdk/Resource;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Resource;->format:Ljava/lang/String;

    return-object p0
.end method

.method public setHeight(F)Lcom/onyx/engine/sdk/Resource;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/Resource;->height:F

    return-object p0
.end method

.method public setResourcePath(Ljava/lang/String;)Lcom/onyx/engine/sdk/Resource;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/Resource;->resourcePath:Ljava/lang/String;

    return-object p0
.end method

.method public setWidth(F)Lcom/onyx/engine/sdk/Resource;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/Resource;->width:F

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource{basePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/Resource;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resourcePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/Resource;->resourcePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", format=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/Resource;->format:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/Resource;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/engine/sdk/Resource;->height:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
