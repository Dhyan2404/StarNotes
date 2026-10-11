.class public Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/engine/sdk/ReaderTextStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageStyle"
.end annotation


# instance fields
.field private closeDefScale:Z

.field private scaleMinHeight:F

.field private scaleMinWidth:F

.field private scaleToPageLimit:F

.field private scaling:F

.field private singleImageFullScreen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->singleImageFullScreen:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->closeDefScale:Z

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinWidth:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinHeight:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaling:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleToPageLimit:F

    return-void
.end method

.method public static synthetic access$400(Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->closeDefScale:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;)F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinWidth:F

    return p0
.end method

.method public static synthetic access$600(Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;)F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinHeight:F

    return p0
.end method

.method public static synthetic access$700(Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;)F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaling:F

    return p0
.end method


# virtual methods
.method public copy(Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->closeDefScale:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->closeDefScale:Z

    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinWidth:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinWidth:F

    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinHeight:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinHeight:F

    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaling:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaling:F

    iget-boolean v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->singleImageFullScreen:Z

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->singleImageFullScreen:Z

    iget p1, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleToPageLimit:F

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleToPageLimit:F

    return-void
.end method

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
    check-cast p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->closeDefScale:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->closeDefScale:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->singleImageFullScreen:Z

    iget-boolean v3, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->singleImageFullScreen:Z

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinWidth:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinWidth:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinHeight:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinHeight:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaling:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaling:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget p1, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleToPageLimit:F

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleToPageLimit:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getScaleMinHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinHeight:F

    return p0
.end method

.method public getScaleMinWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinWidth:F

    return p0
.end method

.method public getScaleToPageLimit()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleToPageLimit:F

    return p0
.end method

.method public getScaling()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaling:F

    return p0
.end method

.method public hashCode()I
    .locals 7

    iget-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->singleImageFullScreen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->closeDefScale:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaling:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleToPageLimit:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isCloseDefScale()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->closeDefScale:Z

    return p0
.end method

.method public isSingleImageFullScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->singleImageFullScreen:Z

    return p0
.end method

.method public setCloseDefScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->closeDefScale:Z

    return-void
.end method

.method public setScaleMinHeight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinHeight:F

    return-void
.end method

.method public setScaleMinWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleMinWidth:F

    return-void
.end method

.method public setScaleToPageLimit(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaleToPageLimit:F

    return-void
.end method

.method public setScaling(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->scaling:F

    return-void
.end method

.method public setSingleImageFullScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$ImageStyle;->singleImageFullScreen:Z

    return-void
.end method
