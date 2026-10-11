.class public Lorg/apache/poi/xwpf/usermodel/ShapeProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FONT_SIZE_REGEX:Ljava/lang/String; = "^(\\d+)(px|pt)*"


# instance fields
.field allowInCell:Z

.field anchor:Ljava/awt/geom/Rectangle2D;

.field arrow:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

.field arrowOk:Z

.field fillColor:Ljava/awt/Color;

.field filled:Z

.field flip:Lorg/apache/poi/xwpf/usermodel/Flip;

.field fontFamily:Ljava/lang/String;

.field fontSize:F

.field marginLeft:D

.field marginTop:D

.field position:Lorg/apache/poi/wp/usermodel/Position;

.field relativeH:Lorg/apache/poi/xwpf/usermodel/RelativeH;

.field relativeV:Lorg/apache/poi/xwpf/usermodel/RelativeV;

.field rotation:F

.field shadow:Ljava/lang/String;

.field shapeId:Ljava/lang/String;

.field spt:D

.field stroke:Ljava/awt/BasicStroke;

.field stroked:Z

.field strokedColor:Ljava/awt/Color;

.field vTextKern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    sget-object v0, Lcom/microsoft/schemas/vml/STStrokeArrowType;->NONE:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->arrow:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    sget-object v0, Lorg/apache/poi/wp/usermodel/Position;->NONE:Lorg/apache/poi/wp/usermodel/Position;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->position:Lorg/apache/poi/wp/usermodel/Position;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/RelativeH;->NORMAL:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->relativeH:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/RelativeV;->NORMAL:Lorg/apache/poi/xwpf/usermodel/RelativeV;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->relativeV:Lorg/apache/poi/xwpf/usermodel/RelativeV;

    sget-object v0, Lorg/apache/poi/xwpf/usermodel/Flip;->NONE:Lorg/apache/poi/xwpf/usermodel/Flip;

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->flip:Lorg/apache/poi/xwpf/usermodel/Flip;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->allowInCell:Z

    return-void
.end method

