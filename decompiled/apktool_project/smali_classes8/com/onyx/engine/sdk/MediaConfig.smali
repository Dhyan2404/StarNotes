.class public Lcom/onyx/engine/sdk/MediaConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field format:Ljava/lang/String;

.field height:F

.field iconPath:Ljava/lang/String;

.field type:Ljava/lang/String;

.field width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/MediaConfig;->format:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/MediaConfig;->height:F

    return p0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/MediaConfig;->iconPath:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/MediaConfig;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/MediaConfig;->width:F

    return p0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/onyx/engine/sdk/MediaConfig;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/MediaConfig;->format:Ljava/lang/String;

    return-object p0
.end method

.method public setHeight(F)Lcom/onyx/engine/sdk/MediaConfig;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/MediaConfig;->height:F

    return-object p0
.end method

.method public setIconPath(Ljava/lang/String;)Lcom/onyx/engine/sdk/MediaConfig;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/MediaConfig;->iconPath:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/onyx/engine/sdk/MediaConfig;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/MediaConfig;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setWidth(F)Lcom/onyx/engine/sdk/MediaConfig;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/MediaConfig;->width:F

    return-object p0
.end method
