.class public final Lorg/apache/poi/hslf/usermodel/HSLFFill;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final FILL_BACKGROUND:I = 0x9

.field private static final FILL_FILLED:Lorg/apache/poi/util/BitField;

.field private static final FILL_FILL_SHAPE:Lorg/apache/poi/util/BitField;

.field private static final FILL_FILL_USE_RECT:Lorg/apache/poi/util/BitField;

.field private static final FILL_HIT_TEST_FILL:Lorg/apache/poi/util/BitField;

.field private static final FILL_NO_FILL_HIT_TEST:Lorg/apache/poi/util/BitField;

.field static final FILL_PATTERN:I = 0x1

.field static final FILL_PICTURE:I = 0x3

.field private static final FILL_RECOLOR_FILL_AS_PICTURE:Lorg/apache/poi/util/BitField;

.field static final FILL_SHADE:I = 0x4

.field static final FILL_SHADE_CENTER:I = 0x5

.field static final FILL_SHADE_SCALE:I = 0x7

.field static final FILL_SHADE_SHAPE:I = 0x6

.field static final FILL_SHADE_TITLE:I = 0x8

.field static final FILL_SOLID:I = 0x0

.field static final FILL_TEXTURE:I = 0x2

.field private static final FILL_USE_FILLED:Lorg/apache/poi/util/BitField;

.field private static final FILL_USE_FILL_SHAPE:Lorg/apache/poi/util/BitField;

.field private static final FILL_USE_FILL_USE_RECT:Lorg/apache/poi/util/BitField;

.field private static final FILL_USE_HIT_TEST_FILL:Lorg/apache/poi/util/BitField;

.field private static final FILL_USE_NO_FILL_HIT_TEST:Lorg/apache/poi/util/BitField;

.field private static final FILL_USE_RECOLOR_FILL_AS_PICTURE:Lorg/apache/poi/util/BitField;

.field private static final FILL_USE_SHAPE_ANCHOR:Lorg/apache/poi/util/BitField;

.field private static final FILL_USE_USE_SHAPE_ANCHOR:Lorg/apache/poi/util/BitField;

