.class public Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hwmf/record/HwmfRecord;
.implements Lorg/apache/poi/hwmf/record/HwmfFill$HwmfImageRecord;
.implements Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwmf/record/HwmfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WmfDibCreatePatternBrush"
.end annotation


# instance fields
.field protected colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

.field private pattern16:Lorg/apache/poi/hwmf/record/HwmfBitmap16;

.field protected patternDib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

.field protected style:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->patternDib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->patternDib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->pattern16:Lorg/apache/poi/hwmf/record/HwmfBitmap16;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->patternDib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->getProperties()Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->style:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p1, v0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBrushColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBackgroundColor()Lorg/apache/poi/hwmf/record/HwmfColorRef;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->getColor()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->getBkMode()Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    move-result-object v2

    sget-object v3, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;->TRANSPARENT:Lorg/apache/poi/hwmf/record/HwmfMisc$WmfSetBkMode$HwmfBkMode;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushBitmap(Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hwmf/draw/HwmfGraphics;->addObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;)V

    return-void
.end method

.method public getBMPData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->patternDib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->patternDib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getBMPData()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getColorUsage()Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "style"

    new-instance v1, Lcom/sunia/HTREnginev2/y5i;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;)V

    const-string v2, "colorUsage"

    new-instance v3, Lcom/sunia/HTREnginev2/z5i;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/z5i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;)V

    const-string v4, "pattern"

    new-instance v5, Lcom/sunia/HTREnginev2/a6i;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/a6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;)V

    const-string v6, "bmpData"

    new-instance v7, Lcom/sunia/HTREnginev2/b6i;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/b6i;-><init>(Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->patternDib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->patternDib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->getImage(Ljava/awt/Color;Ljava/awt/Color;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->pattern16:Lorg/apache/poi/hwmf/record/HwmfBitmap16;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfBitmap16;->getImage()Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStyle()Lorg/apache/poi/hwmf/record/HwmfBrushStyle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->style:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    return-object p0
.end method

.method public getWmfRecordType()Lorg/apache/poi/hwmf/record/HwmfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hwmf/record/HwmfRecordType;->dibCreatePatternBrush:Lorg/apache/poi/hwmf/record/HwmfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p4

    invoke-static {p4}, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->style:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result p4

    invoke-static {p4}, Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->colorUsage:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    sget-object p4, Lorg/apache/poi/hwmf/record/HwmfMisc$1;->$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle:[I

    iget-object v0, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->style:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    const/4 v0, 0x4

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "pattern not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p4, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-direct {p4}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;-><init>()V

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfMisc$WmfDibCreatePatternBrush;->patternDib:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    const-wide/16 v1, 0x6

    sub-long/2addr p2, v1

    int-to-long v1, v0

    sub-long/2addr p2, v1

    long-to-int p0, p2

    invoke-virtual {p4, p1, p0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->init(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    move-result p0

    add-int/2addr v0, p0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
