.class public abstract Lorg/apache/poi/hslf/usermodel/HSLFShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/Shape;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/Shape<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private _escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

.field private _fill:Lorg/apache/poi/hslf/usermodel/HSLFFill;

.field private final _parent:Lorg/apache/poi/sl/usermodel/ShapeContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private _sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->LOG:Lorg/apache/logging/log4j/Logger;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_parent:Lorg/apache/poi/sl/usermodel/ShapeContainer;

    return-void
.end method

.method private applySysIndexProcedure(Lorg/apache/poi/ddf/EscherColorRef;Ljava/awt/Color;)Ljava/awt/Color;
    .locals 6

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->getSysIndexProcedure()Lorg/apache/poi/ddf/EscherColorRef$SysIndexProcedure;

    move-result-object p0

    if-eqz p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFShape$1;->$SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexProcedure:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const-wide v1, 0x406fe00000000000L    # 255.0

    const/4 v3, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v3, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->getRGB()[I

    move-result-object p0

    aget p0, p0, v3

    rsub-int p0, p0, 0xff

    int-to-double p0, p0

    div-double/2addr p0, v1

    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result v0

    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result p2

    int-to-double v2, v0

    rsub-int v0, v0, 0xff

    int-to-double v4, v0

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    int-to-double v2, v1

    rsub-int v1, v1, 0xff

    int-to-double v4, v1

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    int-to-double v2, p2

    rsub-int p2, p2, 0xff

    int-to-double v4, p2

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    new-instance p1, Ljava/awt/Color;

    invoke-direct {p1, v0, v1, p0}, Ljava/awt/Color;-><init>(III)V

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->getRGB()[I

    move-result-object p0

    aget p0, p0, v3

    int-to-double p0, p0

    div-double/2addr p0, v1

    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result p2

    int-to-double v2, p2

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    new-instance p1, Ljava/awt/Color;

    invoke-direct {p1, v0, v1, p0}, Ljava/awt/Color;-><init>(III)V

    return-object p1

    :cond_3
    :goto_0
    return-object p2
.end method

.method public static getEscherChild(Lorg/apache/poi/ddf/EscherContainerRecord;I)Lorg/apache/poi/ddf/EscherRecord;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">(",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            "I)TT;"
        }
    .end annotation

    int-to-short p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    return-object p0
.end method

.method public static getEscherChild(Lorg/apache/poi/ddf/EscherContainerRecord;Lorg/apache/poi/ddf/EscherRecordTypes;)Lorg/apache/poi/ddf/EscherRecord;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">(",
            "Lorg/apache/poi/ddf/EscherContainerRecord;",
            "Lorg/apache/poi/ddf/EscherRecordTypes;",
            ")TT;"
        }
    .end annotation

    .line 2
    iget-short p1, p1, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherContainerRecord;I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    return-object p0
.end method

.method public static getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;I)Lorg/apache/poi/ddf/EscherProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">(",
            "Lorg/apache/poi/ddf/AbstractEscherOptRecord;",
            "I)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.0.0"
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherProperty;",
            ">(",
            "Lorg/apache/poi/ddf/AbstractEscherOptRecord;",
            "Lorg/apache/poi/ddf/EscherPropertyTypes;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->lookup(Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSysIndexColor(Lorg/apache/poi/ddf/EscherColorRef;)Ljava/awt/Color;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->getSysIndexSource()Lorg/apache/poi/ddf/EscherColorRef$SysIndexSource;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->getSysIndex()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/sl/usermodel/PresetColor;->valueOfNativeId(I)Lorg/apache/poi/sl/usermodel/PresetColor;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/sl/usermodel/PresetColor;->color:Ljava/awt/Color;

    :cond_0
    return-object v1

    :cond_1
    sget-object p1, Lorg/apache/poi/hslf/usermodel/HSLFShape$1;->$SwitchMap$org$apache$poi$ddf$EscherColorRef$SysIndexSource:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLOPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p1

    if-nez p1, :cond_2

    instance-of v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    if-eqz v0, :cond_2

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__OPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p1

    :cond_2
    return-object p1

    :pswitch_2
    instance-of p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    if-eqz p1, :cond_5

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getLineBackgroundColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLBACKCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLOPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :pswitch_4
    instance-of p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    if-eqz p1, :cond_5

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getShadowColor()Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :pswitch_5
    instance-of p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    if-eqz p1, :cond_5

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__OPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :pswitch_6
    instance-of p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;

    if-eqz p1, :cond_3

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__COLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->LINESTYLE__OPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLOPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object v1

    :cond_4
    return-object v1

    :pswitch_7
    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLOPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, v0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;ZI)V

    return-void