.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->LOG:Lorg/apache/logging/log4j/Logger;

    const/high16 v0, 0x400000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_RECOLOR_FILL_AS_PICTURE:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x200000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_USE_SHAPE_ANCHOR:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x100000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_FILLED:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x80000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_HIT_TEST_FILL:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x40000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_FILL_SHAPE:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x20000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_FILL_USE_RECT:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x10000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_NO_FILL_HIT_TEST:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_RECOLOR_FILL_AS_PICTURE:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_SHAPE_ANCHOR:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_FILLED:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_HIT_TEST_FILL:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_FILL_SHAPE:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_FILL_USE_RECT:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_NO_FILL_HIT_TEST:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/usermodel/HSLFShape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hslf/usermodel/HSLFFill;Ljava/util/List;Ljava/util/List;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->lambda$getGradientPaint$1(Ljava/util/List;Ljava/util/List;[B)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hslf/usermodel/HSLFFill;)Lorg/apache/poi/hslf/usermodel/HSLFShape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/hslf/usermodel/HSLFFill;)Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->isRotatedWithShape()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(ILorg/apache/poi/hslf/usermodel/HSLFShape;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->lambda$getPaintStyle$0(ILorg/apache/poi/hslf/usermodel/HSLFShape;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lorg/apache/poi/hslf/usermodel/HSLFFill;)Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getPaintStyle()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object p0

    return-object p0
.end method

.method private getGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;)Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;
    .locals 10

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    :goto_0
    sget-object v3, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_FILLED:Lorg/apache/poi/util/BitField;

    invoke-virtual {v3, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_FILLED:Lorg/apache/poi/util/BitField;

    invoke-virtual {v3, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__SHADECOLORS:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherArrayProperty;

    if-nez v0, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v1

    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getBackgroundColor()Ljava/awt/Color;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getForegroundColor()Ljava/awt/Color;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/sunia/HTREnginev2/c7h;

    invoke-direct {v1, p0, v3, v4}, Lcom/sunia/HTREnginev2/c7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFFill;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getFillFocus()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_8

    const/16 v1, -0x64

    if-ne v0, v1, :cond_4

    goto :goto_5

    :cond_4
    if-eqz v0, :cond_9

    if-gez v0, :cond_5

    add-int/lit8 v0, v0, 0x64

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v3, v6, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v3, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    :goto_3
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    if-ltz v5, :cond_6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    int-to-float v9, v0

    mul-float/2addr v8, v9

    float-to-double v8, v8

    div-double/2addr v8, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    int-to-float v8, v0

    mul-float/2addr v5, v8

    float-to-double v8, v5

    div-double/2addr v8, v6

    double-to-float v5, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_8
    :goto_5
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_9
    :goto_6
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;

    invoke-direct {v0, p0, v3, v4, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFill$1;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFFill;Ljava/util/List;Ljava/util/List;Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;)V

    return-object v0
.end method

.method private getPaintStyle()Lorg/apache/poi/sl/usermodel/PaintStyle;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    :goto_0
    sget-object v2, Lorg/apache/poi/ddf/EscherPropertyTypes;->SHAPE__MASTER:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_FILLED:Lorg/apache/poi/util/BitField;

    invoke-virtual {v2, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/b7h;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/b7h;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFShape;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/FillStyle;->getPaint()Lorg/apache/poi/sl/usermodel/PaintStyle;

    move-result-object v2

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getFillType()I

    move-result v0

    if-eqz v0, :cond_3

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v1, "unsupported fill type: {}"

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getBackgroundColor()Ljava/awt/Color;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->shape:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;)Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->circular:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;)Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object v0, Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;->linear:Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getGradientPaint(Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint$GradientType;)Lorg/apache/poi/sl/usermodel/PaintStyle$GradientPaint;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-direct {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getTexturePaint()Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getForegroundColor()Ljava/awt/Color;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->createSolidPaint(Ljava/awt/Color;)Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getTexturePaint()Lorg/apache/poi/sl/usermodel/PaintStyle$TexturePaint;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getPictureData()Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFFill$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFFill$2;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFFill;Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V

    return-object v1
.end method

.method private isRotatedWithShape()Z
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    sget-object v0, Lorg/apache/poi/ddf/EscherRecordTypes;->USER_DEFINED:Lorg/apache/poi/ddf/EscherRecordTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherRecordTypes;)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_USE_SHAPE_ANCHOR:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_SHAPE_ANCHOR:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private synthetic lambda$getGradientPaint$1(Ljava/util/List;Ljava/util/List;[B)V
    .locals 3

    new-instance v0, Lorg/apache/poi/ddf/EscherColorRef;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, p3, v1, v2}, Lorg/apache/poi/ddf/EscherColorRef;-><init>([BII)V

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherColorRef;)Ljava/awt/Color;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/util/Units;->fixedPointToDouble(I)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getPaintStyle$0(ILorg/apache/poi/hslf/usermodel/HSLFShape;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getShapeId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public afterInsert(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__PATTERNTEXTURE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getEscherBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    :cond_0
    return-void
.end method

.method public getBackgroundColor()Ljava/awt/Color;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    :goto_0
    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_FILLED:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_FILLED:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLBACKCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLOPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public getEscherBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;
    .locals 2

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Fill has not yet been assigned to a sheet"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Document;->getPPDrawingGroup()Lorg/apache/poi/hslf/record/PPDrawingGroup;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/PPDrawingGroup;->getDggContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    sget-short v1, Lorg/apache/poi/ddf/EscherContainerRecord;->BSTORE_CONTAINER:S

    invoke-static {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherContainerRecord;I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    if-nez p0, :cond_1

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "EscherContainerRecord.BSTORE_CONTAINER was not found "

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherBSERecord;

    return-object p0
.end method

.method public getFillFocus()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FOCUS:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getFillStyle()Lorg/apache/poi/sl/usermodel/FillStyle;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/a7h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/a7h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFFill;)V

    return-object v0
.end method

.method public getFillType()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLTYPE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getForegroundColor()Ljava/awt/Color;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    :goto_0
    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_FILLED:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_FILLED:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, v0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLOPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getColor(Lorg/apache/poi/ddf/EscherPropertyTypes;Lorg/apache/poi/ddf/EscherPropertyTypes;)Ljava/awt/Color;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public getPictureData()Lorg/apache/poi/hslf/usermodel/HSLFPictureData;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__PATTERNTEXTURE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherSimpleProperty;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getPictureData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getDocumentRecord()Lorg/apache/poi/hslf/record/Document;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/Document;->getPPDrawingGroup()Lorg/apache/poi/hslf/record/PPDrawingGroup;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/PPDrawingGroup;->getDggContainer()Lorg/apache/poi/ddf/EscherContainerRecord;

    move-result-object p0

    sget-short v3, Lorg/apache/poi/ddf/EscherContainerRecord;->BSTORE_CONTAINER:S

    invoke-static {p0, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherChild(Lorg/apache/poi/ddf/EscherContainerRecord;I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "no reference to picture data found "

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChild(I)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ddf/EscherBSERecord;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;

    iget-object v3, v2, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->bse:Lorg/apache/poi/ddf/EscherBSERecord;

    if-ne v3, p0, :cond_2

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method

.method public setBackgroundColor(Ljava/awt/Color;)V
    .locals 4

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLBACKCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    const/4 v0, -0x1

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

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLBACKCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    :goto_0
    return-void
.end method

.method public setFillType(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLTYPE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setForegroundColor(Ljava/awt/Color;)V
    .locals 7

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLOPACITY:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)V

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__FILLCOLOR:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/AbstractEscherOptRecord;->removeEscherProperty(Lorg/apache/poi/ddf/EscherPropertyTypes;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v4

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v5

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v6

    invoke-direct {v3, v4, v5, v6, v2}, Ljava/awt/Color;-><init>(IIII)V

    invoke-virtual {v3}, Ljava/awt/Color;->getRGB()I

    move-result v3

    invoke-static {p0, v1, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    invoke-virtual {p1}, Ljava/awt/Color;->getAlpha()I

    move-result v1

    const/16 v3, 0xff

    if-ge v1, v3, :cond_0

    int-to-double v3, v1

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/poi/util/Units;->doubleToFixedPoint(D)I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    :cond_0
    sget-object v0, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__NOFILLHITTEST:Lorg/apache/poi/ddf/EscherPropertyTypes;

    invoke-static {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;)Lorg/apache/poi/ddf/EscherProperty;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherSimpleProperty;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result v1

    :goto_0
    sget-object v3, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_FILLED:Lorg/apache/poi/util/BitField;

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-virtual {v3, v1, v5}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result v1

    sget-object v3, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_NO_FILL_HIT_TEST:Lorg/apache/poi/util/BitField;

    if-eqz p1, :cond_3

    move v2, v4

    :cond_3
    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_FILLED:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result p1

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_FILL_SHAPE:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result p1

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_USE_NO_FILL_HIT_TEST:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BitField;->set(I)I

    move-result p1

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFill;->FILL_FILL_SHAPE:Lorg/apache/poi/util/BitField;

    invoke-virtual {v1, p1}, Lorg/apache/poi/util/BitField;->clear(I)I

    move-result p1

    invoke-static {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;I)V

    return-void
.end method

.method public setPictureData(Lorg/apache/poi/hslf/usermodel/HSLFPictureData;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getEscherOptRecord()Lorg/apache/poi/ddf/AbstractEscherOptRecord;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ddf/EscherPropertyTypes;->FILL__PATTERNTEXTURE:Lorg/apache/poi/ddf/EscherPropertyTypes;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getIndex()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->setEscherProperty(Lorg/apache/poi/ddf/AbstractEscherOptRecord;Lorg/apache/poi/ddf/EscherPropertyTypes;ZI)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFFill;->shape:Lorg/apache/poi/hslf/usermodel/HSLFShape;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFShape;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFPictureData;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFill;->getEscherBSERecord(I)Lorg/apache/poi/ddf/EscherBSERecord;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBSERecord;->getRef()I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherBSERecord;->setRef(I)V

    :cond_1
    return-void
.end method
