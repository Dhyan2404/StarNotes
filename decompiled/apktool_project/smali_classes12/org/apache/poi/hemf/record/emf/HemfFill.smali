.class public final Lorg/apache/poi/hemf/record/emf/HemfFill;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetDiBitsToDevice;,
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;,
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtSelectClipRgn;,
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfFillRgn;,
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfPaintRgn;,
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;,
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfFrameRgn;,
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfBitBlt;,
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchDiBits;,
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;,
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfExtFloodFill;,
        Lorg/apache/poi/hemf/record/emf/HemfFill$EmfSetPolyfillMode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/awt/geom/Area;Ljava/awt/geom/Rectangle2D;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfFill;->lambda$getRgnShape$0(Ljava/awt/geom/Area;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public static getRgnShape(Ljava/util/List;)Ljava/awt/Shape;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;)",
            "Ljava/awt/Shape;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Shape;

    return-object p0

    :cond_0
    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0}, Ljava/awt/geom/Area;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/uhh;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/uhh;-><init>(Ljava/awt/geom/Area;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private static synthetic lambda$getRgnShape$0(Ljava/awt/geom/Area;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {p0, v0}, Ljava/awt/geom/Area;->add(Ljava/awt/geom/Area;)V

    return-void
.end method

.method public static readBitmap(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hwmf/record/HwmfBitmapDib;IIIII)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result v2

    add-int/lit8 p2, p2, -0x8

    sub-int/2addr v2, p2

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return-wide v0

    :cond_1
    sub-int/2addr p5, v2

    sub-int/2addr p5, p4

    sub-int/2addr p5, p3

    invoke-virtual {p0, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    if-eqz p4, :cond_4

    if-nez p6, :cond_2

    goto :goto_0

    :cond_2
    add-int p2, p4, p6

    if-nez p5, :cond_3

    int-to-long p3, p3

    invoke-virtual {p1, p0, p2}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->init(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr p3, p0

    return-wide p3

    :cond_3
    new-instance v0, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;-><init>(I)V

    int-to-long v1, p4

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    invoke-virtual {p0, p5}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    int-to-long v3, p6

    invoke-static {p0, v0, v3, v4}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    new-instance p0, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/UnsynchronizedByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object p4

    invoke-direct {p0, p4}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, p0, p2}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;->init(Lorg/apache/poi/util/LittleEndianInputStream;I)I

    int-to-long p0, p3

    add-long/2addr p0, v1

    int-to-long p2, p5

    add-long/2addr p0, p2

    add-long/2addr p0, v3

    return-wide p0

    :cond_4
    :goto_0
    int-to-long p0, p3

    return-wide p0
.end method

.method public static readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    int-to-double v4, v0

    int-to-double v6, v1

    int-to-double v8, v2

    int-to-double v10, p0

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    const/16 p0, 0x10

    return p0
.end method

.method public static readRgnData(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/util/List;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/LittleEndianInputStream;",
            "Ljava/util/List<",
            "Ljava/awt/geom/Rectangle2D;",
            ">;)J"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    new-instance v2, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v2}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-static {p0, v2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    const/4 v4, 0x0

    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, v0

    if-gez v5, :cond_0

    new-instance v5, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v5}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    invoke-static {p0, v5}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide v6

    add-long/2addr v2, v6

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static readXForm(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/AffineTransform;)I
    .locals 14

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v6

    float-to-double v8, v6

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v6

    float-to-double v10, v6

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result p0

    float-to-double v12, p0

    neg-double v4, v4

    neg-double v6, v0

    move-object v1, p1

    invoke-virtual/range {v1 .. v13}, Ljava/awt/geom/AffineTransform;->setTransform(DDDDDD)V

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->setToIdentity()V

    :cond_0
    const/16 p0, 0x18

    return p0
.end method
