.class public Lcom/trans/android/common/AttributedData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private beginIndex:I

.field private endIndex:I


# direct methods
.method public constructor <init>(IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/trans/android/common/AttributedData;->beginIndex:I

    iput p2, p0, Lcom/trans/android/common/AttributedData;->endIndex:I

    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    :goto_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTo(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/trans/android/common/AttributedData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    sget-object v1, Ljava/awt/font/TextAttribute;->FONT:Ljava/awt/font/TextAttribute;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Font;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    sget-object v2, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/onyx/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/awt/Font;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    :cond_1
    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/trans/android/font/FontManager;->getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;

    move-result-object v0

    instance-of v1, v0, Lsun/font/CompositeFont;

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    iget v1, p0, Lcom/trans/android/common/AttributedData;->beginIndex:I

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/trans/android/common/AttributedData;->endIndex:I

    if-ge v1, v5, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lsun/font/Font2D;->charToGlyph(I)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x18

    if-ne v4, v2, :cond_3

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_3
    if-eq v4, v5, :cond_4

    new-instance v4, Lcom/trans/android/common/AttributedData;

    iget-object v6, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    invoke-direct {v4, v3, v1, v6}, Lcom/trans/android/common/AttributedData;-><init>(IILjava/util/Map;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget p2, p0, Lcom/trans/android/common/AttributedData;->beginIndex:I

    if-ne v3, p2, :cond_6

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance p2, Lcom/trans/android/common/AttributedData;

    iget-object p0, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    invoke-direct {p2, v3, v5, p0}, Lcom/trans/android/common/AttributedData;-><init>(IILjava/util/Map;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    :goto_3
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    return-void
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    return-object p0
.end method

.method public getBeginIndex()I
    .locals 0

    iget p0, p0, Lcom/trans/android/common/AttributedData;->beginIndex:I

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    iget p0, p0, Lcom/trans/android/common/AttributedData;->endIndex:I

    return p0
.end method

.method public getValue(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public incrementEnd()V
    .locals 1

    iget v0, p0, Lcom/trans/android/common/AttributedData;->endIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/trans/android/common/AttributedData;->endIndex:I

    return-void
.end method

.method public removeIf(Ljava/backport/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/backport/function/Predicate<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/backport/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributedData{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/trans/android/common/AttributedData;->beginIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/trans/android/common/AttributedData;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/trans/android/common/AttributedData;->attributes:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
