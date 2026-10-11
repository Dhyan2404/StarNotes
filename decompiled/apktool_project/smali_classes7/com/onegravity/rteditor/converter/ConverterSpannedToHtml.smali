.class public Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AMP:Ljava/lang/String; = "&amp;"

.field public static final BR:Ljava/lang/String; = "<br/>\n"

.field public static final GT:Ljava/lang/String; = "&gt;"

.field public static final LT:Ljava/lang/String; = "&lt;"

.field public static final NBSP:Ljava/lang/String; = "&nbsp;"


# instance fields
.field public a:Ljava/lang/StringBuilder;

.field public b:Landroid/text/Spanned;

.field public c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/onegravity/rteditor/converter/html/ISpannedToHtmlConverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->c:Ljava/util/Stack;

    return-void
.end method

.method public static synthetic a(Landroid/text/Spanned;Landroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->e(Landroid/text/Spanned;Landroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroid/text/Spanned;Landroid/text/style/CharacterStyle;Landroid/text/style/CharacterStyle;)I
    .locals 2

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    if-eq v0, p0, :cond_1

    sub-int/2addr p0, v0

    return p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;)V
    .locals 4

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getType()Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/ParagraphType;->getStartTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getRelativeIndent()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->c:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .locals 11

    new-instance v0, Lcom/onegravity/rteditor/utils/RTLayout;

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->b:Landroid/text/Spanned;

    invoke-direct {v0, v1}, Lcom/onegravity/rteditor/utils/RTLayout;-><init>(Landroid/text/Spanned;)V

    invoke-virtual {v0}, Lcom/onegravity/rteditor/utils/RTLayout;->getParagraphs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onegravity/rteditor/utils/Paragraph;

    iget-object v5, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->b:Landroid/text/Spanned;

    invoke-virtual {p0, v5, v4}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->d(Landroid/text/Spanned;Lcom/onegravity/rteditor/utils/Selection;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;

    invoke-virtual {v7}, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->getType()Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onegravity/rteditor/converter/ParagraphType;->isAlignment()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->getType()Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    sget-object v7, Lcom/onegravity/rteditor/converter/ParagraphType;->NONE:Lcom/onegravity/rteditor/converter/ParagraphType;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v2

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;

    invoke-virtual {v9}, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->getIndentation()I

    move-result v10

    add-int/2addr v8, v10

    invoke-virtual {v9}, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->getType()Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onegravity/rteditor/converter/ParagraphType;->isBullet()Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v7, Lcom/onegravity/rteditor/converter/ParagraphType;->BULLET:Lcom/onegravity/rteditor/converter/ParagraphType;

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Lcom/onegravity/rteditor/converter/ParagraphType;->isNumbering()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v7, Lcom/onegravity/rteditor/converter/ParagraphType;->NUMBERING:Lcom/onegravity/rteditor/converter/ParagraphType;

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Lcom/onegravity/rteditor/converter/ParagraphType;->isIndentation()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Lcom/onegravity/rteditor/converter/ParagraphType;->isUndefined()Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v7, Lcom/onegravity/rteditor/converter/ParagraphType;->INDENTATION_UL:Lcom/onegravity/rteditor/converter/ParagraphType;

    goto :goto_2

    :cond_5
    new-instance v5, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;

    invoke-direct {v5, v7, v8, v2}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;-><init>(Lcom/onegravity/rteditor/converter/ParagraphType;II)V

    invoke-virtual {p0, v5}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->f(Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;)V

    iget-object v5, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onegravity/rteditor/converter/ParagraphType;->getListStartTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_6

    iget-object v5, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/onegravity/rteditor/converter/ParagraphType;->getStartTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v5, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->b:Landroid/text/Spanned;

    invoke-virtual {v4}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v8

    invoke-virtual {v4}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v4

    invoke-virtual {p0, v5, v8, v4}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->j(Landroid/text/Spanned;II)V

    if-eqz v6, :cond_7

    invoke-virtual {p0, v6}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->h(Lcom/onegravity/rteditor/converter/ParagraphType;)V

    iget-object v4, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/onegravity/rteditor/converter/ParagraphType;->getEndTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0, v7}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->h(Lcom/onegravity/rteditor/converter/ParagraphType;)V

    iget-object v4, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/onegravity/rteditor/converter/ParagraphType;->getListEndTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->g()I

    goto :goto_3

    :cond_9
    return-void