.end method

.method public static setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;ZI)V
    .locals 3

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v1

    iget-short v2, p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->propNumber:S

    if-ne v1, v2, :cond_0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 12
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(Lorg/apache/poi/ddf/EscherPropertyTypes;ZZI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 13
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->sortProperties()V

    :cond_2
    return-void
.end method

.method public static setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;SI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.0.0"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->getEscherProperties()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherProperty;

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherProperty;->getPropertyNumber()S

    move-result v1

    if-ne v1, p1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 5
    new-instance v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->addEscherProperty(Lorg/apache/poi/ddf/EscherProperty;)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->sortProperties()V

    :cond_2
    return-void
.end method


# virtual methods
.method public afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_fill:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    :cond_0
    return-void
.end method

.method public createSpContainer(Z)Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 1

    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-direct {p1}, Lorg/apache/poi/ddf/EscherContainerRecord;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object p0
.end method

.method public draw(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/sl/draw/DrawFactory;->getInstance(Ljava/awt/Graphics2D;)Lorg/apache/poi/sl/draw/DrawFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lorg/apache/poi/sl/draw/DrawFactory;->drawShape(Ljava/awt/Graphics2D;Lorg/apache/poi/sl/usermodel/Shape;Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public getAlpha(Lorg/apache/poi/ddf/EscherPropertyTypes;)D
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/high16 p0, 0x10000

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/util/Units;->fixedPointToDouble(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 14

    sget-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v0

    sget-short v1, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->RECORD_ID:S

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDx1()I

    move-result p0

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDy1()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDx2()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDy2()I

    move-result v1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "EscherSpRecord.FLAG_CHILD is set but EscherChildAnchorRecord was not found"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_2
    sget-short v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getCol1()S

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getFlag()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getDx1()S

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRow1()S

    move-result p0

    move v13, v1

    move v1, p0

    move p0, v0

    move v0, v13

    :goto_1
    new-instance v12, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const/4 v5, -0x1

    if-ne p0, v5, :cond_3

    move-wide v6, v3

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v6

    :goto_2
    if-ne v0, v5, :cond_4

    move-wide v8, v3

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v8

    :goto_3
    if-ne v2, v5, :cond_5

    move-wide v10, v3

    goto :goto_4

    :cond_5
    sub-int/2addr v2, p0

    invoke-static {v2}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v10

    :goto_4
    if-ne v1, v5, :cond_6

    move-wide v0, v3

    goto :goto_5

    :cond_6
    sub-int/2addr v1, v0

    invoke-static {v1}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v0

    :goto_5
    move-object v3, v12

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v0

    invoke-direct/range {v3 .. v11}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object v12

    :cond_7
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not read record \'CLIENT_ANCHOR\' with record-id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getClientData(Z)Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;
    .locals 2

    sget-short v0, Lorg/apache/poi/ddf/EscherClientDataRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    invoke-direct {v1}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;-><init>()V

    const/16 p1, 0xf

    invoke-virtual {v1, p1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    sget-short p1, Lorg/apache/poi/ddf/EscherTextboxRecord;->RECORD_ID:S

    invoke-virtual {p0, v1, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->addChildBefore(Lorg/apache/poi/ddf/EscherRecord;I)V

    :cond_0
    return-object v1
.end method

.method public getClientDataRecord(I)Lorg/apache/poi/hslf/record/Record;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/hslf/record/Record;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientRecords()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/Record;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v1

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClientRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hslf/record/Record;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getClientData(Z)Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/HSLFEscherClientDataRecord;->getHSLFChildRecords()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getColor(Lorg/apache/poi/ddf/EscherColorRef;)Ljava/awt/Color;
    .locals 10

    .line 8
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->hasPaletteIndexFlag()Z

    move-result v0

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->hasPaletteRGBFlag()Z

    move-result v1

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->hasSystemRGBFlag()Z

    move-result v2

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->hasSchemeIndexFlag()Z

    move-result v3

    .line 12
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->hasSysIndexFlag()Z

    move-result v4

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->getRGB()[I

    move-result-object v5

    .line 14
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    .line 15
    invoke-virtual {v6}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getColorScheme()Lorg/apache/poi/hslf/record/ColorSchemeAtom;

    move-result-object p0

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherColorRef;->getSchemeIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->getColor(I)I

    move-result p0

    shr-int/lit8 p1, p0, 0x0

    and-int/lit16 p1, p1, 0xff

    .line 17
    aput p1, v5, v9

    shr-int/lit8 p1, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    .line 18
    aput p1, v5, v8

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    .line 19
    aput p0, v5, v7

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 20
    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSysIndexColor(Lorg/apache/poi/ddf/EscherColorRef;)Ljava/awt/Color;

    move-result-object v0

    .line 21
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->applySysIndexProcedure(Lorg/apache/poi/ddf/EscherColorRef;Ljava/awt/Color;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    .line 22
    :cond_4
    :goto_0
    new-instance p0, Ljava/awt/Color;

    aget p1, v5, v9

    aget v0, v5, v8

    aget v1, v5, v7

    invoke-direct {p0, p1, v0, v1}, Ljava/awt/Color;-><init>(III)V

    return-object p0
.end method

.method public getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;
    .locals 0

    .line 23
    sget-object p0, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    return-object p0
.end method

.method public getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/poi/ddf/EscherColorRef;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/apache/poi/ddf/EscherColorRef;-><init>(I)V

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherColorRef;)Ljava/awt/Color;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAlpha(Lorg/apache/poi/ddf/EscherPropertyTypes;)D

    move-result-wide v0

    .line 7
    new-instance p0, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result p2

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result p1

    const-wide v3, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    invoke-direct {p0, p2, v2, p1, v0}, Ljava/awt/Color;-><init>(IIII)V

    return-object p0
.end method

.method public getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">(I)TT;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    return-object p0
.end method

.method public getEscherChild(Lorg/apache/poi/ddf/EscherRecordTypes;)Lorg/apache/poi/ddf/EscherRecord;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">(",
            "Lorg/apache/poi/ddf/EscherRecordTypes;",
            ")TT;"
        }
    .end annotation

    .line 4
    iget-short p1, p1, Lorg/apache/poi/ddf/EscherRecordTypes;->typeID:S

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    return-object p0
.end method

.method public getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;
    .locals 1

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->OPT:Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherRecordTypes;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->USER_DEFINED:Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherRecordTypes;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    :cond_0
    return-object v0
.end method

.method public getEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)I
    .locals 0

    .line 6
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    .line 7
    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)I
    .locals 0

    .line 12
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    .line 13
    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p2

    :goto_0
    return p2
.end method

.method public getEscherProperty(S)I
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    .line 4
    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getEscherProperty(SI)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.0.0"
    .end annotation

    .line 9
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    .line 10
    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;I)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p2

    :goto_0
    return p2
.end method

.method public getFill()Lorg/apache/poi/hslf/usermodel/HSLFFill;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_fill:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_fill:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_fill:Lorg/apache/poi/hslf/usermodel/HSLFFill;

    return-object p0
.end method

.method public getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getFill()Lorg/apache/poi/hslf/usermodel/HSLFFill;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object p0

    return-object p0
.end method

.method public getFlipHorizontal()Z
    .locals 1

    sget-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFlipVertical()Z
    .locals 1

    sget-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getParent()Lorg/apache/poi/sl/usermodel/ShapeContainer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/sl/usermodel/ShapeContainer<",
            "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_parent:Lorg/apache/poi/sl/usermodel/ShapeContainer;

    return-object p0
.end method

.method public getRotation()D
    .locals 2

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->TRANSFORM__ROTATION:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/util/Units;->fixedPointToDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getShapeId()I
    .locals 1

    sget-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getShapeId()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getShapeName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->GROUPSHAPE__SHAPENAME:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherComplexProperty;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getComplexData()[B

    move-result-object p0

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE0Terminated([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/poi/sl/usermodel/ShapeType;->nativeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getShapeId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShapeType()Lorg/apache/poi/sl/usermodel/ShapeType;
    .locals 1

    sget-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getShapeType()S

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/sl/usermodel/ShapeType;->forId(IZ)Lorg/apache/poi/sl/usermodel/ShapeType;

    move-result-object p0

    return-object p0
.end method

.method public getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    return-object p0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/sl/usermodel/Sheet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    return-object p0
.end method

.method public getSpContainer()Lorg/apache/poi/ddf/EscherContainerRecord;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_escherContainer:Lorg/apache/poi/ddf/EscherContainerRecord;

    return-object p0
.end method

.method public isPlaceholder()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final moveTo(DD)V
    .locals 10

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v5

    invoke-virtual {v9}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v7

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    invoke-virtual {p0, v9}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setAnchor(Ljava/awt/geom/Rectangle2D;)V

    return-void
.end method

.method public setAnchor(Ljava/awt/geom/Rectangle2D;)V
    .locals 7

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result p1

    sget-short v3, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {v3}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    sget-short v3, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->RECORD_ID:S

    invoke-virtual {p0, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDx1(I)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDy1(I)V

    invoke-virtual {p0, v2}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDx2(I)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDy2(I)V

    goto :goto_0

    :cond_0
    sget-short v3, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->RECORD_ID:S

    invoke-virtual {p0, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setCol1(S)V

    int-to-short v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setFlag(S)V

    int-to-short v0, v2

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDx1(S)V

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setRow1(S)V

    :goto_0
    return-void
.end method

.method public setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    .line 17
    invoke-static {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setEscherProperty(SI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "5.0.0"
    .end annotation

    .line 14
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    .line 15
    invoke-static {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;SI)V

    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 0

    sget-short p1, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x40

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    return-void
.end method

.method public setFlipVertical(Z)V
    .locals 0

    sget-short p1, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getFlags()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherSpRecord;->setFlags(I)V

    return-void
.end method

.method public setRotation(D)V
    .locals 2

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/poi/util/Units;->doubleToFixedPoint(D)I

    move-result p1

    sget-object p2, Lorg/apache/poi/ddf/EscherPropertyTypes;->TRANSFORM__ROTATION:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setShapeId(I)V
    .locals 1

    sget-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeId(I)V

    :cond_0
    return-void
.end method

.method public setShapeType(Lorg/apache/poi/sl/usermodel/ShapeType;)V
    .locals 1

    sget-short v0, Lorg/apache/poi/ddf/EscherSpRecord;->RECORD_ID:S

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSpRecord;

    iget p1, p1, Lorg/apache/poi/sl/usermodel/ShapeType;->nativeId:I

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherSpRecord;->setShapeType(S)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;->setVersion(S)V

    return-void
.end method

.method public setSheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;->_sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    return-void
.end method

.method public toRGB(I)Ljava/awt/Color;
    .locals 5

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v2, p1, 0x10

    and-int/2addr v2, v1

    shr-int/lit8 v3, p1, 0x8

    and-int/2addr v3, v1

    shr-int/lit8 p1, p1, 0x0

    and-int/2addr p1, v1

    const/16 v4, 0xfe

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getColorScheme()Lorg/apache/poi/hslf/record/ColorSchemeAtom;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->getColor(I)I

    move-result p0

    shr-int/lit8 p1, p0, 0x0

    and-int/2addr p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v3, v0, 0xff

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 v2, p0, 0xff

    :goto_0
    new-instance p0, Ljava/awt/Color;

    invoke-direct {p0, p1, v3, v2}, Ljava/awt/Color;-><init>(III)V

    return-object p0
.end method
