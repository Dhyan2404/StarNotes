.class public final Lsun/font/AttributeValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEFAULT:Lsun/font/AttributeValues;

.field private static final DEFINED_KEY:Ljava/lang/String; = "sun.font.attributevalues.defined_key"

.field public static final MASK_ALL:I


# instance fields
.field private background:Ljava/awt/Paint;

.field private baselineTransform:Ljava/awt/geom/AffineTransform;

.field private bidiEmbedding:B

.field private charReplacement:Ljava/awt/font/GraphicAttribute;

.field private charTransform:Ljava/awt/geom/AffineTransform;

.field private defined:I

.field private family:Ljava/lang/String;

.field private font:Ljava/awt/Font;

.field private foreground:Ljava/awt/Paint;

.field private imHighlight:Ljava/lang/Object;

.field private imUnderline:B

.field private justification:F

.field private kerning:B

.field private ligatures:B

.field private nondefault:I

.field private numericShaping:Ljava/awt/font/NumericShaper;

.field private posture:F

.field private runDirection:B

.field private size:F

.field private strikethrough:Z

.field private superscript:B

.field private swapColors:Z

.field private tracking:F

.field private transform:Ljava/awt/geom/AffineTransform;

.field private underline:B

.field private weight:F

.field private width:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/font/AttributeValues;

    invoke-direct {v0}, Lsun/font/AttributeValues;-><init>()V

    sput-object v0, Lsun/font/AttributeValues;->DEFAULT:Lsun/font/AttributeValues;

    const-class v0, Lsun/font/EAttribute;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/font/EAttribute;

    invoke-static {v0}, Lsun/font/AttributeValues;->getMask([Lsun/font/EAttribute;)I

    move-result v0

    sput v0, Lsun/font/AttributeValues;->MASK_ALL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Default"

    iput-object v0, p0, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lsun/font/AttributeValues;->weight:F

    iput v0, p0, Lsun/font/AttributeValues;->width:F

    const/high16 v1, 0x41400000    # 12.0f

    iput v1, p0, Lsun/font/AttributeValues;->size:F

    iput v0, p0, Lsun/font/AttributeValues;->justification:F

    const/4 v0, -0x1

    iput-byte v0, p0, Lsun/font/AttributeValues;->imUnderline:B

    iput-byte v0, p0, Lsun/font/AttributeValues;->underline:B

    const/4 v0, -0x2

    iput-byte v0, p0, Lsun/font/AttributeValues;->runDirection:B

    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static extractRotation(Ljava/awt/geom/Point2D$Double;Ljava/awt/geom/AffineTransform;Z)Ljava/awt/geom/AffineTransform;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0, v0}, Ljava/awt/geom/AffineTransform;->deltaTransform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    iget-wide v2, v0, Ljava/awt/geom/Point2D$Double;->x:D

    iget-wide v4, v0, Ljava/awt/geom/Point2D$Double;->y:D

    invoke-static {v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->getRotateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v19

    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/awt/geom/AffineTransform;->createInverse()Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v17

    invoke-virtual {v1, v0}, Ljava/awt/geom/AffineTransform;->preConcatenate(Ljava/awt/geom/AffineTransform;)V

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x0

    cmpl-double v0, v15, v2

    if-nez v0, :cond_0

    cmpl-double v0, v17, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    invoke-virtual/range {v0 .. v12}, Ljava/awt/geom/AffineTransform;->setTransform(DDDDDD)V

    invoke-virtual/range {v19 .. v19}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v7

    invoke-virtual/range {v19 .. v19}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v9

    invoke-virtual/range {v19 .. v19}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v11

    invoke-virtual/range {v19 .. v19}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v13

    move-object/from16 v6, v19

    invoke-virtual/range {v6 .. v18}, Ljava/awt/geom/AffineTransform;->setTransform(DDDDDD)V
    :try_end_0
    .catch Ljava/awt/geom/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v19

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static extractXRotation(Ljava/awt/geom/AffineTransform;Z)Ljava/awt/geom/AffineTransform;
    .locals 5

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-static {v0, p0, p1}, Lsun/font/AttributeValues;->extractRotation(Ljava/awt/geom/Point2D$Double;Ljava/awt/geom/AffineTransform;Z)Ljava/awt/geom/AffineTransform;

    move-result-object p0

    return-object p0
.end method

.method public static extractYRotation(Ljava/awt/geom/AffineTransform;Z)Ljava/awt/geom/AffineTransform;
    .locals 5

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    invoke-static {v0, p0, p1}, Lsun/font/AttributeValues;->extractRotation(Ljava/awt/geom/Point2D$Double;Ljava/awt/geom/AffineTransform;Z)Ljava/awt/geom/AffineTransform;

    move-result-object p0

    return-object p0
.end method

.method public static fromMap(Ljava/util/Map;)Lsun/font/AttributeValues;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)",
            "Lsun/font/AttributeValues;"
        }
    .end annotation

    .line 1
    sget v0, Lsun/font/AttributeValues;->MASK_ALL:I

    invoke-static {p0, v0}, Lsun/font/AttributeValues;->fromMap(Ljava/util/Map;I)Lsun/font/AttributeValues;

    move-result-object p0

    return-object p0
.end method

.method public static fromMap(Ljava/util/Map;I)Lsun/font/AttributeValues;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;I)",
            "Lsun/font/AttributeValues;"
        }
    .end annotation

    .line 2
    new-instance v0, Lsun/font/AttributeValues;

    invoke-direct {v0}, Lsun/font/AttributeValues;-><init>()V

    invoke-virtual {v0, p0, p1}, Lsun/font/AttributeValues;->merge(Ljava/util/Map;I)Lsun/font/AttributeValues;

    move-result-object p0

    return-object p0
.end method

.method public static fromSerializableHashtable(Ljava/util/Hashtable;)Lsun/font/AttributeValues;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lsun/font/AttributeValues;"
        }
    .end annotation

    new-instance v0, Lsun/font/AttributeValues;

    invoke-direct {v0}, Lsun/font/AttributeValues;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "sun.font.attributevalues.defined_key"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/font/AttributeValues;->defineAll(I)V

    goto :goto_0

    :cond_1
    :try_start_0
    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-static {v2}, Lsun/font/EAttribute;->forAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Lsun/font/EAttribute;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2, v1}, Lsun/font/AttributeValues;->set(Lsun/font/EAttribute;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getBaselineTransform(Ljava/util/Map;)Ljava/awt/geom/AffineTransform;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/awt/geom/AffineTransform;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    instance-of v1, p0, Lsun/font/AttributeMap;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lsun/font/AttributeMap;

    .line 3
    invoke-virtual {v1}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p0}, Lsun/font/AttributeValues;->fromMap(Ljava/util/Map;)Lsun/font/AttributeValues;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 7
    iget-object p0, p0, Lsun/font/AttributeValues;->baselineTransform:Ljava/awt/geom/AffineTransform;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getCharTransform(Ljava/util/Map;)Ljava/awt/geom/AffineTransform;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/awt/geom/AffineTransform;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    instance-of v1, p0, Lsun/font/AttributeMap;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lsun/font/AttributeMap;

    .line 3
    invoke-virtual {v1}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Ljava/awt/font/TextAttribute;->TRANSFORM:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p0}, Lsun/font/AttributeValues;->fromMap(Ljava/util/Map;)Lsun/font/AttributeValues;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 7
    iget-object p0, p0, Lsun/font/AttributeValues;->charTransform:Ljava/awt/geom/AffineTransform;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getJustification(Ljava/util/Map;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)F"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 2
    instance-of v0, p0, Lsun/font/AttributeMap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lsun/font/AttributeMap;

    .line 3
    invoke-virtual {v0}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object p0

    iget p0, p0, Lsun/font/AttributeValues;->justification:F

    return p0

    .line 5
    :cond_0
    sget-object v0, Ljava/awt/font/TextAttribute;->JUSTIFICATION:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 8
    :cond_1
    sget-object p0, Lsun/font/AttributeValues;->DEFAULT:Lsun/font/AttributeValues;

    iget p0, p0, Lsun/font/AttributeValues;->justification:F

    return p0
