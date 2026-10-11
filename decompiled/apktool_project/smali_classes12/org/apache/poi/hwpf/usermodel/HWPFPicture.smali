.class public Lorg/apache/poi/hwpf/usermodel/HWPFPicture;
.super Lorg/apache/poi/wp/usermodel/WPPicture;
.source "SourceFile"


# instance fields
.field private anchor:Ljava/awt/geom/Rectangle2D;

.field private clip:Ljava/awt/Insets;

.field private name:Ljava/lang/String;

.field private picture:Lorg/apache/poi/hwpf/usermodel/Picture;

.field private pictureType:Lorg/apache/poi/hwpf/usermodel/PictureType;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hwpf/usermodel/Picture;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/wp/usermodel/WPPicture;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->picture:Lorg/apache/poi/hwpf/usermodel/Picture;

    invoke-direct {p0, p1}, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->initAnchorAndClip(Lorg/apache/poi/hwpf/usermodel/Picture;)V

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/Picture;->suggestPictureType()Lorg/apache/poi/hwpf/usermodel/PictureType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->pictureType:Lorg/apache/poi/hwpf/usermodel/PictureType;

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/usermodel/Picture;->suggestFullFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->name:Ljava/lang/String;

    return-void
.end method

.method private initAnchorAndClip(Lorg/apache/poi/hwpf/usermodel/Picture;)V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hwpf/usermodel/Picture;->getCropLeft()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hwpf/usermodel/Picture;->getCropTop()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hwpf/usermodel/Picture;->getCropRight()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hwpf/usermodel/Picture;->getCropBottom()D

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hwpf/usermodel/Picture;->getHorizontalScalingFactor()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hwpf/usermodel/Picture;->getVerticalScalingFactor()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDxaGoal()I

    move-result v11

    int-to-double v11, v11

    const/4 v13, 0x0

    cmpl-float v14, v9, v13

    const/high16 v15, 0x447a0000    # 1000.0f

    if-lez v14, :cond_0

    div-float/2addr v9, v15

    float-to-double v13, v9

    mul-double/2addr v11, v13

    :cond_0
    invoke-static {v11, v12}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/hwpf/usermodel/Picture;->getDyaGoal()I

    move-result v9

    int-to-double v13, v9

    const/4 v9, 0x0

    cmpl-float v9, v10, v9

    if-lez v9, :cond_1

    div-float/2addr v10, v15

    float-to-double v9, v10

    mul-double/2addr v13, v9

    :cond_1
    invoke-static {v13, v14}, Lorg/apache/poi/util/ExtUnits;->twipsToPx(D)D

    move-result-wide v9

    add-double v13, v1, v5

    mul-double/2addr v13, v11

    sub-double v20, v11, v13

    add-double v11, v3, v7

    mul-double/2addr v11, v9

    sub-double v22, v9, v11

    new-instance v9, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object v15, v9

    invoke-direct/range {v15 .. v23}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    iput-object v9, v0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    new-instance v9, Ljava/awt/Insets;

    const-wide v10, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v3, v10

    double-to-int v3, v3

    mul-double/2addr v1, v10

    double-to-int v1, v1

    mul-double/2addr v7, v10

    double-to-int v2, v7

    mul-double/2addr v5, v10

    double-to-int v4, v5

    invoke-direct {v9, v3, v1, v2, v4}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v9, v0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->clip:Ljava/awt/Insets;

    return-void
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

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 0

    sget-object p0, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    return-object p0
.end method

.method public getClip()Ljava/awt/Insets;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->clip:Ljava/awt/Insets;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->pictureType:Lorg/apache/poi/hwpf/usermodel/PictureType;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/PictureType;->getMime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->picture:Lorg/apache/poi/hwpf/usermodel/Picture;

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/usermodel/Picture;->getContent()[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->anchor:Ljava/awt/geom/Rectangle2D;

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

    iget-object v0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->pictureType:Lorg/apache/poi/hwpf/usermodel/PictureType;

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

    iget-object v2, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x25

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->clip:Ljava/awt/Insets;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2b

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/apache/poi/hwpf/usermodel/HWPFPicture;->name:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long v2, p0

    const-wide/16 v4, 0x2f

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method
