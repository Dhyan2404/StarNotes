.class final Ljava/awt/font/StyledParagraph;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INITIAL_SIZE:I = 0x8


# instance fields
.field private decoration:Lsun/font/Decoration;

.field decorationStarts:[I

.field private decorations:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lsun/font/Decoration;",
            ">;"
        }
    .end annotation
.end field

.field private font:Ljava/lang/Object;

.field fontStarts:[I

.field private fonts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;[C)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    sub-int v2, v1, v0

    iput v2, p0, Ljava/awt/font/StyledParagraph;->length:I

    invoke-interface {p1}, Ljava/text/CharacterIterator;->first()C

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getRunLimit()I

    move-result v3

    sub-int/2addr v2, v0

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Ljava/awt/font/StyledParagraph;->addInputMethodAttrs(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lsun/font/Decoration;->getDecoration(Ljava/util/Map;)Lsun/font/Decoration;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Ljava/awt/font/StyledParagraph;->addDecoration(Lsun/font/Decoration;I)V

    invoke-static {v4}, Ljava/awt/font/StyledParagraph;->getGraphicOrFont(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    sub-int v5, v3, v0

    invoke-direct {p0, p2, v4, v2, v5}, Ljava/awt/font/StyledParagraph;->addFonts([CLjava/util/Map;II)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v5, v2}, Ljava/awt/font/StyledParagraph;->addFont(Ljava/lang/Object;I)V

    :goto_1
    invoke-interface {p1, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    if-lt v3, v1, :cond_3

    iget-object p1, p0, Ljava/awt/font/StyledParagraph;->decorations:Ljava/util/Vector;

    if-eqz p1, :cond_1

    iget p2, p0, Ljava/awt/font/StyledParagraph;->length:I

    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->decorationStarts:[I

    invoke-static {p0, p2, p1, v0}, Ljava/awt/font/StyledParagraph;->addToVector(Ljava/lang/Object;ILjava/util/Vector;[I)[I

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/StyledParagraph;->decorationStarts:[I

    :cond_1
    iget-object p1, p0, Ljava/awt/font/StyledParagraph;->fonts:Ljava/util/Vector;

    if-eqz p1, :cond_2

    iget p2, p0, Ljava/awt/font/StyledParagraph;->length:I

    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->fontStarts:[I

    invoke-static {p0, p2, p1, v0}, Ljava/awt/font/StyledParagraph;->addToVector(Ljava/lang/Object;ILjava/util/Vector;[I)[I

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/StyledParagraph;->fontStarts:[I

    :cond_2
    return-void

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private addDecoration(Lsun/font/Decoration;I)V
    .locals 2

    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->decorations:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/awt/font/StyledParagraph;->decorationStarts:[I

    invoke-static {p1, p2, v0, v1}, Ljava/awt/font/StyledParagraph;->addToVector(Ljava/lang/Object;ILjava/util/Vector;[I)[I

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/StyledParagraph;->decorationStarts:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->decoration:Lsun/font/Decoration;

    if-nez v0, :cond_1

    iput-object p1, p0, Ljava/awt/font/StyledParagraph;->decoration:Lsun/font/Decoration;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    sget v1, Ljava/awt/font/StyledParagraph;->INITIAL_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ljava/awt/font/StyledParagraph;->decorations:Ljava/util/Vector;

    iget-object v1, p0, Ljava/awt/font/StyledParagraph;->decoration:Lsun/font/Decoration;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->decorations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget p1, Ljava/awt/font/StyledParagraph;->INITIAL_SIZE:I

    new-array p1, p1, [I

    iput-object p1, p0, Ljava/awt/font/StyledParagraph;->decorationStarts:[I

    const/4 p0, 0x0

    aput p0, p1, p0

    const/4 p0, 0x1

    aput p2, p1, p0

    :cond_2
    :goto_0
    return-void
.end method

.method private addFont(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->fonts:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljava/awt/font/StyledParagraph;->fontStarts:[I

    invoke-static {p1, p2, v0, v1}, Ljava/awt/font/StyledParagraph;->addToVector(Ljava/lang/Object;ILjava/util/Vector;[I)[I

    move-result-object p1

    iput-object p1, p0, Ljava/awt/font/StyledParagraph;->fontStarts:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->font:Ljava/lang/Object;

    if-nez v0, :cond_1

    iput-object p1, p0, Ljava/awt/font/StyledParagraph;->font:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Vector;

    sget v1, Ljava/awt/font/StyledParagraph;->INITIAL_SIZE:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ljava/awt/font/StyledParagraph;->fonts:Ljava/util/Vector;

    iget-object v1, p0, Ljava/awt/font/StyledParagraph;->font:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->fonts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget p1, Ljava/awt/font/StyledParagraph;->INITIAL_SIZE:I

    new-array p1, p1, [I

    iput-object p1, p0, Ljava/awt/font/StyledParagraph;->fontStarts:[I

    const/4 p0, 0x0

    aput p0, p1, p0

    const/4 p0, 0x1

    aput p2, p1, p0

    :cond_2
    :goto_0
    return-void
.end method

.method private addFonts([CLjava/util/Map;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    invoke-static {}, Lsun/font/FontResolver;->getInstance()Lsun/font/FontResolver;

    move-result-object v0

    invoke-static {p1, p3, p4}, Lsun/text/CodePointIterator;->create([CII)Lsun/text/CodePointIterator;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lsun/text/CodePointIterator;->charIndex()I

    move-result p3

    if-ge p3, p4, :cond_0

    invoke-virtual {v0, p1}, Lsun/font/FontResolver;->nextFontRunIndex(Lsun/text/CodePointIterator;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lsun/font/FontResolver;->getFont(ILjava/util/Map;)Ljava/awt/Font;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Ljava/awt/font/StyledParagraph;->addFont(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addInputMethodAttrs(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;"
        }
    .end annotation

    sget-object v0, Ljava/awt/font/TextAttribute;->INPUT_METHOD_HIGHLIGHT:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    instance-of v1, v0, Ljava/text/Annotation;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/text/Annotation;

    invoke-virtual {v0}, Ljava/text/Annotation;->getValue()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    check-cast v0, Ljava/awt/im/InputMethodHighlight;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljava/awt/im/InputMethodHighlight;->getStyle()Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    :cond_1
    return-object p0
.end method

.method private static addToVector(Ljava/lang/Object;ILjava/util/Vector;[I)[I
    .locals 2

    invoke-virtual {p2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p0

    array-length p2, p3

    if-ne p2, p0, :cond_0

    array-length p2, p3

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [I

    array-length v0, p3

    const/4 v1, 0x0

    invoke-static {p3, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, p2

    :cond_0
    add-int/lit8 p0, p0, -0x1

    aput p1, p3, p0

    :cond_1
    return-object p3
.end method

.method public static deleteChar(Ljava/text/AttributedCharacterIterator;[CILjava/awt/font/StyledParagraph;)Ljava/awt/font/StyledParagraph;
    .locals 2

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p3, Ljava/awt/font/StyledParagraph;->decorations:Ljava/util/Vector;

    if-nez v0, :cond_0

    iget-object v0, p3, Ljava/awt/font/StyledParagraph;->fonts:Ljava/util/Vector;

    if-nez v0, :cond_0

    iget p0, p3, Ljava/awt/font/StyledParagraph;->length:I

    add-int/lit8 p0, p0, -0x1

    iput p0, p3, Ljava/awt/font/StyledParagraph;->length:I

    return-object p3

    :cond_0
    invoke-virtual {p3, p2}, Ljava/awt/font/StyledParagraph;->getRunLimit(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p3, v0}, Ljava/awt/font/StyledParagraph;->getRunLimit(I)I

    move-result v0

    if-ne v0, p2, :cond_2

    :cond_1
    new-instance p2, Ljava/awt/font/StyledParagraph;

    invoke-direct {p2, p0, p1}, Ljava/awt/font/StyledParagraph;-><init>(Ljava/text/AttributedCharacterIterator;[C)V

    return-object p2

    :cond_2
    iget p0, p3, Ljava/awt/font/StyledParagraph;->length:I

    add-int/lit8 p0, p0, -0x1

    iput p0, p3, Ljava/awt/font/StyledParagraph;->length:I

    iget-object p0, p3, Ljava/awt/font/StyledParagraph;->decorations:Ljava/util/Vector;

    if-eqz p0, :cond_3

    iget-object p1, p3, Ljava/awt/font/StyledParagraph;->decorationStarts:[I

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    invoke-static {p2, p1, p0}, Ljava/awt/font/StyledParagraph;->deleteFrom(I[II)V

    :cond_3
    iget-object p0, p3, Ljava/awt/font/StyledParagraph;->fonts:Ljava/util/Vector;

    if-eqz p0, :cond_4

    iget-object p1, p3, Ljava/awt/font/StyledParagraph;->fontStarts:[I

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    invoke-static {p2, p1, p0}, Ljava/awt/font/StyledParagraph;->deleteFrom(I[II)V

    :cond_4
    return-object p3
.end method

.method private static deleteFrom(I[II)V
    .locals 1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    if-le v0, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    aput v0, p1, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static findRunContaining(I[I)I
    .locals 3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    aget v2, p1, v1

    if-le v2, p0, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getGraphicOrFont(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/awt/font/TextAttribute;->CHAR_REPLACEMENT:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljava/awt/Font;->getFont(Ljava/util/Map;)Ljava/awt/Font;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static insertChar(Ljava/text/AttributedCharacterIterator;[CILjava/awt/font/StyledParagraph;)Ljava/awt/font/StyledParagraph;
    .locals 4

    invoke-interface {p0, p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p0}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/awt/font/StyledParagraph;->addInputMethodAttrs(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lsun/font/Decoration;->getDecoration(Ljava/util/Map;)Lsun/font/Decoration;

    move-result-object v2

    invoke-virtual {p3, p2}, Ljava/awt/font/StyledParagraph;->getDecorationAt(I)Lsun/font/Decoration;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p2, Ljava/awt/font/StyledParagraph;

    invoke-direct {p2, p0, p1}, Ljava/awt/font/StyledParagraph;-><init>(Ljava/text/AttributedCharacterIterator;[C)V

    return-object p2

    :cond_0
    invoke-static {v1}, Ljava/awt/font/StyledParagraph;->getGraphicOrFont(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lsun/font/FontResolver;->getInstance()Lsun/font/FontResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lsun/font/FontResolver;->getFontIndex(C)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lsun/font/FontResolver;->getFont(ILjava/util/Map;)Ljava/awt/Font;

    move-result-object v2

    :cond_1
    invoke-virtual {p3, p2}, Ljava/awt/font/StyledParagraph;->getFontOrGraphicAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p2, Ljava/awt/font/StyledParagraph;

    invoke-direct {p2, p0, p1}, Ljava/awt/font/StyledParagraph;-><init>(Ljava/text/AttributedCharacterIterator;[C)V

    return-object p2

    :cond_2
    iget p0, p3, Ljava/awt/font/StyledParagraph;->length:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p3, Ljava/awt/font/StyledParagraph;->length:I

    iget-object p0, p3, Ljava/awt/font/StyledParagraph;->decorations:Ljava/util/Vector;

    if-eqz p0, :cond_3

    iget-object p1, p3, Ljava/awt/font/StyledParagraph;->decorationStarts:[I

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    invoke-static {p2, p1, p0}, Ljava/awt/font/StyledParagraph;->insertInto(I[II)V

    :cond_3
    iget-object p0, p3, Ljava/awt/font/StyledParagraph;->fonts:Ljava/util/Vector;

    if-eqz p0, :cond_4

    iget-object p1, p3, Ljava/awt/font/StyledParagraph;->fontStarts:[I

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    invoke-static {p2, p1, p0}, Ljava/awt/font/StyledParagraph;->insertInto(I[II)V

    :cond_4
    return-object p3
.end method

.method private static insertInto(I[II)V
    .locals 1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    if-le v0, p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDecorationAt(I)Lsun/font/Decoration;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Ljava/awt/font/StyledParagraph;->length:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->decorations:Ljava/util/Vector;

    if-nez v0, :cond_0

    iget-object p0, p0, Ljava/awt/font/StyledParagraph;->decoration:Lsun/font/Decoration;

    return-object p0

    :cond_0
    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->decorationStarts:[I

    invoke-static {p1, v0}, Ljava/awt/font/StyledParagraph;->findRunContaining(I[I)I

    move-result p1

    iget-object p0, p0, Ljava/awt/font/StyledParagraph;->decorations:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/font/Decoration;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFontOrGraphicAt(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Ljava/awt/font/StyledParagraph;->length:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->fonts:Ljava/util/Vector;

    if-nez v0, :cond_0

    iget-object p0, p0, Ljava/awt/font/StyledParagraph;->font:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->fontStarts:[I

    invoke-static {p1, v0}, Ljava/awt/font/StyledParagraph;->findRunContaining(I[I)I

    move-result p1

    iget-object p0, p0, Ljava/awt/font/StyledParagraph;->fonts:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRunLimit(I)I
    .locals 3

    if-ltz p1, :cond_2

    iget v0, p0, Ljava/awt/font/StyledParagraph;->length:I

    if-ge p1, v0, :cond_2

    iget-object v1, p0, Ljava/awt/font/StyledParagraph;->decorations:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljava/awt/font/StyledParagraph;->decorationStarts:[I

    invoke-static {p1, v0}, Ljava/awt/font/StyledParagraph;->findRunContaining(I[I)I

    move-result v0

    iget-object v1, p0, Ljava/awt/font/StyledParagraph;->decorationStarts:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    :cond_0
    iget v1, p0, Ljava/awt/font/StyledParagraph;->length:I

    iget-object v2, p0, Ljava/awt/font/StyledParagraph;->fonts:Ljava/util/Vector;

    if-eqz v2, :cond_1

    iget-object v1, p0, Ljava/awt/font/StyledParagraph;->fontStarts:[I

    invoke-static {p1, v1}, Ljava/awt/font/StyledParagraph;->findRunContaining(I[I)I

    move-result p1

    iget-object p0, p0, Ljava/awt/font/StyledParagraph;->fontStarts:[I

    add-int/lit8 p1, p1, 0x1

    aget v1, p0, p1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