.end method

.method public static getMask(Lsun/font/EAttribute;)I
    .locals 0

    .line 1
    iget p0, p0, Lsun/font/EAttribute;->mask:I

    return p0
.end method

.method public static varargs getMask([Lsun/font/EAttribute;)I
    .locals 4

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 3
    iget v3, v3, Lsun/font/EAttribute;->mask:I

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static getNumericShaping(Ljava/util/Map;)Ljava/awt/font/NumericShaper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/awt/font/NumericShaper;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 2
    instance-of v0, p0, Lsun/font/AttributeMap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lsun/font/AttributeMap;

    .line 3
    invoke-virtual {v0}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object p0

    iget-object p0, p0, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    instance-of v0, p0, Ljava/awt/font/NumericShaper;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Ljava/awt/font/NumericShaper;

    return-object p0

    .line 8
    :cond_1
    sget-object p0, Lsun/font/AttributeValues;->DEFAULT:Lsun/font/AttributeValues;

    iget-object p0, p0, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    return-object p0
.end method

.method private i_equals(Lsun/font/EAttribute;Lsun/font/AttributeValues;)Z
    .locals 2

    sget-object v0, Lsun/font/AttributeValues$1;->$SwitchMap$sun$font$EAttribute:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    :pswitch_0
    iget p0, p0, Lsun/font/AttributeValues;->tracking:F

    iget p1, p2, Lsun/font/AttributeValues;->tracking:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    iget-byte p0, p0, Lsun/font/AttributeValues;->ligatures:B

    iget-byte p1, p2, Lsun/font/AttributeValues;->ligatures:B

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :pswitch_2
    iget-byte p0, p0, Lsun/font/AttributeValues;->kerning:B

    iget-byte p1, p2, Lsun/font/AttributeValues;->kerning:B

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    :pswitch_3
    iget-object p0, p0, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    iget-object p1, p2, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    invoke-static {p0, p1}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_4
    iget-boolean p0, p0, Lsun/font/AttributeValues;->swapColors:Z

    iget-boolean p1, p2, Lsun/font/AttributeValues;->swapColors:Z

    if-ne p0, p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    :pswitch_5
    iget-byte p0, p0, Lsun/font/AttributeValues;->imUnderline:B

    iget-byte p1, p2, Lsun/font/AttributeValues;->imUnderline:B

    if-ne p0, p1, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    return v0

    :pswitch_6
    iget-object p0, p0, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    iget-object p1, p2, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    invoke-static {p0, p1}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_7
    iget p0, p0, Lsun/font/AttributeValues;->justification:F

    iget p1, p2, Lsun/font/AttributeValues;->justification:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    return v0

    :pswitch_8
    iget-byte p0, p0, Lsun/font/AttributeValues;->bidiEmbedding:B

    iget-byte p1, p2, Lsun/font/AttributeValues;->bidiEmbedding:B

    if-ne p0, p1, :cond_6

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    return v0

    :pswitch_9
    iget-byte p0, p0, Lsun/font/AttributeValues;->runDirection:B

    iget-byte p1, p2, Lsun/font/AttributeValues;->runDirection:B

    if-ne p0, p1, :cond_7

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    return v0

    :pswitch_a
    iget-boolean p0, p0, Lsun/font/AttributeValues;->strikethrough:Z

    iget-boolean p1, p2, Lsun/font/AttributeValues;->strikethrough:Z

    if-ne p0, p1, :cond_8

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    return v0

    :pswitch_b
    iget-byte p0, p0, Lsun/font/AttributeValues;->underline:B

    iget-byte p1, p2, Lsun/font/AttributeValues;->underline:B

    if-ne p0, p1, :cond_9

    goto :goto_9

    :cond_9
    move v0, v1

    :goto_9
    return v0

    :pswitch_c
    iget-object p0, p0, Lsun/font/AttributeValues;->background:Ljava/awt/Paint;

    iget-object p1, p2, Lsun/font/AttributeValues;->background:Ljava/awt/Paint;

    invoke-static {p0, p1}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_d
    iget-object p0, p0, Lsun/font/AttributeValues;->foreground:Ljava/awt/Paint;

    iget-object p1, p2, Lsun/font/AttributeValues;->foreground:Ljava/awt/Paint;

    invoke-static {p0, p1}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_e
    iget-object p0, p0, Lsun/font/AttributeValues;->charReplacement:Ljava/awt/font/GraphicAttribute;

    iget-object p1, p2, Lsun/font/AttributeValues;->charReplacement:Ljava/awt/font/GraphicAttribute;

    invoke-static {p0, p1}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_f
    iget-object p0, p0, Lsun/font/AttributeValues;->font:Ljava/awt/Font;

    iget-object p1, p2, Lsun/font/AttributeValues;->font:Ljava/awt/Font;

    invoke-static {p0, p1}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_10
    iget-byte p0, p0, Lsun/font/AttributeValues;->superscript:B

    iget-byte p1, p2, Lsun/font/AttributeValues;->superscript:B

    if-ne p0, p1, :cond_a

    goto :goto_a

    :cond_a
    move v0, v1

    :goto_a
    return v0

    :pswitch_11
    iget-object p0, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    iget-object p1, p2, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    invoke-static {p0, p1}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_12
    iget p0, p0, Lsun/font/AttributeValues;->size:F

    iget p1, p2, Lsun/font/AttributeValues;->size:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_b

    goto :goto_b

    :cond_b
    move v0, v1

    :goto_b
    return v0

    :pswitch_13
    iget p0, p0, Lsun/font/AttributeValues;->posture:F

    iget p1, p2, Lsun/font/AttributeValues;->posture:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_c

    goto :goto_c

    :cond_c
    move v0, v1

    :goto_c
    return v0

    :pswitch_14
    iget p0, p0, Lsun/font/AttributeValues;->width:F

    iget p1, p2, Lsun/font/AttributeValues;->width:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_d

    goto :goto_d

    :cond_d
    move v0, v1

    :goto_d
    return v0

    :pswitch_15
    iget p0, p0, Lsun/font/AttributeValues;->weight:F

    iget p1, p2, Lsun/font/AttributeValues;->weight:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_e

    goto :goto_e

    :cond_e
    move v0, v1

    :goto_e
    return v0

    :pswitch_16
    iget-object p0, p0, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    iget-object p1, p2, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    invoke-static {p0, p1}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

.method private i_get(Lsun/font/EAttribute;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lsun/font/AttributeValues$1;->$SwitchMap$sun$font$EAttribute:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    :pswitch_0
    iget p0, p0, Lsun/font/AttributeValues;->tracking:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-byte p0, p0, Lsun/font/AttributeValues;->ligatures:B

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-byte p0, p0, Lsun/font/AttributeValues;->kerning:B

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    return-object p0

    :pswitch_4
    iget-boolean p0, p0, Lsun/font/AttributeValues;->swapColors:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-byte p0, p0, Lsun/font/AttributeValues;->imUnderline:B

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    return-object p0

    :pswitch_7
    iget p0, p0, Lsun/font/AttributeValues;->justification:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-byte p0, p0, Lsun/font/AttributeValues;->bidiEmbedding:B

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget-byte p0, p0, Lsun/font/AttributeValues;->runDirection:B

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_RTL:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    sget-object p0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    return-object p0

    :pswitch_a
    iget-boolean p0, p0, Lsun/font/AttributeValues;->strikethrough:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_b
    iget-byte p0, p0, Lsun/font/AttributeValues;->underline:B

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    iget-object p0, p0, Lsun/font/AttributeValues;->background:Ljava/awt/Paint;

    return-object p0

    :pswitch_d
    iget-object p0, p0, Lsun/font/AttributeValues;->foreground:Ljava/awt/Paint;

    return-object p0

    :pswitch_e
    iget-object p0, p0, Lsun/font/AttributeValues;->charReplacement:Ljava/awt/font/GraphicAttribute;

    return-object p0

    :pswitch_f
    iget-object p0, p0, Lsun/font/AttributeValues;->font:Ljava/awt/Font;

    return-object p0

    :pswitch_10
    iget-byte p0, p0, Lsun/font/AttributeValues;->superscript:B

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_11
    iget-object p1, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    if-nez p1, :cond_2

    sget-object p0, Ljava/awt/font/TransformAttribute;->IDENTITY:Ljava/awt/font/TransformAttribute;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/awt/font/TransformAttribute;

    iget-object p0, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {p1, p0}, Ljava/awt/font/TransformAttribute;-><init>(Ljava/awt/geom/AffineTransform;)V

    move-object p0, p1

    :goto_0
    return-object p0

    :pswitch_12
    iget p0, p0, Lsun/font/AttributeValues;->size:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_13
    iget p0, p0, Lsun/font/AttributeValues;->posture:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_14
    iget p0, p0, Lsun/font/AttributeValues;->width:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_15
    iget p0, p0, Lsun/font/AttributeValues;->weight:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_16
    iget-object p0, p0, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

.method private i_set(Lsun/font/EAttribute;Ljava/lang/Object;)V
    .locals 1

    .line 26
    sget-object v0, Lsun/font/AttributeValues$1;->$SwitchMap$sun$font$EAttribute:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    .line 28
    :pswitch_0
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lsun/font/AttributeValues;->tracking:F

    goto/16 :goto_1

    .line 29
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->ligatures:B

    goto/16 :goto_1

    .line 30
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->kerning:B

    goto/16 :goto_1

    .line 31
    :pswitch_3
    check-cast p2, Ljava/awt/font/NumericShaper;

    iput-object p2, p0, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    goto/16 :goto_1

    .line 32
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lsun/font/AttributeValues;->swapColors:Z

    goto/16 :goto_1

    .line 33
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->imUnderline:B

    goto/16 :goto_1

    .line 34
    :pswitch_6
    instance-of p1, p2, Ljava/text/Annotation;

    if-eqz p1, :cond_0

    .line 35
    check-cast p2, Ljava/text/Annotation;

    .line 36
    invoke-virtual {p2}, Ljava/text/Annotation;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/im/InputMethodHighlight;

    iput-object p1, p0, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    goto/16 :goto_1

    .line 37
    :cond_0
    check-cast p2, Ljava/awt/im/InputMethodHighlight;

    iput-object p2, p0, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    goto/16 :goto_1

    .line 38
    :pswitch_7
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lsun/font/AttributeValues;->justification:F

    goto/16 :goto_1

    .line 39
    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->bidiEmbedding:B

    goto/16 :goto_1

    .line 40
    :pswitch_9
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 41
    sget-object p1, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->runDirection:B

    goto/16 :goto_1

    .line 42
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->runDirection:B

    goto/16 :goto_1

    .line 43
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lsun/font/AttributeValues;->strikethrough:Z

    goto/16 :goto_1

    .line 44
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->underline:B

    goto/16 :goto_1

    .line 45
    :pswitch_c
    check-cast p2, Ljava/awt/Paint;

    iput-object p2, p0, Lsun/font/AttributeValues;->background:Ljava/awt/Paint;

    goto/16 :goto_1

    .line 46
    :pswitch_d
    check-cast p2, Ljava/awt/Paint;

    iput-object p2, p0, Lsun/font/AttributeValues;->foreground:Ljava/awt/Paint;

    goto :goto_1

    .line 47
    :pswitch_e
    check-cast p2, Ljava/awt/font/GraphicAttribute;

    iput-object p2, p0, Lsun/font/AttributeValues;->charReplacement:Ljava/awt/font/GraphicAttribute;

    goto :goto_1

    .line 48
    :pswitch_f
    check-cast p2, Ljava/awt/Font;

    iput-object p2, p0, Lsun/font/AttributeValues;->font:Ljava/awt/Font;

    goto :goto_1

    .line 49
    :pswitch_10
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->superscript:B

    goto :goto_1

    .line 50
    :pswitch_11
    instance-of p1, p2, Ljava/awt/font/TransformAttribute;

    if-eqz p1, :cond_3

    .line 51
    check-cast p2, Ljava/awt/font/TransformAttribute;

    .line 52
    invoke-virtual {p2}, Ljava/awt/font/TransformAttribute;->isIdentity()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p2}, Ljava/awt/font/TransformAttribute;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p1

    iput-object p1, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    goto :goto_0

    .line 55
    :cond_3
    new-instance p1, Ljava/awt/geom/AffineTransform;

    check-cast p2, Ljava/awt/geom/AffineTransform;

    invoke-direct {p1, p2}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object p1, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    .line 56
    :goto_0
    invoke-virtual {p0}, Lsun/font/AttributeValues;->updateDerivedTransforms()V

    goto :goto_1

    .line 57
    :pswitch_12
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lsun/font/AttributeValues;->size:F

    goto :goto_1

    .line 58
    :pswitch_13
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lsun/font/AttributeValues;->posture:F

    goto :goto_1

    .line 59
    :pswitch_14
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lsun/font/AttributeValues;->width:F

    goto :goto_1

    .line 60
    :pswitch_15
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lsun/font/AttributeValues;->weight:F

    goto :goto_1

    .line 61
    :pswitch_16
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

.method private i_set(Lsun/font/EAttribute;Lsun/font/AttributeValues;)V
    .locals 1

    .line 1
    sget-object v0, Lsun/font/AttributeValues$1;->$SwitchMap$sun$font$EAttribute:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    .line 3
    :pswitch_0
    iget p1, p2, Lsun/font/AttributeValues;->tracking:F

    iput p1, p0, Lsun/font/AttributeValues;->tracking:F

    goto/16 :goto_0

    .line 4
    :pswitch_1
    iget-byte p1, p2, Lsun/font/AttributeValues;->ligatures:B

    iput-byte p1, p0, Lsun/font/AttributeValues;->ligatures:B

    goto/16 :goto_0

    .line 5
    :pswitch_2
    iget-byte p1, p2, Lsun/font/AttributeValues;->kerning:B

    iput-byte p1, p0, Lsun/font/AttributeValues;->kerning:B

    goto/16 :goto_0

    .line 6
    :pswitch_3
    iget-object p1, p2, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    iput-object p1, p0, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    goto/16 :goto_0

    .line 7
    :pswitch_4
    iget-boolean p1, p2, Lsun/font/AttributeValues;->swapColors:Z

    iput-boolean p1, p0, Lsun/font/AttributeValues;->swapColors:Z

    goto/16 :goto_0

    .line 8
    :pswitch_5
    iget-byte p1, p2, Lsun/font/AttributeValues;->imUnderline:B

    iput-byte p1, p0, Lsun/font/AttributeValues;->imUnderline:B

    goto :goto_0

    .line 9
    :pswitch_6
    iget-object p1, p2, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    iput-object p1, p0, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    goto :goto_0

    .line 10
    :pswitch_7
    iget p1, p2, Lsun/font/AttributeValues;->justification:F

    iput p1, p0, Lsun/font/AttributeValues;->justification:F

    goto :goto_0

    .line 11
    :pswitch_8
    iget-byte p1, p2, Lsun/font/AttributeValues;->bidiEmbedding:B

    iput-byte p1, p0, Lsun/font/AttributeValues;->bidiEmbedding:B

    goto :goto_0

    .line 12
    :pswitch_9
    iget-byte p1, p2, Lsun/font/AttributeValues;->runDirection:B

    iput-byte p1, p0, Lsun/font/AttributeValues;->runDirection:B

    goto :goto_0

    .line 13
    :pswitch_a
    iget-boolean p1, p2, Lsun/font/AttributeValues;->strikethrough:Z

    iput-boolean p1, p0, Lsun/font/AttributeValues;->strikethrough:Z

    goto :goto_0

    .line 14
    :pswitch_b
    iget-byte p1, p2, Lsun/font/AttributeValues;->underline:B

    iput-byte p1, p0, Lsun/font/AttributeValues;->underline:B

    goto :goto_0

    .line 15
    :pswitch_c
    iget-object p1, p2, Lsun/font/AttributeValues;->background:Ljava/awt/Paint;

    iput-object p1, p0, Lsun/font/AttributeValues;->background:Ljava/awt/Paint;

    goto :goto_0

    .line 16
    :pswitch_d
    iget-object p1, p2, Lsun/font/AttributeValues;->foreground:Ljava/awt/Paint;

    iput-object p1, p0, Lsun/font/AttributeValues;->foreground:Ljava/awt/Paint;

    goto :goto_0

    .line 17
    :pswitch_e
    iget-object p1, p2, Lsun/font/AttributeValues;->charReplacement:Ljava/awt/font/GraphicAttribute;

    iput-object p1, p0, Lsun/font/AttributeValues;->charReplacement:Ljava/awt/font/GraphicAttribute;

    goto :goto_0

    .line 18
    :pswitch_f
    iget-object p1, p2, Lsun/font/AttributeValues;->font:Ljava/awt/Font;

    iput-object p1, p0, Lsun/font/AttributeValues;->font:Ljava/awt/Font;

    goto :goto_0

    .line 19
    :pswitch_10
    iget-byte p1, p2, Lsun/font/AttributeValues;->superscript:B

    iput-byte p1, p0, Lsun/font/AttributeValues;->superscript:B

    goto :goto_0

    .line 20
    :pswitch_11
    iget-object p1, p2, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    iput-object p1, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p0}, Lsun/font/AttributeValues;->updateDerivedTransforms()V

    goto :goto_0

    .line 21
    :pswitch_12
    iget p1, p2, Lsun/font/AttributeValues;->size:F

    iput p1, p0, Lsun/font/AttributeValues;->size:F

    goto :goto_0

    .line 22
    :pswitch_13
    iget p1, p2, Lsun/font/AttributeValues;->posture:F

    iput p1, p0, Lsun/font/AttributeValues;->posture:F

    goto :goto_0

    .line 23
    :pswitch_14
    iget p1, p2, Lsun/font/AttributeValues;->width:F

    iput p1, p0, Lsun/font/AttributeValues;->width:F

    goto :goto_0

    .line 24
    :pswitch_15
    iget p1, p2, Lsun/font/AttributeValues;->weight:F

    iput p1, p0, Lsun/font/AttributeValues;->weight:F

    goto :goto_0

    .line 25
    :pswitch_16
    iget-object p1, p2, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    iput-object p1, p0, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

