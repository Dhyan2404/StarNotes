.class public Ljava/awt/font/FontRenderContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient aaHintValue:Ljava/lang/Object;

.field private transient defaulting:Z

.field private transient fmHintValue:Ljava/lang/Object;

.field private transient tx:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    iput-object v0, p0, Ljava/awt/font/FontRenderContext;->aaHintValue:Ljava/lang/Object;

    .line 3
    sget-object v0, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_DEFAULT:Ljava/lang/Object;

    iput-object v0, p0, Ljava/awt/font/FontRenderContext;->fmHintValue:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ljava/awt/font/FontRenderContext;->defaulting:Z

    return-void
.end method

.method public constructor <init>(Ljava/awt/geom/AffineTransform;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "FM hint:"

    const-string v1, "AA hint:"

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    new-instance v2, Ljava/awt/geom/AffineTransform;

    invoke-direct {v2, p1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v2, p0, Ljava/awt/font/FontRenderContext;->tx:Ljava/awt/geom/AffineTransform;

    .line 15
    :cond_0
    :try_start_0
    sget-object p1, Ljava/awt/RenderingHints;->KEY_TEXT_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p1, p2}, Ljava/awt/RenderingHints$Key;->isCompatibleValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    iput-object p2, p0, Ljava/awt/font/FontRenderContext;->aaHintValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :try_start_1
    sget-object p1, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    invoke-virtual {p1, p3}, Ljava/awt/RenderingHints$Key;->isCompatibleValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iput-object p3, p0, Ljava/awt/font/FontRenderContext;->fmHintValue:Ljava/lang/Object;

    return-void

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_2
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 22
    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/awt/geom/AffineTransform;ZZ)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v0, p0, Ljava/awt/font/FontRenderContext;->tx:Ljava/awt/geom/AffineTransform;

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    sget-object p1, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    iput-object p1, p0, Ljava/awt/font/FontRenderContext;->aaHintValue:Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

    iput-object p1, p0, Ljava/awt/font/FontRenderContext;->aaHintValue:Ljava/lang/Object;

    :goto_0
    if-eqz p3, :cond_2

    .line 10
    sget-object p1, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    iput-object p1, p0, Ljava/awt/font/FontRenderContext;->fmHintValue:Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_2
    sget-object p1, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_OFF:Ljava/lang/Object;

    iput-object p1, p0, Ljava/awt/font/FontRenderContext;->fmHintValue:Ljava/lang/Object;

    :goto_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/awt/font/FontRenderContext;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 2
    :cond_1
    iget-boolean v2, p1, Ljava/awt/font/FontRenderContext;->defaulting:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Ljava/awt/font/FontRenderContext;->defaulting:Z

    if-nez v2, :cond_5

    .line 3
    iget-object v2, p1, Ljava/awt/font/FontRenderContext;->aaHintValue:Ljava/lang/Object;

    iget-object v3, p0, Ljava/awt/font/FontRenderContext;->aaHintValue:Ljava/lang/Object;

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Ljava/awt/font/FontRenderContext;->fmHintValue:Ljava/lang/Object;

    iget-object v3, p0, Ljava/awt/font/FontRenderContext;->fmHintValue:Ljava/lang/Object;

    if-ne v2, v3, :cond_4

    .line 4
    iget-object p0, p0, Ljava/awt/font/FontRenderContext;->tx:Ljava/awt/geom/AffineTransform;

    if-nez p0, :cond_3

    iget-object p0, p1, Ljava/awt/font/FontRenderContext;->tx:Ljava/awt/geom/AffineTransform;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object p1, p1, Ljava/awt/font/FontRenderContext;->tx:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0, p1}, Ljava/awt/geom/AffineTransform;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_4
    return v1

    .line 5
    :cond_5
    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->getAntiAliasingHint()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Ljava/awt/font/FontRenderContext;->getAntiAliasingHint()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_6

    .line 6
    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->getFractionalMetricsHint()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Ljava/awt/font/FontRenderContext;->getFractionalMetricsHint()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_6

    .line 7
    invoke-virtual {p1}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p0}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/awt/geom/AffineTransform;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    :try_start_0
    check-cast p1, Ljava/awt/font/FontRenderContext;

    invoke-virtual {p0, p1}, Ljava/awt/font/FontRenderContext;->equals(Ljava/awt/font/FontRenderContext;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAntiAliasingHint()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Ljava/awt/font/FontRenderContext;->defaulting:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/font/FontRenderContext;->isAntiAliased()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    return-object p0

    :cond_0
    sget-object p0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object p0, p0, Ljava/awt/font/FontRenderContext;->aaHintValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getFractionalMetricsHint()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Ljava/awt/font/FontRenderContext;->defaulting:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/font/FontRenderContext;->usesFractionalMetrics()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    return-object p0

    :cond_0
    sget-object p0, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_OFF:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object p0, p0, Ljava/awt/font/FontRenderContext;->fmHintValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 1

    iget-object v0, p0, Ljava/awt/font/FontRenderContext;->tx:Ljava/awt/geom/AffineTransform;

    if-nez v0, :cond_0

    new-instance p0, Ljava/awt/geom/AffineTransform;

    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Ljava/awt/font/FontRenderContext;->tx:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getTransformType()I
    .locals 1

    iget-boolean v0, p0, Ljava/awt/font/FontRenderContext;->defaulting:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Ljava/awt/font/FontRenderContext;->tx:Ljava/awt/geom/AffineTransform;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/awt/font/FontRenderContext;->tx:Ljava/awt/geom/AffineTransform;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->hashCode()I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Ljava/awt/font/FontRenderContext;->defaulting:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/font/FontRenderContext;->getAntiAliasingHint()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/awt/font/FontRenderContext;->getFractionalMetricsHint()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Ljava/awt/font/FontRenderContext;->aaHintValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Ljava/awt/font/FontRenderContext;->fmHintValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_1
    add-int/2addr v0, p0

    return v0
.end method

.method public isAntiAliased()Z
    .locals 1

    iget-object p0, p0, Ljava/awt/font/FontRenderContext;->aaHintValue:Ljava/lang/Object;

    sget-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransformed()Z
    .locals 2

    iget-boolean v0, p0, Ljava/awt/font/FontRenderContext;->defaulting:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Ljava/awt/font/FontRenderContext;->tx:Ljava/awt/geom/AffineTransform;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/awt/font/FontRenderContext;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public usesFractionalMetrics()Z
    .locals 1

    iget-object p0, p0, Ljava/awt/font/FontRenderContext;->fmHintValue:Ljava/lang/Object;

    sget-object v0, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_OFF:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_DEFAULT:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
