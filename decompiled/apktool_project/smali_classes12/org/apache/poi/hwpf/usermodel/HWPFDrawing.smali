.class public Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;
.super Lorg/apache/poi/wp/usermodel/WPPicture;
.source "SourceFile"


# instance fields
.field private anchor:Ljava/awt/geom/Rectangle2D;

.field private name:Ljava/lang/String;

.field private officeDrawing:Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;

.field pictureData:[B

.field private pictureType:Lorg/apache/poi/hwpf/usermodel/PictureType;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;I)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/wp/usermodel/WPPicture;-><init>()V

    sget-object v0, Lorg/apache/poi/hwpf/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/hwpf/usermodel/PictureType;

    iput-object v0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->pictureType:Lorg/apache/poi/hwpf/usermodel/PictureType;

    iput-object p1, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->officeDrawing:Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;

    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->getAnchor(Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-interface {p1}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;->getPictureData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->pictureData:[B

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/poi/hwpf/usermodel/PictureType;->findMatchingType([B)Lorg/apache/poi/hwpf/usermodel/PictureType;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->pictureType:Lorg/apache/poi/hwpf/usermodel/PictureType;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/io/Serializable;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    iget-object p2, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->pictureType:Lorg/apache/poi/hwpf/usermodel/PictureType;

    invoke-virtual {p2}, Lorg/apache/poi/hwpf/usermodel/PictureType;->getExtension()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "."

    invoke-static {p1, p2}, Lorg/apache/poi/util/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getAnchor(Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;)Ljava/awt/geom/Rectangle2D;
    .locals 11

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;->getRectangleLeft()I

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v3

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;->getRectangleTop()I

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v5

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;->getRectangleRight()I

    move-result p0

    invoke-interface {p1}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;->getRectangleLeft()I

    move-result v0

    sub-int/2addr p0, v0

    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v7

    .line 4
    invoke-interface {p1}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;->getRectangleBottom()I

    move-result p0

    invoke-interface {p1}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;->getRectangleTop()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v9

    .line 5
    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flipH()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public flipV()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 0

    .line 6
    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->anchor:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 0

    sget-object p0, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    return-object p0
.end method

.method public getClip()Ljava/awt/Insets;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->pictureType:Lorg/apache/poi/hwpf/usermodel/PictureType;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/PictureType;->getMime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->pictureData:[B

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->pictureData:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->anchor:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getOutlines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/sl/draw/geom/Outline;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPosition()Lorg/apache/poi/wp/usermodel/Position;
    .locals 0

    sget-object p0, Lorg/apache/poi/wp/usermodel/Position;->NONE:Lorg/apache/poi/wp/usermodel/Position;

    return-object p0
.end method

.method public getRotation()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public identifier()I
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->pictureType:Lorg/apache/poi/hwpf/usermodel/PictureType;

    sget-object v1, Lorg/apache/poi/hwpf/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/hwpf/usermodel/PictureType;

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/usermodel/PictureType;->getMime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x25

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFDrawing;->name:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x2b

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method
