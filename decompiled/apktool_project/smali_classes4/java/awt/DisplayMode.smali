.class public final Ljava/awt/DisplayMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BIT_DEPTH_MULTI:I = -0x1

.field public static final REFRESH_RATE_UNKNOWN:I


# instance fields
.field private bitDepth:I

.field private refreshRate:I

.field private size:Ljava/awt/Dimension;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p1, p2}, Ljava/awt/Dimension;-><init>(II)V

    iput-object v0, p0, Ljava/awt/DisplayMode;->size:Ljava/awt/Dimension;

    iput p3, p0, Ljava/awt/DisplayMode;->bitDepth:I

    iput p4, p0, Ljava/awt/DisplayMode;->refreshRate:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/awt/DisplayMode;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/DisplayMode;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/DisplayMode;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getBitDepth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/DisplayMode;->getBitDepth()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getRefreshRate()I

    move-result p0

    invoke-virtual {p1}, Ljava/awt/DisplayMode;->getRefreshRate()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 5
    instance-of v0, p1, Ljava/awt/DisplayMode;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Ljava/awt/DisplayMode;

    invoke-virtual {p0, p1}, Ljava/awt/DisplayMode;->equals(Ljava/awt/DisplayMode;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBitDepth()I
    .locals 0

    iget p0, p0, Ljava/awt/DisplayMode;->bitDepth:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Ljava/awt/DisplayMode;->size:Ljava/awt/Dimension;

    iget p0, p0, Ljava/awt/Dimension;->height:I

    return p0
.end method

.method public getRefreshRate()I
    .locals 0

    iget p0, p0, Ljava/awt/DisplayMode;->refreshRate:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Ljava/awt/DisplayMode;->size:Ljava/awt/Dimension;

    iget p0, p0, Ljava/awt/Dimension;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getBitDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getRefreshRate()I

    move-result p0

    mul-int/lit8 p0, p0, 0xd

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getBitDepth()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getBitDepth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "bpp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "[Multi depth]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getRefreshRate()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/awt/DisplayMode;->getRefreshRate()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "Hz"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "[Unknown refresh rate]"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
