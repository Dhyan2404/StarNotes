.class public Lorg/apache/poi/convert/TocUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_TOC_LEVEL:Ljava/lang/String; = "toc_level"

.field public static final OUTLINE_LEVEL_MAX:I = 0x8

.field public static final OUTLINE_LEVEL_MIN:I = 0x0

.field public static final TITLE_MAX_LENGTH:I = 0x14

.field public static final TITLE_MIN_LENGTH:I = 0xa

.field public static final TOC_PREFIX:Ljava/lang/String; = "toc_"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDocument(Lorg/apache/poi/convert/HtmlDocumentFacade;Lorg/apache/poi/convert/WPToc;Lorg/jsoup/nodes/Element;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/convert/WPToc;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->createUnorderedList()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/convert/WPToc;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/convert/WPToc;

    new-instance v1, Lorg/jsoup/nodes/Element;

    const-string v2, "li"

    invoke-direct {v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/jsoup/nodes/Element;->appendTo(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/convert/WPToc;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/apache/poi/convert/WPToc;->getLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "level"

    invoke-virtual {v1, v3, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    new-instance v2, Lorg/jsoup/nodes/Element;

    const-string v3, "a"

    invoke-direct {v2, v3}, Lorg/jsoup/nodes/Element;-><init>(Ljava/lang/String;)V

    const-string v3, "href"

    invoke-virtual {v0}, Lorg/apache/poi/convert/WPToc;->getPoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/apache/poi/convert/WPToc;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/apache/poi/convert/WPToc;->hasChild()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/convert/TocUtils;->buildDocument(Lorg/apache/poi/convert/HtmlDocumentFacade;Lorg/apache/poi/convert/WPToc;Lorg/jsoup/nodes/Element;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static buildHtml(Lorg/apache/poi/convert/WPToc;)Lorg/jsoup/nodes/Document;
    .locals 4

    new-instance v0, Lorg/apache/poi/convert/HtmlDocumentFacade;

    invoke-direct {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lorg/apache/poi/convert/TocUtils;->buildDocument(Lorg/apache/poi/convert/HtmlDocumentFacade;Lorg/apache/poi/convert/WPToc;Lorg/jsoup/nodes/Element;)V

    new-instance p0, Lorg/jsoup/select/Evaluator$Tag;

    const-string v2, "head"

    invoke-direct {p0, v2}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lorg/jsoup/nodes/Element;->selectFirst(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/nodes/Element;

    move-result-object p0

    new-instance v2, Lorg/jsoup/select/Evaluator$Tag;

    const-string v3, "link"

    invoke-direct {v2, v3}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Element;->select(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/select/Elements;->remove()Lorg/jsoup/select/Elements;

    const-string v2, "style"

    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Document;->createElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/convert/HtmlDocumentFacade;->buildStylesheet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    return-object v1
.end method

.method public static findParent(Lorg/apache/poi/convert/WPToc;I)Lorg/apache/poi/convert/WPToc;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->getLevel()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->getParent()Lorg/apache/poi/convert/WPToc;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->getParent()Lorg/apache/poi/convert/WPToc;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->getLevel()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->getParent()Lorg/apache/poi/convert/WPToc;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->getParent()Lorg/apache/poi/convert/WPToc;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/poi/convert/TocUtils;->findParent(Lorg/apache/poi/convert/WPToc;I)Lorg/apache/poi/convert/WPToc;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->lastChild()Lorg/apache/poi/convert/WPToc;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/convert/WPToc;->getLevel()I

    move-result v1

    if-ge p1, v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->getParent()Lorg/apache/poi/convert/WPToc;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->getParent()Lorg/apache/poi/convert/WPToc;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    invoke-static {v0, p1}, Lorg/apache/poi/convert/TocUtils;->findParent(Lorg/apache/poi/convert/WPToc;I)Lorg/apache/poi/convert/WPToc;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method private static getTocTitle(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Node;

    instance-of v2, v1, Lorg/jsoup/nodes/TextNode;

    const-string v3, " "

    if-eqz v2, :cond_1

    check-cast v1, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v1}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "br"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtils;->normalSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isOutlineLevel(Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static parseWPToc(Lorg/apache/poi/convert/WPToc;Ljava/util/LinkedHashMap;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/convert/WPToc;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Document;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lorg/jsoup/select/Evaluator$Attribute;

    const-string v1, "toc_level"

    invoke-direct {v0, v1}, Lorg/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Document;

    invoke-virtual {v5, v0}, Lorg/jsoup/nodes/Element;->select(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Elements;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    invoke-virtual {v7, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lorg/apache/poi/convert/TocUtils;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v3, v8}, Lorg/apache/poi/convert/TocUtils;->findParent(Lorg/apache/poi/convert/WPToc;I)Lorg/apache/poi/convert/WPToc;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/apache/poi/convert/WPToc;

    invoke-static {v7}, Lorg/apache/poi/convert/TocUtils;->getTocTitle(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lorg/jsoup/nodes/Node;->byteStartPos()I

    move-result v7

    add-int/2addr v7, v2

    invoke-direct {v10, v11, v9, v7, v8}, Lorg/apache/poi/convert/WPToc;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v3, v10}, Lorg/apache/poi/convert/WPToc;->addChild(Lorg/apache/poi/convert/WPToc;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->getTagEndPos()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->hasChild()Z

    move-result p0

    return p0
.end method

.method public static setPElementTocAttr(Lorg/jsoup/nodes/Element;Ljava/lang/Integer;I)Z
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/convert/TocUtils;->isOutlineLevel(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toc_level"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "toc_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {p0, p2, p1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
