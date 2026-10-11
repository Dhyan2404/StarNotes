.class public abstract Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;
.super Lorg/apache/poi/hslf/usermodel/HSLFShape;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/SimpleShape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/sl/usermodel/SimpleShape<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field protected static final ADJUST_VALUES:[Lorg/apache/poi/ddf/EscherPropertyTypes;

.field public static final DEFAULT_LINE_WIDTH:D = 0.75

.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field protected _hyperlink:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->LOG:Lorg/apache/logging/log4j/Logger;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__ADJUSTVALUE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__ADJUST2VALUE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v3, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__ADJUST3VALUE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v4, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__ADJUST4VALUE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v5, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__ADJUST5VALUE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v6, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__ADJUST6VALUE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v7, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__ADJUST7VALUE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v8, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__ADJUST8VALUE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v9, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__ADJUST9VALUE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v10, Lorg/apache/poi/ddf/EscherPropertyTypes;->GEOMETRY__ADJUST10VALUE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    filled-new-array/range {v1 .. v10}, [Lorg/apache/poi/ddf/EscherPropertyTypes;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->ADJUST_VALUES:[Lorg/apache/poi/ddf/EscherPropertyTypes;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;-><init>(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/sl/usermodel/ShapeContainer;)V

    return-void
.end method


# virtual methods
.method public createHyperlink()Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->_hyperlink:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->createHyperlink(Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;)Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->_hyperlink:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    .line 4
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->_hyperlink:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    return-object p0
.end method

.method public bridge synthetic createHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->createHyperlink()Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    sget-short v0, Lorg/apache/poi/ddf/EscherContainerRecord;->SP_CONTAINER:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    new-instance v0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherSpRecord;-><init>()V

    if-eqz p1, :cond_0

    const/16 v1, 0xa02

    goto :goto_0

    :cond_0
    const/16 v1, 0xa00

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    new-instance v0, Lorg/apache/poi/ddf/EscherOptRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherOptRecord;-><init>()V

    sget-short v1, Lorg/apache/poi/ddf/EscherOptRecord;->RECORD_ID:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    if-eqz p1, :cond_1

    new-instance p1, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-direct {p1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-static {v0, v2, v3}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V

    return-object p0
.end method

.method public getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const-string v1, "adj([1-9]|10)?"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "adj"

    const-string v2, ""

    .line 3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "1"

    .line 5
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_6

    const/16 v3, 0xa

    if-gt v1, v3, :cond_6

    .line 6
    sget-object v3, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->ADJUST_VALUES:[Lorg/apache/poi/ddf/EscherPropertyTypes;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    const/4 v4, -0x1

    .line 7
    invoke-virtual {p0, v3, v4}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    return-object v0

    .line 8
    :cond_2
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$4;->$SwitchMap$org$apache$poi$sl$usermodel$ShapeType:[I

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-ne v1, v0, :cond_3

    goto :goto_0

    :pswitch_1
    if-eq v1, v0, :cond_4

    const/4 p0, 0x3

    if-eq v1, p0, :cond_4

    const/4 p0, 0x4

    if-ne v1, p0, :cond_3

    goto :goto_0

    :pswitch_2
    if-eq v1, v2, :cond_4

    if-ne v1, v0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :cond_4
    :goto_0
    move v4, v2

    .line 9
    :goto_1
    new-instance p0, Lorg/apache/poi/sl/draw/geom/Guide;

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/geom/Guide;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/Guide;->setName(Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "val "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v0, v3

    if-eqz v4, :cond_5

    const-wide/high16 v2, 0x40f0000000000000L    # 65536.0

    goto :goto_2

    :cond_5
    const-wide v2, 0x40130c30c30c30c3L    # 4.761904761904762

    :goto_2
    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/sl/draw/geom/Guide;->setFmla(Ljava/lang/String;)V

    return-object p0

    .line 12
    :cond_6
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid adjust value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_7
    :goto_3
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v1, "Adjust value \'{}\' not supported. Using default value."

    invoke-interface {p0, v1, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/GuideIf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getAdjustValue(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/Guide;

    move-result-object p0

    return-object p0
.end method

.method public getFillColor()Ljava/awt/Color;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getFill()Lorg/apache/poi/hslf/usermodel/HSLFFill;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getForegroundColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getGeometry()Lorg/apache/poi/sl/draw/geom/CustomGeometry;
    .locals 3

    invoke-static {}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->getInstance()Lorg/apache/poi/sl/draw/geom/PresetGeometries;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/sl/usermodel/ShapeType;->getOoxmlName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/apache/poi/sl/draw/geom/PresetGeometries;->get(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/CustomGeometry;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "<unknown>"

    :goto_1
    move-object v1, p0

    :cond_2
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v2, "No preset shape definition for shapeType: {}"

    invoke-interface {p0, v2, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public getHyperlink()Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->_hyperlink:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    return-object p0
.end method

.method public bridge synthetic getHyperlink()Lorg/apache/poi/sl/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getHyperlink()Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    move-result-object p0

    return-object p0
.end method

.method public getLineBackgroundColor()Ljava/awt/Color;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__BACKCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__OPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getLineCap()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEENDCAPSTYLE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->FLAT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLineColor()Ljava/awt/Color;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__OPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getLineCompound()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINESTYLE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->SINGLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLineDash()Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEDASHING:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SOLID:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLineDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration;
    .locals 1

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$3;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$3;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;)V

    return-object v0
.end method

.method public getLineHeadDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINESTARTARROWHEAD:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLineHeadLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINESTARTARROWLENGTH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLineHeadWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINESTARTARROWWIDTH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLineTailDecoration()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEENDARROWHEAD:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLineTailLength()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEENDARROWLENGTH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLineTailWidth()Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEENDARROWWIDTH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->fromNativeId(I)Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getLineWidth()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEWIDTH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getPlaceholderDetails()Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    return-object p0
.end method

.method public getPlaceholderDetails()Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;)V

    return-object v0
.end method

.method public bridge synthetic getPlaceholderDetails()Lorg/apache/poi/sl/usermodel/PlaceholderDetails;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getPlaceholderDetails()Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;

    move-result-object p0

    return-object p0
.end method

.method public getShadow()Lorg/apache/poi/sl/usermodel/Shadow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/Shadow<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__TYPE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {v0, v2}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$2;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$2;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;)V

    return-object v0
.end method

.method public getShadowAngle()D
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__OFFSETX:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    :goto_0
    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__OFFSETY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    :goto_1
    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getShadowColor()Ljava/awt/Color;
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__OPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ljava/awt/Color;->black:Ljava/awt/Color;

    :cond_0
    return-object p0
.end method

.method public getShadowDistance()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__OFFSETX:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    :goto_0
    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHADOWSTYLE__OFFSETY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    :goto_1
    int-to-double v2, v0

    int-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->toPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getStrokeStyle()Lorg/apache/poi/sl/usermodel/StrokeStyle;
    .locals 1

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape$1;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;)V

    return-object v0
.end method

.method public isPlaceholder()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setFillColor(Ljava/awt/Color;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getFill()Lorg/apache/poi/hslf/usermodel/HSLFFill;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->setForegroundColor(Ljava/awt/Color;)V

    return-void
.end method

.method public setHyperlink(Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->_hyperlink:Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    return-void
.end method

.method public setLineBackgroundColor(Ljava/awt/Color;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v0, 0x80000

    invoke-static {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__BACKCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/awt/Color;-><init>(IIII)V

    invoke-virtual {v0}, Ljava/awt/Color;->getRGB()I

    move-result p1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__BACKCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x180018

    invoke-static {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    :goto_0
    return-void
.end method

.method public setLineCap(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEENDCAPSTYLE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->FLAT:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    if-ne p1, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;->nativeId:I

    :goto_0
    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setLineColor(Ljava/awt/Color;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/high16 v0, 0x80000

    invoke-static {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/awt/Color;-><init>(IIII)V

    invoke-virtual {v0}, Ljava/awt/Color;->getRGB()I

    move-result p1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__NOLINEDRAWDASH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const v0, 0x180018

    invoke-static {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    :goto_0
    return-void
.end method

.method public setLineCompound(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINESTYLE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->SINGLE:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    if-ne p1, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;->nativeId:I

    :goto_0
    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEDASHING:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->SOLID:Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    if-ne p1, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;->nativeId:I

    :goto_0
    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setLineHeadDecoration(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINESTARTARROWHEAD:Lorg/apache/poi/ddf/EscherPropertyTypes;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->nativeId:I

    :goto_0
    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setLineHeadLength(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINESTARTARROWLENGTH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->nativeId:I

    :goto_0
    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setLineHeadWidth(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINESTARTARROWWIDTH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->nativeId:I

    :goto_0
    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setLineTailDecoration(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEENDARROWHEAD:Lorg/apache/poi/ddf/EscherPropertyTypes;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationShape;->nativeId:I

    :goto_0
    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setLineTailLength(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEENDARROWLENGTH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->nativeId:I

    :goto_0
    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setLineTailWidth(Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEENDARROWWIDTH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/apache/poi/sl/usermodel/LineDecoration$DecorationSize;->nativeId:I

    :goto_0
    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setLineWidth(D)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__LINEWIDTH:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->toEMU(D)I

    move-result p1

    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getPlaceholderDetails()Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;->setPlaceholder(Lorg/apache/poi/sl/usermodel/Placeholder;)V

    return-void
.end method

.method public varargs setStrokeStyle([Ljava/lang/Object;)V
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineColor(Ljava/awt/Color;)V

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p1, v1

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineWidth(D)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineCap(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCap;)V

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineDash(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineDash;)V

    goto :goto_1

    :cond_3
    instance-of v3, v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineCompound(Lorg/apache/poi/sl/usermodel/StrokeStyle$LineCompound;)V

    goto :goto_1

    :cond_4
    instance-of v3, v2, Ljava/awt/Color;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/awt/Color;

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->setLineColor(Ljava/awt/Color;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method