.end method

.method public convert(Landroid/text/Spanned;Lcom/onegravity/rteditor/api/format/RTFormat$Html;)Lcom/onegravity/rteditor/api/format/RTHtml;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "Lcom/onegravity/rteditor/api/format/RTFormat$Html;",
            ")",
            "Lcom/onegravity/rteditor/api/format/RTHtml<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p2, Lcom/onegravity/rteditor/api/format/RTFormat$Html;->removeTrailingWhiteSpace:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->i(Landroid/text/Spanned;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->b:Landroid/text/Spanned;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onegravity/rteditor/extension/RTRichTextExtKt;->getVersionStr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    new-instance v0, Lcom/onegravity/rteditor/converter/html/SpannedToHtmlConverterV2;

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-direct {v0, p1, p2, v1}, Lcom/onegravity/rteditor/converter/html/SpannedToHtmlConverterV2;-><init>(Landroid/text/Spanned;Lcom/onegravity/rteditor/api/format/RTFormat;Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->d:Lcom/onegravity/rteditor/converter/html/ISpannedToHtmlConverter;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->c()V

    new-instance p1, Lcom/onegravity/rteditor/api/format/RTHtml;

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->d:Lcom/onegravity/rteditor/converter/html/ISpannedToHtmlConverter;

    invoke-interface {p0}, Lcom/onegravity/rteditor/converter/html/ISpannedToHtmlConverter;->getImageList()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Lcom/onegravity/rteditor/api/format/RTHtml;-><init>(Lcom/onegravity/rteditor/api/format/RTFormat$Html;Ljava/lang/CharSequence;Ljava/util/List;)V

    return-object p1
.end method

.method public final d(Landroid/text/Spanned;Lcom/onegravity/rteditor/utils/Selection;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "Lcom/onegravity/rteditor/utils/Selection;",
            ")",
            "Ljava/util/Set<",
            "Lcom/onegravity/rteditor/converter/SingleParagraphStyle;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v0

    invoke-virtual {p2}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p2

    const-class v1, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v0, p2, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ParagraphStyle;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/onegravity/rteditor/converter/ParagraphType;->getInstance(Landroid/text/style/ParagraphStyle;)Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;

    invoke-direct {v3, v2, v1}, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;-><init>(Lcom/onegravity/rteditor/converter/ParagraphType;Landroid/text/style/ParagraphStyle;)V

    invoke-interface {p0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final f(Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;)V
    .locals 3

    sget-object v0, Lcom/onegravity/rteditor/converter/ParagraphType;->NONE:Lcom/onegravity/rteditor/converter/ParagraphType;

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getAbsoluteIndent()I

    move-result v1

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getType()Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getAbsoluteIndent()I

    move-result v2

    if-le v2, v1, :cond_1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getAbsoluteIndent()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->setRelativeIndent(I)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->b(Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getAbsoluteIndent()I

    move-result v2

    if-ge v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->g()I

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->f(Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getType()Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v1

    if-eq v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->setRelativeIndent(I)V

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->b(Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final g()I
    .locals 5

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getType()Lcom/onegravity/rteditor/converter/ParagraphType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onegravity/rteditor/converter/ParagraphType;->getEndTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getRelativeIndent()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->getRelativeIndent()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public final h(Lcom/onegravity/rteditor/converter/ParagraphType;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onegravity/rteditor/converter/ParagraphType;->endTagAddsLineBreak()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, v0}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "<br/>\n"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final i(Landroid/text/Spanned;)Landroid/text/Spanned;
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 v0, p0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x200b

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spanned;

    return-object p0
.end method

.method public final j(Landroid/text/Spanned;II)V
    .locals 2

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/sunia/HTREnginev2/ece;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/ece;-><init>(Landroid/text/Spanned;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, p3, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/CharacterStyle;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->d:Lcom/onegravity/rteditor/converter/html/ISpannedToHtmlConverter;

    invoke-interface {p0, v0, p2, p3}, Lcom/onegravity/rteditor/converter/html/ISpannedToHtmlConverter;->convertText(Ljava/util/SortedSet;II)V

    return-void
.end method