.method private parseFontSize(Ljava/lang/String;)F
    .locals 1

    const-string p0, "^(\\d+)(px|pt)*"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    if-eqz p0, :cond_1

    const-string v0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    float-to-double p0, p1

    invoke-static {p0, p1}, Lorg/apache/poi/util/Units;->pointsToPixel(D)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v7, v4

    move-wide v9, v7

    move-wide v11, v9

    move-wide v13, v11

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_10

    aget-object v5, v1, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v16, 0x1

    const/16 v17, -0x1

    sparse-switch v15, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v15, "margin-top"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v17, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string v15, "mso-position-vertical-relative"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v17, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v15, "v-text-kern"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v17, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v15, "margin-left"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v17, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string v15, "position"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v17, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v15, "width"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v17, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v15, "font-family"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v17, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v15, "left"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    const/16 v17, 0x7

    goto :goto_1

    :sswitch_8
    const-string v15, "flip"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    const/16 v17, 0x6

    goto :goto_1

    :sswitch_9
    const-string v15, "top"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_1

    :cond_a
    const/16 v17, 0x5

    goto :goto_1

    :sswitch_a
    const-string v15, "mso-text-shadow"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_1

    :cond_b
    const/16 v17, 0x4

    goto :goto_1

    :sswitch_b
    const-string v15, "rotation"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_1

    :cond_c
    const/16 v17, 0x3

    goto :goto_1

    :sswitch_c
    const-string v15, "height"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_1

    :cond_d
    const/16 v17, 0x2

    goto :goto_1

    :sswitch_d
    const-string v15, "font-size"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_1

    :cond_e
    move/from16 v17, v16

    goto :goto_1

    :sswitch_e
    const-string v15, "mso-position-horizontal-relative"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_1

    :cond_f
    move/from16 v17, v3

    :goto_1
    packed-switch v17, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    aget-object v5, v5, v16

    invoke-static {v5}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-double v5, v5

    iput-wide v5, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->marginTop:D

    goto/16 :goto_2

    :pswitch_1
    aget-object v5, v5, v16

    invoke-static {v5}, Lorg/apache/poi/xwpf/usermodel/RelativeV;->relativeOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/RelativeV;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->relativeV:Lorg/apache/poi/xwpf/usermodel/RelativeV;

    goto/16 :goto_2

    :pswitch_2
    aget-object v5, v5, v16

    iput-object v5, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->vTextKern:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_3
    aget-object v5, v5, v16

    invoke-static {v5}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-double v5, v5

    iput-wide v5, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->marginLeft:D

    goto :goto_2

    :pswitch_4
    aget-object v5, v5, v16

    invoke-static {v5}, Lorg/apache/poi/wp/usermodel/Position;->positionOf(Ljava/lang/String;)Lorg/apache/poi/wp/usermodel/Position;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->position:Lorg/apache/poi/wp/usermodel/Position;

    goto :goto_2

    :pswitch_5
    aget-object v5, v5, v16

    invoke-static {v5}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v5

    move-wide v11, v5

    goto :goto_2

    :pswitch_6
    aget-object v5, v5, v16

    iput-object v5, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fontFamily:Ljava/lang/String;

    goto :goto_2

    :pswitch_7
    aget-object v5, v5, v16

    invoke-static {v5}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v5

    move-wide v7, v5

    goto :goto_2

    :pswitch_8
    aget-object v5, v5, v16

    invoke-static {v5}, Lorg/apache/poi/xwpf/usermodel/Flip;->flipOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/Flip;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->flip:Lorg/apache/poi/xwpf/usermodel/Flip;

    goto :goto_2

    :pswitch_9
    aget-object v5, v5, v16

    invoke-static {v5}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v5

    move-wide v9, v5

    goto :goto_2

    :pswitch_a
    aget-object v5, v5, v16

    iput-object v5, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shadow:Ljava/lang/String;

    goto :goto_2

    :pswitch_b
    aget-object v5, v5, v16

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->rotation:F

    goto :goto_2

    :pswitch_c
    aget-object v5, v5, v16

    invoke-static {v5}, Lorg/apache/poi/convert/xwpf/XWPFWordToHtmlUtils;->parseNumberValue(Ljava/lang/String;)D

    move-result-wide v5

    move-wide v13, v5

    goto :goto_2

    :pswitch_d
    aget-object v5, v5, v16

    invoke-direct {v0, v5}, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->parseFontSize(Ljava/lang/String;)F

    move-result v5

    iput v5, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fontSize:F

    goto :goto_2

    :pswitch_e
    aget-object v5, v5, v16

    invoke-static {v5}, Lorg/apache/poi/xwpf/usermodel/RelativeH;->relativeOf(Ljava/lang/String;)Lorg/apache/poi/xwpf/usermodel/RelativeH;

    move-result-object v5

    iput-object v5, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->relativeH:Lorg/apache/poi/xwpf/usermodel/RelativeH;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_10
    iget-object v6, v0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual/range {v6 .. v14}, Ljava/awt/geom/Rectangle2D;->setFrame(DDDD)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ea3d08b -> :sswitch_e
        -0x5e89b141 -> :sswitch_d
        -0x48c76ed9 -> :sswitch_c
        -0x266f082 -> :sswitch_b
        -0x946a84 -> :sswitch_a
        0x1c155 -> :sswitch_9
        0x30006d -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x67812a2 -> :sswitch_6
        0x6be2dc6 -> :sswitch_5
        0x2c929929 -> :sswitch_4
        0x381698c6 -> :sswitch_3
        0x51b6851f -> :sswitch_2
        0x53d4b863 -> :sswitch_1
        0x756c34b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeProperties{shapeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shapeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", anchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->anchor:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", arrow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->arrow:Lcom/microsoft/schemas/vml/STStrokeArrowType$Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->position:Lorg/apache/poi/wp/usermodel/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->flip:Lorg/apache/poi/xwpf/usermodel/Flip;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fillColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fillColor:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", strokedColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->strokedColor:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stroke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroke:Ljava/awt/BasicStroke;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vTextKern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->vTextKern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->shadow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->fontSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", spt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->spt:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", marginLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->marginLeft:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", marginTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->marginTop:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", arrowOk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->arrowOk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", filled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->filled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stroked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->stroked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowInCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/apache/poi/xwpf/usermodel/ShapeProperties;->allowInCell:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