.method private i_validate(Lsun/font/EAttribute;)Z
    .locals 9

    sget-object v0, Lsun/font/AttributeValues$1;->$SwitchMap$sun$font$EAttribute:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget p0, p0, Lsun/font/AttributeValues;->tracking:F

    cmpl-float p1, p0, v4

    if-ltz p1, :cond_0

    cmpg-float p0, p0, v5

    if-gtz p0, :cond_0

    move v7, v8

    :cond_0
    return v7

    :pswitch_1
    iget-byte p0, p0, Lsun/font/AttributeValues;->ligatures:B

    if-ltz p0, :cond_1

    if-gt p0, v8, :cond_1

    move v7, v8

    :cond_1
    return v7

    :pswitch_2
    iget-byte p0, p0, Lsun/font/AttributeValues;->kerning:B

    if-ltz p0, :cond_2

    if-gt p0, v8, :cond_2

    move v7, v8

    :cond_2
    return v7

    :pswitch_3
    return v8

    :pswitch_4
    iget-byte p0, p0, Lsun/font/AttributeValues;->imUnderline:B

    if-lt p0, v3, :cond_3

    if-ge p0, v1, :cond_3

    move v7, v8

    :cond_3
    return v7

    :pswitch_5
    return v8

    :pswitch_6
    iget p1, p0, Lsun/font/AttributeValues;->justification:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lsun/font/AttributeValues;->justification:F

    return v8

    :pswitch_7
    iget-byte p0, p0, Lsun/font/AttributeValues;->bidiEmbedding:B

    const/16 p1, -0x3d

    if-lt p0, p1, :cond_4

    const/16 p1, 0x3e

    if-ge p0, p1, :cond_4

    move v7, v8

    :cond_4
    return v7

    :pswitch_8
    iget-byte p0, p0, Lsun/font/AttributeValues;->runDirection:B

    const/4 p1, -0x2

    if-lt p0, p1, :cond_5

    if-gt p0, v8, :cond_5

    move v7, v8

    :cond_5
    return v7

    :pswitch_9
    return v8

    :pswitch_a
    iget-byte p0, p0, Lsun/font/AttributeValues;->underline:B

    if-lt p0, v3, :cond_6

    if-ge p0, v1, :cond_6

    move v7, v8

    :cond_6
    return v7

    :pswitch_b
    return v8

    :pswitch_c
    iget-byte p0, p0, Lsun/font/AttributeValues;->superscript:B

    const/4 p1, -0x7

    if-lt p0, p1, :cond_7

    const/4 p1, 0x7

    if-gt p0, p1, :cond_7

    move v7, v8

    :cond_7
    return v7

    :pswitch_d
    iget-object p1, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lsun/font/AttributeValues;->DEFAULT:Lsun/font/AttributeValues;

    iget-object p1, p1, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    iput-object p1, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    :cond_8
    return v8

    :pswitch_e
    iget p0, p0, Lsun/font/AttributeValues;->size:F

    cmpl-float p0, p0, v6

    if-ltz p0, :cond_9

    move v7, v8

    :cond_9
    return v7

    :pswitch_f
    iget p0, p0, Lsun/font/AttributeValues;->posture:F

    cmpl-float p1, p0, v4

    if-ltz p1, :cond_a

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_a

    move v7, v8

    :cond_a
    return v7

    :pswitch_10
    iget p0, p0, Lsun/font/AttributeValues;->width:F

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_b

    cmpg-float p0, p0, v5

    if-gez p0, :cond_b

    move v7, v8

    :cond_b
    return v7

    :pswitch_11
    iget p0, p0, Lsun/font/AttributeValues;->weight:F

    cmpl-float p1, p0, v6

    if-lez p1, :cond_c

    cmpg-float p0, p0, v5

    if-gez p0, :cond_c

    move v7, v8

    :cond_c
    return v7

    :pswitch_12
    iget-object p1, p0, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_e

    :cond_d
    sget-object p1, Lsun/font/AttributeValues;->DEFAULT:Lsun/font/AttributeValues;

    iget-object p1, p1, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    iput-object p1, p0, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    :cond_e
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static is16Hashtable(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "sun.font.attributevalues.defined_key"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private update(Lsun/font/EAttribute;)V
    .locals 2

    iget v0, p0, Lsun/font/AttributeValues;->defined:I

    iget v1, p1, Lsun/font/EAttribute;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lsun/font/AttributeValues;->defined:I

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->i_validate(Lsun/font/EAttribute;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsun/font/AttributeValues;->DEFAULT:Lsun/font/AttributeValues;

    invoke-direct {p0, p1, v0}, Lsun/font/AttributeValues;->i_equals(Lsun/font/EAttribute;Lsun/font/AttributeValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lsun/font/AttributeValues;->nondefault:I

    iget p1, p1, Lsun/font/EAttribute;->mask:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lsun/font/AttributeValues;->nondefault:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lsun/font/AttributeValues;->nondefault:I

    iget p1, p1, Lsun/font/EAttribute;->mask:I

    or-int/2addr p1, v0

    iput p1, p0, Lsun/font/AttributeValues;->nondefault:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lsun/font/AttributeValues;->setDefault(Lsun/font/EAttribute;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public allDefined(I)Z
    .locals 0

    iget p0, p0, Lsun/font/AttributeValues;->defined:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public anyDefined(I)Z
    .locals 0

    iget p0, p0, Lsun/font/AttributeValues;->defined:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public anyNonDefault(I)Z
    .locals 0

    iget p0, p0, Lsun/font/AttributeValues;->nondefault:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public applyIMHighlight()Lsun/font/AttributeValues;
    .locals 2

    iget-object v0, p0, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/awt/im/InputMethodHighlight;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/awt/im/InputMethodHighlight;

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/text/Annotation;

    invoke-virtual {v0}, Ljava/text/Annotation;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/im/InputMethodHighlight;

    :goto_0
    invoke-virtual {v0}, Ljava/awt/im/InputMethodHighlight;->getStyle()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsun/font/AttributeValues;->clone()Lsun/font/AttributeValues;

    move-result-object p0

    invoke-virtual {p0, v0}, Lsun/font/AttributeValues;->merge(Ljava/util/Map;)Lsun/font/AttributeValues;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lsun/font/AttributeValues;->clone()Lsun/font/AttributeValues;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lsun/font/AttributeValues;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/font/AttributeValues;

    .line 3
    iget-object v1, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/awt/geom/AffineTransform;

    iget-object p0, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v1, p0}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v1, v0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    .line 5
    invoke-virtual {v0}, Lsun/font/AttributeValues;->updateDerivedTransforms()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public defineAll(I)V
    .locals 1

    iget v0, p0, Lsun/font/AttributeValues;->defined:I

    or-int/2addr p1, v0

    iput p1, p0, Lsun/font/AttributeValues;->defined:I

    sget-object p0, Lsun/font/EAttribute;->EBASELINE_TRANSFORM:Lsun/font/EAttribute;

    iget p0, p0, Lsun/font/EAttribute;->mask:I

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "can\'t define derived attribute"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    :try_start_0
    check-cast p1, Lsun/font/AttributeValues;

    invoke-virtual {p0, p1}, Lsun/font/AttributeValues;->equals(Lsun/font/AttributeValues;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Lsun/font/AttributeValues;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 2
    :cond_1
    iget v2, p0, Lsun/font/AttributeValues;->defined:I

    iget v3, p1, Lsun/font/AttributeValues;->defined:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lsun/font/AttributeValues;->nondefault:I

    iget v3, p1, Lsun/font/AttributeValues;->nondefault:I

    if-ne v2, v3, :cond_2

    iget-byte v2, p0, Lsun/font/AttributeValues;->underline:B

    iget-byte v3, p1, Lsun/font/AttributeValues;->underline:B

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lsun/font/AttributeValues;->strikethrough:Z

    iget-boolean v3, p1, Lsun/font/AttributeValues;->strikethrough:Z

    if-ne v2, v3, :cond_2

    iget-byte v2, p0, Lsun/font/AttributeValues;->superscript:B

    iget-byte v3, p1, Lsun/font/AttributeValues;->superscript:B

    if-ne v2, v3, :cond_2

    iget v2, p0, Lsun/font/AttributeValues;->width:F

    iget v3, p1, Lsun/font/AttributeValues;->width:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-byte v2, p0, Lsun/font/AttributeValues;->kerning:B

    iget-byte v3, p1, Lsun/font/AttributeValues;->kerning:B

    if-ne v2, v3, :cond_2

    iget v2, p0, Lsun/font/AttributeValues;->tracking:F

    iget v3, p1, Lsun/font/AttributeValues;->tracking:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-byte v2, p0, Lsun/font/AttributeValues;->ligatures:B

    iget-byte v3, p1, Lsun/font/AttributeValues;->ligatures:B

    if-ne v2, v3, :cond_2

    iget-byte v2, p0, Lsun/font/AttributeValues;->runDirection:B

    iget-byte v3, p1, Lsun/font/AttributeValues;->runDirection:B

    if-ne v2, v3, :cond_2

    iget-byte v2, p0, Lsun/font/AttributeValues;->bidiEmbedding:B

    iget-byte v3, p1, Lsun/font/AttributeValues;->bidiEmbedding:B

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lsun/font/AttributeValues;->swapColors:Z

    iget-boolean v3, p1, Lsun/font/AttributeValues;->swapColors:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    iget-object v3, p1, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    .line 3
    invoke-static {v2, v3}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/font/AttributeValues;->foreground:Ljava/awt/Paint;

    iget-object v3, p1, Lsun/font/AttributeValues;->foreground:Ljava/awt/Paint;

    .line 4
    invoke-static {v2, v3}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/font/AttributeValues;->background:Ljava/awt/Paint;

    iget-object v3, p1, Lsun/font/AttributeValues;->background:Ljava/awt/Paint;

    .line 5
    invoke-static {v2, v3}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    iget-object v3, p1, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    .line 6
    invoke-static {v2, v3}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lsun/font/AttributeValues;->justification:F

    .line 7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p1, Lsun/font/AttributeValues;->justification:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/font/AttributeValues;->charReplacement:Ljava/awt/font/GraphicAttribute;

    iget-object v3, p1, Lsun/font/AttributeValues;->charReplacement:Ljava/awt/font/GraphicAttribute;

    .line 8
    invoke-static {v2, v3}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lsun/font/AttributeValues;->size:F

    iget v3, p1, Lsun/font/AttributeValues;->size:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lsun/font/AttributeValues;->weight:F

    iget v3, p1, Lsun/font/AttributeValues;->weight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lsun/font/AttributeValues;->posture:F

    iget v3, p1, Lsun/font/AttributeValues;->posture:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    iget-object v3, p1, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/font/AttributeValues;->font:Ljava/awt/Font;

    iget-object v3, p1, Lsun/font/AttributeValues;->font:Ljava/awt/Font;

    .line 10
    invoke-static {v2, v3}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-byte v2, p0, Lsun/font/AttributeValues;->imUnderline:B

    iget-byte v3, p1, Lsun/font/AttributeValues;->imUnderline:B

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    iget-object p1, p1, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    .line 11
    invoke-static {p0, p1}, Lsun/font/AttributeValues;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public get(Lsun/font/EAttribute;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lsun/font/EAttribute;->att:Ljava/awt/font/TextAttribute;

    if-eqz v0, :cond_1

    iget v0, p0, Lsun/font/AttributeValues;->nondefault:I

    iget v1, p1, Lsun/font/EAttribute;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->i_get(Lsun/font/EAttribute;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t get derived attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBackground()Ljava/awt/Paint;
    .locals 0

    iget-object p0, p0, Lsun/font/AttributeValues;->background:Ljava/awt/Paint;

    return-object p0
.end method

.method public getBaselineTransform()Ljava/awt/geom/AffineTransform;
    .locals 0

    .line 1
    iget-object p0, p0, Lsun/font/AttributeValues;->baselineTransform:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public getBidiEmbedding()I
    .locals 0

    iget-byte p0, p0, Lsun/font/AttributeValues;->bidiEmbedding:B

    return p0
.end method

.method public getCharReplacement()Ljava/awt/font/GraphicAttribute;
    .locals 0

    iget-object p0, p0, Lsun/font/AttributeValues;->charReplacement:Ljava/awt/font/GraphicAttribute;

    return-object p0
.end method

.method public getCharTransform()Ljava/awt/geom/AffineTransform;
    .locals 0

    .line 1
    iget-object p0, p0, Lsun/font/AttributeValues;->charTransform:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    return-object p0
.end method

.method public getFont()Ljava/awt/Font;
    .locals 0

    iget-object p0, p0, Lsun/font/AttributeValues;->font:Ljava/awt/Font;

    return-object p0
.end method

.method public getForeground()Ljava/awt/Paint;
    .locals 0

    iget-object p0, p0, Lsun/font/AttributeValues;->foreground:Ljava/awt/Paint;

    return-object p0
.end method

.method public getInputMethodHighlight()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    return-object p0
.end method

.method public getInputMethodUnderline()I
    .locals 0

    iget-byte p0, p0, Lsun/font/AttributeValues;->imUnderline:B

    return p0
.end method

.method public getJustification()F
    .locals 0

    .line 1
    iget p0, p0, Lsun/font/AttributeValues;->justification:F

    return p0
.end method

.method public getKerning()I
    .locals 0

    iget-byte p0, p0, Lsun/font/AttributeValues;->kerning:B

    return p0
.end method

.method public getLigatures()I
    .locals 0

    iget-byte p0, p0, Lsun/font/AttributeValues;->ligatures:B

    return p0
.end method

.method public getNumericShaping()Ljava/awt/font/NumericShaper;
    .locals 0

    .line 1
    iget-object p0, p0, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    return-object p0
.end method

.method public getPosture()F
    .locals 0

    iget p0, p0, Lsun/font/AttributeValues;->posture:F

    return p0
.end method

.method public getRunDirection()I
    .locals 0

    iget-byte p0, p0, Lsun/font/AttributeValues;->runDirection:B

    return p0
.end method

.method public getSize()F
    .locals 0

    iget p0, p0, Lsun/font/AttributeValues;->size:F

    return p0
.end method

.method public getStrikethrough()Z
    .locals 0

    iget-boolean p0, p0, Lsun/font/AttributeValues;->strikethrough:Z

    return p0
.end method

.method public getSuperscript()I
    .locals 0

    iget-byte p0, p0, Lsun/font/AttributeValues;->superscript:B

    return p0
.end method

.method public getSwapColors()Z
    .locals 0

    iget-boolean p0, p0, Lsun/font/AttributeValues;->swapColors:Z

    return p0
.end method

.method public getTracking()F
    .locals 0

    iget p0, p0, Lsun/font/AttributeValues;->tracking:F

    return p0
.end method

.method public getTransform()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public getUnderline()I
    .locals 0

    iget-byte p0, p0, Lsun/font/AttributeValues;->underline:B

    return p0
.end method

.method public getWeight()F
    .locals 0

    iget p0, p0, Lsun/font/AttributeValues;->weight:F

    return p0
.end method

.method public getWidth()F
    .locals 0

    iget p0, p0, Lsun/font/AttributeValues;->width:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lsun/font/AttributeValues;->defined:I

    shl-int/lit8 v0, v0, 0x8

    iget p0, p0, Lsun/font/AttributeValues;->nondefault:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public isDefined(Lsun/font/EAttribute;)Z
    .locals 0

    iget p0, p0, Lsun/font/AttributeValues;->defined:I

    iget p1, p1, Lsun/font/EAttribute;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNonDefault(Lsun/font/EAttribute;)Z
    .locals 0

    iget p0, p0, Lsun/font/AttributeValues;->nondefault:I

    iget p1, p1, Lsun/font/EAttribute;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public merge(Ljava/util/Map;)Lsun/font/AttributeValues;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)",
            "Lsun/font/AttributeValues;"
        }
    .end annotation

    .line 1
    sget v0, Lsun/font/AttributeValues;->MASK_ALL:I

    invoke-virtual {p0, p1, v0}, Lsun/font/AttributeValues;->merge(Ljava/util/Map;I)Lsun/font/AttributeValues;

    move-result-object p0

    return-object p0
.end method

.method public merge(Ljava/util/Map;I)Lsun/font/AttributeValues;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;I)",
            "Lsun/font/AttributeValues;"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lsun/font/AttributeMap;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lsun/font/AttributeMap;

    .line 3
    invoke-virtual {v0}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lsun/font/AttributeMap;->getValues()Lsun/font/AttributeValues;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lsun/font/AttributeValues;->merge(Lsun/font/AttributeValues;I)Lsun/font/AttributeValues;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-static {v1}, Lsun/font/EAttribute;->forAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Lsun/font/EAttribute;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    iget v2, v1, Lsun/font/EAttribute;->mask:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lsun/font/AttributeValues;->set(Lsun/font/EAttribute;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public merge(Lsun/font/AttributeValues;)Lsun/font/AttributeValues;
    .locals 1

    .line 10
    sget v0, Lsun/font/AttributeValues;->MASK_ALL:I

    invoke-virtual {p0, p1, v0}, Lsun/font/AttributeValues;->merge(Lsun/font/AttributeValues;I)Lsun/font/AttributeValues;

    move-result-object p0

    return-object p0
.end method

.method public merge(Lsun/font/AttributeValues;I)Lsun/font/AttributeValues;
    .locals 6

    .line 11
    iget v0, p1, Lsun/font/AttributeValues;->defined:I

    and-int/2addr p2, v0

    .line 12
    sget-object v0, Lsun/font/EAttribute;->atts:[Lsun/font/EAttribute;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez p2, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    iget v4, v3, Lsun/font/EAttribute;->mask:I

    and-int v5, p2, v4

    if-eqz v5, :cond_1

    not-int v4, v4

    and-int/2addr p2, v4

    .line 14
    invoke-direct {p0, v3, p1}, Lsun/font/AttributeValues;->i_set(Lsun/font/EAttribute;Lsun/font/AttributeValues;)V

    .line 15
    invoke-direct {p0, v3}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public set(Lsun/font/EAttribute;Ljava/lang/Object;)V
    .locals 1

    .line 8
    iget-object v0, p1, Lsun/font/EAttribute;->att:Ljava/awt/font/TextAttribute;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 9
    :try_start_0
    invoke-direct {p0, p1, p2}, Lsun/font/AttributeValues;->i_set(Lsun/font/EAttribute;Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 11
    :catch_0
    :cond_0
    invoke-virtual {p0, p1}, Lsun/font/AttributeValues;->setDefault(Lsun/font/EAttribute;)V

    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/InternalError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t set derived attribute: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(Lsun/font/EAttribute;Lsun/font/AttributeValues;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lsun/font/EAttribute;->att:Ljava/awt/font/TextAttribute;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 2
    sget-object v0, Lsun/font/AttributeValues;->DEFAULT:Lsun/font/AttributeValues;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p2, Lsun/font/AttributeValues;->defined:I

    iget v1, p1, Lsun/font/EAttribute;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p1, p2}, Lsun/font/AttributeValues;->i_set(Lsun/font/EAttribute;Lsun/font/AttributeValues;)V

    .line 5
    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lsun/font/AttributeValues;->setDefault(Lsun/font/EAttribute;)V

    :cond_2
    :goto_1
    return-void

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/InternalError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t set derived attribute: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBackground(Ljava/awt/Paint;)V
    .locals 0

    iput-object p1, p0, Lsun/font/AttributeValues;->background:Ljava/awt/Paint;

    sget-object p1, Lsun/font/EAttribute;->EBACKGROUND:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setBidiEmbedding(I)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->bidiEmbedding:B

    sget-object p1, Lsun/font/EAttribute;->EBIDI_EMBEDDING:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setCharReplacement(Ljava/awt/font/GraphicAttribute;)V
    .locals 0

    iput-object p1, p0, Lsun/font/AttributeValues;->charReplacement:Ljava/awt/font/GraphicAttribute;

    sget-object p1, Lsun/font/EAttribute;->ECHAR_REPLACEMENT:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setDefault(Lsun/font/EAttribute;)V
    .locals 2

    iget-object v0, p1, Lsun/font/EAttribute;->att:Ljava/awt/font/TextAttribute;

    if-eqz v0, :cond_0

    sget-object v0, Lsun/font/AttributeValues;->DEFAULT:Lsun/font/AttributeValues;

    invoke-direct {p0, p1, v0}, Lsun/font/AttributeValues;->i_set(Lsun/font/EAttribute;Lsun/font/AttributeValues;)V

    iget v0, p0, Lsun/font/AttributeValues;->defined:I

    iget p1, p1, Lsun/font/EAttribute;->mask:I

    or-int/2addr v0, p1

    iput v0, p0, Lsun/font/AttributeValues;->defined:I

    iget v0, p0, Lsun/font/AttributeValues;->nondefault:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lsun/font/AttributeValues;->nondefault:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t set default derived attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    sget-object p1, Lsun/font/EAttribute;->EFAMILY:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setFont(Ljava/awt/Font;)V
    .locals 0

    iput-object p1, p0, Lsun/font/AttributeValues;->font:Ljava/awt/Font;

    sget-object p1, Lsun/font/EAttribute;->EFONT:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setForeground(Ljava/awt/Paint;)V
    .locals 0

    iput-object p1, p0, Lsun/font/AttributeValues;->foreground:Ljava/awt/Paint;

    sget-object p1, Lsun/font/EAttribute;->EFOREGROUND:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setInputMethodHighlight(Ljava/awt/im/InputMethodHighlight;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    sget-object p1, Lsun/font/EAttribute;->EINPUT_METHOD_HIGHLIGHT:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setInputMethodHighlight(Ljava/text/Annotation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    sget-object p1, Lsun/font/EAttribute;->EINPUT_METHOD_HIGHLIGHT:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setInputMethodUnderline(I)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->imUnderline:B

    sget-object p1, Lsun/font/EAttribute;->EINPUT_METHOD_UNDERLINE:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setJustification(F)V
    .locals 0

    iput p1, p0, Lsun/font/AttributeValues;->justification:F

    sget-object p1, Lsun/font/EAttribute;->EJUSTIFICATION:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setKerning(I)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->kerning:B

    sget-object p1, Lsun/font/EAttribute;->EKERNING:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setLigatures(I)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->ligatures:B

    sget-object p1, Lsun/font/EAttribute;->ELIGATURES:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setNumericShaping(Ljava/awt/font/NumericShaper;)V
    .locals 0

    iput-object p1, p0, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    sget-object p1, Lsun/font/EAttribute;->ENUMERIC_SHAPING:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setPosture(F)V
    .locals 0

    iput p1, p0, Lsun/font/AttributeValues;->posture:F

    sget-object p1, Lsun/font/EAttribute;->EPOSTURE:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setRunDirection(I)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->runDirection:B

    sget-object p1, Lsun/font/EAttribute;->ERUN_DIRECTION:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setSize(F)V
    .locals 0

    iput p1, p0, Lsun/font/AttributeValues;->size:F

    sget-object p1, Lsun/font/EAttribute;->ESIZE:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setStrikethrough(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/font/AttributeValues;->strikethrough:Z

    sget-object p1, Lsun/font/EAttribute;->ESTRIKETHROUGH:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setSuperscript(I)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->superscript:B

    sget-object p1, Lsun/font/EAttribute;->ESUPERSCRIPT:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setSwapColors(Z)V
    .locals 0

    iput-boolean p1, p0, Lsun/font/AttributeValues;->swapColors:Z

    sget-object p1, Lsun/font/EAttribute;->ESWAP_COLORS:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setTracking(F)V
    .locals 0

    float-to-int p1, p1

    int-to-byte p1, p1

    int-to-float p1, p1

    iput p1, p0, Lsun/font/AttributeValues;->tracking:F

    sget-object p1, Lsun/font/EAttribute;->ETRACKING:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setTransform(Ljava/awt/font/TransformAttribute;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/awt/font/TransformAttribute;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/awt/font/TransformAttribute;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    sget-object p1, Lsun/font/AttributeValues;->DEFAULT:Lsun/font/AttributeValues;

    iget-object p1, p1, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    .line 7
    :goto_1
    iput-object p1, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    .line 8
    invoke-virtual {p0}, Lsun/font/AttributeValues;->updateDerivedTransforms()V

    .line 9
    sget-object p1, Lsun/font/EAttribute;->ETRANSFORM:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setTransform(Ljava/awt/geom/AffineTransform;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p1}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lsun/font/AttributeValues;->DEFAULT:Lsun/font/AttributeValues;

    iget-object v0, p1, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    :goto_1
    iput-object v0, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    .line 2
    invoke-virtual {p0}, Lsun/font/AttributeValues;->updateDerivedTransforms()V

    .line 3
    sget-object p1, Lsun/font/EAttribute;->ETRANSFORM:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setUnderline(I)V
    .locals 0

    int-to-byte p1, p1

    iput-byte p1, p0, Lsun/font/AttributeValues;->underline:B

    sget-object p1, Lsun/font/EAttribute;->EUNDERLINE:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setWeight(F)V
    .locals 0

    iput p1, p0, Lsun/font/AttributeValues;->weight:F

    sget-object p1, Lsun/font/EAttribute;->EWEIGHT:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lsun/font/AttributeValues;->width:F

    sget-object p1, Lsun/font/EAttribute;->EWIDTH:Lsun/font/EAttribute;

    invoke-direct {p0, p1}, Lsun/font/AttributeValues;->update(Lsun/font/EAttribute;)V

    return-void
.end method

.method public toMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/awt/font/TextAttribute;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/awt/font/TextAttribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iget v0, p0, Lsun/font/AttributeValues;->defined:I

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    sget-object v2, Lsun/font/EAttribute;->atts:[Lsun/font/EAttribute;

    aget-object v2, v2, v1

    iget v3, v2, Lsun/font/EAttribute;->mask:I

    and-int v4, v0, v3

    if-eqz v4, :cond_1

    not-int v3, v3

    and-int/2addr v0, v3

    iget-object v3, v2, Lsun/font/EAttribute;->att:Ljava/awt/font/TextAttribute;

    invoke-virtual {p0, v2}, Lsun/font/AttributeValues;->get(Lsun/font/EAttribute;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public toSerializableHashtable()Ljava/util/Hashtable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget v1, p0, Lsun/font/AttributeValues;->defined:I

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    if-eqz v1, :cond_3

    sget-object v4, Lsun/font/EAttribute;->atts:[Lsun/font/EAttribute;

    aget-object v4, v4, v3

    iget v5, v4, Lsun/font/EAttribute;->mask:I

    and-int v6, v1, v5

    if-eqz v6, :cond_2

    not-int v5, v5

    and-int/2addr v1, v5

    invoke-virtual {p0, v4}, Lsun/font/AttributeValues;->get(Lsun/font/EAttribute;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    instance-of v6, v5, Ljava/io/Serializable;

    if-eqz v6, :cond_1

    iget-object v4, v4, Lsun/font/EAttribute;->att:Ljava/awt/font/TextAttribute;

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget v4, v4, Lsun/font/EAttribute;->mask:I

    not-int v4, v4

    and-int/2addr v2, v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "sun.font.attributevalues.defined_key"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun/font/AttributeValues;->defined:I

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    sget-object v3, Lsun/font/EAttribute;->atts:[Lsun/font/EAttribute;

    aget-object v3, v3, v2

    iget v4, v3, Lsun/font/EAttribute;->mask:I

    and-int v5, v1, v4

    if-eqz v5, :cond_1

    not-int v4, v4

    and-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lsun/font/AttributeValues$1;->$SwitchMap$sun$font$EAttribute:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    throw p0

    :pswitch_0
    iget v4, p0, Lsun/font/AttributeValues;->tracking:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_1
    iget-byte v4, p0, Lsun/font/AttributeValues;->ligatures:B

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_2
    iget-byte v4, p0, Lsun/font/AttributeValues;->kerning:B

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_3
    iget-object v4, p0, Lsun/font/AttributeValues;->numericShaping:Ljava/awt/font/NumericShaper;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_4
    iget-boolean v4, p0, Lsun/font/AttributeValues;->swapColors:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_5
    iget-byte v4, p0, Lsun/font/AttributeValues;->imUnderline:B

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_6
    iget-object v4, p0, Lsun/font/AttributeValues;->imHighlight:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_7
    iget v4, p0, Lsun/font/AttributeValues;->justification:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_8
    iget-byte v4, p0, Lsun/font/AttributeValues;->bidiEmbedding:B

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_9
    iget-byte v4, p0, Lsun/font/AttributeValues;->runDirection:B

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_a
    iget-boolean v4, p0, Lsun/font/AttributeValues;->strikethrough:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_b
    iget-byte v4, p0, Lsun/font/AttributeValues;->underline:B

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_c
    iget-object v4, p0, Lsun/font/AttributeValues;->background:Ljava/awt/Paint;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_d
    iget-object v4, p0, Lsun/font/AttributeValues;->foreground:Ljava/awt/Paint;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_e
    iget-object v4, p0, Lsun/font/AttributeValues;->charReplacement:Ljava/awt/font/GraphicAttribute;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_f
    iget-object v4, p0, Lsun/font/AttributeValues;->font:Ljava/awt/Font;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_10
    iget-byte v4, p0, Lsun/font/AttributeValues;->superscript:B

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_11
    iget-object v4, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_12
    iget v4, p0, Lsun/font/AttributeValues;->size:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_13
    iget v4, p0, Lsun/font/AttributeValues;->posture:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_14
    iget v4, p0, Lsun/font/AttributeValues;->width:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_15
    iget v4, p0, Lsun/font/AttributeValues;->weight:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_16
    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lsun/font/AttributeValues;->family:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    iget v4, p0, Lsun/font/AttributeValues;->nondefault:I

    iget v3, v3, Lsun/font/EAttribute;->mask:I

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[btx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/font/AttributeValues;->baselineTransform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsun/font/AttributeValues;->charTransform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

.method public unset(Lsun/font/EAttribute;)V
    .locals 2

    iget-object v0, p1, Lsun/font/EAttribute;->att:Ljava/awt/font/TextAttribute;

    if-eqz v0, :cond_0

    sget-object v0, Lsun/font/AttributeValues;->DEFAULT:Lsun/font/AttributeValues;

    invoke-direct {p0, p1, v0}, Lsun/font/AttributeValues;->i_set(Lsun/font/EAttribute;Lsun/font/AttributeValues;)V

    iget v0, p0, Lsun/font/AttributeValues;->defined:I

    iget p1, p1, Lsun/font/EAttribute;->mask:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lsun/font/AttributeValues;->defined:I

    iget v0, p0, Lsun/font/AttributeValues;->nondefault:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lsun/font/AttributeValues;->nondefault:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t unset derived attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unsetDefault()V
    .locals 2

    iget v0, p0, Lsun/font/AttributeValues;->defined:I

    iget v1, p0, Lsun/font/AttributeValues;->nondefault:I

    and-int/2addr v0, v1

    iput v0, p0, Lsun/font/AttributeValues;->defined:I

    return-void
.end method

.method public updateDerivedTransforms()V
    .locals 3

    iget-object v0, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lsun/font/AttributeValues;->baselineTransform:Ljava/awt/geom/AffineTransform;

    iput-object v1, p0, Lsun/font/AttributeValues;->charTransform:Ljava/awt/geom/AffineTransform;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/geom/AffineTransform;

    iget-object v2, p0, Lsun/font/AttributeValues;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, v2}, Ljava/awt/geom/AffineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    iput-object v0, p0, Lsun/font/AttributeValues;->charTransform:Ljava/awt/geom/AffineTransform;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lsun/font/AttributeValues;->extractXRotation(Ljava/awt/geom/AffineTransform;Z)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    iput-object v0, p0, Lsun/font/AttributeValues;->baselineTransform:Ljava/awt/geom/AffineTransform;

    iget-object v0, p0, Lsun/font/AttributeValues;->charTransform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lsun/font/AttributeValues;->charTransform:Ljava/awt/geom/AffineTransform;

    :cond_1
    iget-object v0, p0, Lsun/font/AttributeValues;->baselineTransform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lsun/font/AttributeValues;->baselineTransform:Ljava/awt/geom/AffineTransform;

    :cond_2
    :goto_0
    iget-object v0, p0, Lsun/font/AttributeValues;->baselineTransform:Ljava/awt/geom/AffineTransform;

    if-nez v0, :cond_3

    iget v0, p0, Lsun/font/AttributeValues;->nondefault:I

    sget-object v1, Lsun/font/EAttribute;->EBASELINE_TRANSFORM:Lsun/font/EAttribute;

    iget v1, v1, Lsun/font/EAttribute;->mask:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lsun/font/AttributeValues;->nondefault:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lsun/font/AttributeValues;->nondefault:I

    sget-object v1, Lsun/font/EAttribute;->EBASELINE_TRANSFORM:Lsun/font/EAttribute;

    iget v1, v1, Lsun/font/EAttribute;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lsun/font/AttributeValues;->nondefault:I

    :goto_1
    return-void
.end method
