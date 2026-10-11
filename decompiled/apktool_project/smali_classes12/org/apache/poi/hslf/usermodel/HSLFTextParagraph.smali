.class public final Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/TextParagraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/sl/usermodel/TextParagraph<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShape;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
        "Lorg/apache/poi/hslf/usermodel/HSLFTextRun;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final MAX_NUMBER_OF_STYLES:I = 0x4e20


# instance fields
.field private _byteAtom:Lorg/apache/poi/hslf/record/TextBytesAtom;

.field private _charAtom:Lorg/apache/poi/hslf/record/TextCharsAtom;

.field private _dirty:Z

.field private final _headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

.field private _paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

.field protected _parentShape:Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

.field protected _ruler:Lorg/apache/poi/hslf/record/TextRulerAtom;

.field protected final _runs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextRun;",
            ">;"
        }
    .end annotation
.end field

.field private _sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

.field private final parentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private shapeId:I

.field private styleTextProp9Atom:Lorg/apache/poi/hslf/record/StyleTextProp9Atom;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hslf/record/TextHeaderAtom;Lorg/apache/poi/hslf/record/TextBytesAtom;Lorg/apache/poi/hslf/record/TextCharsAtom;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hslf/record/TextHeaderAtom;",
            "Lorg/apache/poi/hslf/record/TextBytesAtom;",
            "Lorg/apache/poi/hslf/record/TextCharsAtom;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    iput-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_byteAtom:Lorg/apache/poi/hslf/record/TextBytesAtom;

    iput-object p3, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_charAtom:Lorg/apache/poi/hslf/record/TextCharsAtom;

    iput-object p4, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->parentList:Ljava/util/List;

    new-instance p1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const/4 p2, 0x1

    sget-object p3, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->paragraph:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;-><init>(ILorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TextHeaderAtom must be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Ljava/lang/Integer;Lorg/apache/poi/hslf/model/textproperties/TextProp;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->lambda$setPropVal$2(Ljava/lang/Integer;Lorg/apache/poi/hslf/model/textproperties/TextProp;)V

    return-void
.end method

.method public static appendText(Ljava/util/List;Ljava/lang/String;Z)Lorg/apache/poi/hslf/usermodel/HSLFTextRun;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextRun;"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->toInternalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    const-string v3, "(?<=\r)"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, p1, v5

    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v7

    if-nez v7, :cond_0

    move v7, v1

    goto :goto_1

    :cond_0
    move v7, v4

    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v1, :cond_1

    move v8, v1

    goto :goto_2

    :cond_1
    move v8, v4

    :goto_2
    if-eqz p2, :cond_2

    if-nez v8, :cond_2

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getParagraphStyle()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object p2

    new-instance v8, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    iget-object v9, v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    iget-object v10, v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_byteAtom:Lorg/apache/poi/hslf/record/TextBytesAtom;

    iget-object v11, v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_charAtom:Lorg/apache/poi/hslf/record/TextCharsAtom;

    invoke-direct {v8, v9, v10, v11, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;-><init>(Lorg/apache/poi/hslf/record/TextHeaderAtom;Lorg/apache/poi/hslf/record/TextBytesAtom;Lorg/apache/poi/hslf/record/TextCharsAtom;Ljava/util/List;)V

    invoke-virtual {p2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->copy()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object p2

    invoke-virtual {v8, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getParentShape()Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    move-result-object p2

    invoke-virtual {v8, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParentShape(Lorg/apache/poi/hslf/usermodel/HSLFTextShape;)V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getShapeId()I

    move-result p2

    invoke-virtual {v8, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setShapeId(I)V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p2

    invoke-direct {v8, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->supplySheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v8

    :cond_2
    if-nez v7, :cond_3

    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getCharacterStyle()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object p2

    new-instance v2, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-direct {v2, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V

    invoke-virtual {p2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->copy()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharacterStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->addTextRun(Lorg/apache/poi/hslf/usermodel/HSLFTextRun;)V

    :cond_3
    invoke-virtual {v2, v6}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    move p2, v1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->storeText(Ljava/util/List;)V

    return-object v2
.end method

.method public static applyCharacterStyles(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {v4}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getCharactersCovered()I

    move-result v5

    const/16 v6, 0x4e20

    if-gt v5, v6, :cond_5

    move v6, v0

    :cond_0
    :goto_1
    if-ge v6, v5, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v7}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {v9}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v10

    add-int/2addr v10, v6

    if-gt v10, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v9}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v10

    sub-int v11, v5, v6

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    new-instance v12, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-direct {v12, v7}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    add-int/lit8 v10, v3, 0x1

    invoke-interface {v8, v10, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int v10, v6, v11

    :goto_2
    invoke-virtual {v9, v4}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharacterStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    new-instance v6, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-direct {v6, v7}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V

    const-string v7, ""

    invoke-virtual {v6, v7}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-virtual {v9}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getCharacterStyle()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v6

    invoke-virtual {v9}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    :goto_3
    add-int/lit8 v10, v10, 0x1

    :cond_3
    move v6, v10

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    if-ne v3, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot process more than 20000 styles, but had paragraph with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method public static applyHyperlinks(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->find(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->getEndIndex()I

    move-result v6

    if-le v4, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v6

    move v7, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {v8}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v9

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->getEndIndex()I

    move-result v10

    if-ge v4, v10, :cond_5

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->getStartIndex()I

    move-result v10

    add-int v11, v4, v9

    if-ge v10, v11, :cond_5

    invoke-virtual {v8}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->getStartIndex()I

    move-result v11

    sub-int/2addr v11, v4

    if-lez v11, :cond_3

    new-instance v9, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-direct {v9, v5}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V

    invoke-virtual {v8}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getCharacterStyle()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharacterStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    invoke-virtual {v10, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    add-int/lit8 v8, v7, 0x1

    invoke-interface {v6, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v9, v11

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->getEndIndex()I

    move-result v11

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->getStartIndex()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ge v11, v9, :cond_4

    new-instance v9, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-direct {v9, v5}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V

    invoke-virtual {v8}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getCharacterStyle()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setCharacterStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    invoke-virtual {v10, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    invoke-interface {v6, v7, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object v8, v9

    move v9, v11

    :cond_4
    invoke-virtual {v8, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setHyperlink(Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;)V

    :cond_5
    :goto_2
    add-int/2addr v4, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static applyParagraphIndents(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/IndentProp;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/model/textproperties/IndentProp;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->getCharactersCovered()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    add-int/lit8 v5, v3, -0x1

    if-lt v4, v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v5}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {v8}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/hslf/model/textproperties/IndentProp;->getIndentLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setIndentLevel(I)V

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static applyParagraphStyles(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getCharactersCovered()I

    move-result v3

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->copy()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    invoke-virtual {v5}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {v8}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    invoke-virtual {v6, v7}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    add-int/2addr v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static synthetic b(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->lambda$getTabStops$0(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->lambda$addTabStops$1(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;)V

    return-void
.end method

.method private static findStyleAtomPresent(Lorg/apache/poi/hslf/record/TextHeaderAtom;I)Lorg/apache/poi/hslf/record/StyleTextPropAtom;
    .locals 12

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v1, :cond_3

    aget-object v7, v0, v4

    invoke-virtual {v7}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v8

    if-eqz v5, :cond_0

    sget-object v10, Lorg/apache/poi/hslf/record/RecordTypes;->TextHeaderAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v10, v10, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-nez v10, :cond_0

    goto :goto_2

    :cond_0
    if-ne p0, v7, :cond_1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    or-int/2addr v5, v6

    if-eqz v5, :cond_2

    sget-object v6, Lorg/apache/poi/hslf/record/RecordTypes;->StyleTextPropAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v6, v6, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v10, v6

    cmp-long v6, v8, v10

    if-nez v6, :cond_2

    check-cast v7, Lorg/apache/poi/hslf/record/StyleTextPropAtom;

    move-object v3, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v3, :cond_5

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string v0, "styles atom doesn\'t exist. Creating dummy record for later saving."

    invoke-interface {p0, v0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/poi/hslf/record/StyleTextPropAtom;

    if-gez p1, :cond_4

    move p1, v6

    :cond_4
    invoke-direct {v3, p1}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;-><init>(I)V

    goto :goto_3

    :cond_5
    if-ltz p1, :cond_6

    invoke-virtual {v3, p1}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->setParentTextSize(I)V

    :cond_6
    :goto_3
    return-object v3
.end method

.method public static findTextParagraphs(Lorg/apache/poi/hslf/record/EscherTextboxWrapper;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hslf/record/EscherTextboxWrapper;",
            "Lorg/apache/poi/hslf/usermodel/HSLFSheet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-static {p0}, Lorg/apache/poi/hslf/record/RecordContainer;->handleParentAwareRecords(Lorg/apache/poi/hslf/record/RecordContainer;)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;->getShapeId()I

    move-result v0

    .line 8
    sget-object v1, Lorg/apache/poi/hslf/record/RecordTypes;->OutlineTextRefAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v1, v1, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/record/OutlineTextRefAtom;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getTextParagraphs()Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/OutlineTextRefAtom;->getTextIndex()I

    move-result v1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 12
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v5}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndex()I

    move-result v5

    if-le v5, v1, :cond_2

    goto :goto_1

    :cond_2
    if-ne v5, v1, :cond_0

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 14
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v3, v5

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 16
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 17
    :cond_5
    sget-object p1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string v2, "text run not found for OutlineTextRefAtom.TextIndex={}"

    invoke-static {v1}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_6
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string p1, "Outline atom reference can\'t be solved without a sheet record"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    if-eqz p1, :cond_9

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getTextParagraphs()Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    iget-object v4, v4, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-virtual {v4}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object v4

    if-ne v4, p0, :cond_8

    move-object v3, v1

    :cond_9
    if-nez v3, :cond_b

    .line 22
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findTextParagraphs([Lorg/apache/poi/hslf/record/Record;)Ljava/util/List;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    .line 24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    goto :goto_2

    .line 25
    :cond_a
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string p1, "TextBox contains more than one list of paragraphs."

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_2
    if-eqz v3, :cond_c

    .line 26
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;->getStyleTextProp9Atom()Lorg/apache/poi/hslf/record/StyleTextProp9Atom;

    move-result-object p0

    .line 27
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    .line 28
    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setShapeId(I)V

    .line 29
    invoke-virtual {v1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setStyleTextProp9Atom(Lorg/apache/poi/hslf/record/StyleTextProp9Atom;)V

    goto :goto_3

    :cond_c
    return-object v3
.end method

.method public static findTextParagraphs(Lorg/apache/poi/hslf/record/PPDrawing;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hslf/record/PPDrawing;",
            "Lorg/apache/poi/hslf/usermodel/HSLFSheet;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/PPDrawing;->getTextboxWrappers()[Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 3
    invoke-static {v3, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findTextParagraphs(Lorg/apache/poi/hslf/record/EscherTextboxWrapper;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not receive a valid drawing for sheet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->_getSheetNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findTextParagraphs([Lorg/apache/poi/hslf/record/Record;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/poi/hslf/record/Record;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 31
    filled-new-array {v2}, [I

    move-result-object v3

    move v4, v2

    .line 32
    :goto_0
    aget v5, v3, v2

    array-length v6, v0

    if-ge v5, v6, :cond_c

    const/4 v5, 0x0

    .line 33
    invoke-static {v0, v3, v5}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRecords([Lorg/apache/poi/hslf/record/Record;[ILorg/apache/poi/hslf/record/TextHeaderAtom;)[Lorg/apache/poi/hslf/record/Record;

    move-result-object v6

    array-length v7, v6

    move v12, v2

    move-object v8, v5

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    :goto_1
    if-ge v12, v7, :cond_5

    aget-object v13, v6, v12

    .line 34
    invoke-virtual {v13}, Lorg/apache/poi/hslf/record/Record;->getRecordType()J

    move-result-wide v14

    .line 35
    sget-object v2, Lorg/apache/poi/hslf/record/RecordTypes;->TextHeaderAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v2, v2, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    move-object/from16 v16, v3

    int-to-long v2, v2

    cmp-long v2, v2, v14

    if-nez v2, :cond_0

    .line 36
    check-cast v13, Lorg/apache/poi/hslf/record/TextHeaderAtom;

    move-object v5, v13

    goto :goto_2

    .line 37
    :cond_0
    sget-object v2, Lorg/apache/poi/hslf/record/RecordTypes;->TextBytesAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v2, v2, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v2, v2

    cmp-long v2, v2, v14

    if-nez v2, :cond_1

    .line 38
    check-cast v13, Lorg/apache/poi/hslf/record/TextBytesAtom;

    move-object v8, v13

    goto :goto_2

    .line 39
    :cond_1
    sget-object v2, Lorg/apache/poi/hslf/record/RecordTypes;->TextCharsAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v2, v2, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v2, v2

    cmp-long v2, v2, v14

    if-nez v2, :cond_2

    .line 40
    check-cast v13, Lorg/apache/poi/hslf/record/TextCharsAtom;

    move-object v9, v13

    goto :goto_2

    .line 41
    :cond_2
    sget-object v2, Lorg/apache/poi/hslf/record/RecordTypes;->TextRulerAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v2, v2, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v2, v2

    cmp-long v2, v2, v14

    if-nez v2, :cond_3

    .line 42
    check-cast v13, Lorg/apache/poi/hslf/record/TextRulerAtom;

    move-object v10, v13

    goto :goto_2

    .line 43
    :cond_3
    sget-object v2, Lorg/apache/poi/hslf/record/RecordTypes;->MasterTextPropAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v2, v2, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v2, v2

    cmp-long v2, v2, v14

    if-nez v2, :cond_4

    .line 44
    check-cast v13, Lorg/apache/poi/hslf/record/MasterTextPropAtom;

    move-object v11, v13

    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v16

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v16, v3

    if-nez v5, :cond_6

    goto/16 :goto_5

    .line 45
    :cond_6
    invoke-virtual {v5}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/poi/hslf/record/SlideListWithText;

    if-eqz v2, :cond_7

    .line 46
    invoke-virtual {v5, v4}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->setIndex(I)V

    :cond_7
    if-nez v8, :cond_8

    if-nez v9, :cond_8

    .line 47
    new-instance v8, Lorg/apache/poi/hslf/record/TextBytesAtom;

    invoke-direct {v8}, Lorg/apache/poi/hslf/record/TextBytesAtom;-><init>()V

    .line 48
    sget-object v2, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v2}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v2

    const-string v3, "bytes nor chars atom doesn\'t exist. Creating dummy record for later saving."

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_8
    if-eqz v9, :cond_9

    .line 49
    invoke-virtual {v9}, Lorg/apache/poi/hslf/record/TextCharsAtom;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    invoke-virtual {v8}, Lorg/apache/poi/hslf/record/TextBytesAtom;->getText()Ljava/lang/String;

    move-result-object v2

    .line 50
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v5, v3}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findStyleAtomPresent(Lorg/apache/poi/hslf/record/TextHeaderAtom;I)Lorg/apache/poi/hslf/record/StyleTextPropAtom;

    move-result-object v3

    .line 51
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v7, "(?<=\r)"

    .line 53
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v7, :cond_a

    aget-object v13, v2, v12

    .line 54
    new-instance v14, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-direct {v14, v5, v8, v9, v6}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;-><init>(Lorg/apache/poi/hslf/record/TextHeaderAtom;Lorg/apache/poi/hslf/record/TextBytesAtom;Lorg/apache/poi/hslf/record/TextCharsAtom;Ljava/util/List;)V

    .line 55
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iput-object v10, v14, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_ruler:Lorg/apache/poi/hslf/record/TextRulerAtom;

    .line 57
    invoke-virtual {v14}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getParagraphStyle()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v15, v0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    .line 58
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-direct {v0, v14}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V

    .line 59
    invoke-virtual {v14, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->addTextRun(Lorg/apache/poi/hslf/usermodel/HSLFTextRun;)V

    .line 60
    invoke-virtual {v0, v13}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    .line 61
    :cond_a
    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->getCharacterStyles()Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->applyCharacterStyles(Ljava/util/List;Ljava/util/List;)V

    .line 62
    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->getParagraphStyles()Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->applyParagraphStyles(Ljava/util/List;Ljava/util/List;)V

    if-eqz v11, :cond_b

    .line 63
    invoke-virtual {v11}, Lorg/apache/poi/hslf/record/MasterTextPropAtom;->getIndents()Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->applyParagraphIndents(Ljava/util/List;Ljava/util/List;)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 64
    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v2, "No text records found."

    invoke-interface {v0, v2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    :cond_d
    return-object v1
.end method

.method public static fixLineEndings(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string v0, "paragraph without textruns found"

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static getColorFromColorIndexStruct(ILorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/awt/Color;
    .locals 3

    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xfe

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getColorScheme()Lorg/apache/poi/hslf/record/ColorSchemeAtom;

    move-result-object p0

    new-instance p1, Ljava/awt/Color;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/ColorSchemeAtom;->getColor(I)I

    move-result p0

    invoke-direct {p1, p0, v2}, Ljava/awt/Color;-><init>(IZ)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/awt/Color;

    invoke-direct {p1, p0, v2}, Ljava/awt/Color;-><init>(IZ)V

    :goto_0
    new-instance p0, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v0

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Ljava/awt/Color;-><init>(III)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getFlag(I)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "paragraph_flags"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->getSubValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getMasterPropName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "linespacing"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "spacebefore"

    return-object p0

    :cond_0
    return-object p1
.end method

.method private getMasterPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/hslf/model/textproperties/TextProp;",
            ">(",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getTextPropType()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->character:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRunType()I

    move-result v2

    instance-of v3, v0, Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getMasterSheet()Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "MasterSheet is not available"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v4

    :cond_2
    :goto_1
    array-length v3, p2

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v5, p2, v1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndentLevel()I

    move-result v6

    invoke-direct {p0, v5}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getMasterPropName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v6, v7, p1}, Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;->getPropCollection(IILjava/lang/String;Z)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6, v5}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->findByName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->isValidProp(Lorg/apache/poi/hslf/model/textproperties/TextProp;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v4
.end method

.method private getPctOrPoints(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    if-gez p0, :cond_1

    invoke-static {p0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    int-to-double p0, p0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static getRawText(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRecords([Lorg/apache/poi/hslf/record/Record;[ILorg/apache/poi/hslf/record/TextHeaderAtom;)[Lorg/apache/poi/hslf/record/Record;
    .locals 4

    if-eqz p0, :cond_5

    :goto_0
    const/4 v0, 0x0

    .line 3
    aget v1, p1, v0

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4
    aget-object v2, p0, v1

    .line 5
    instance-of v3, v2, Lorg/apache/poi/hslf/record/TextHeaderAtom;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    if-ne v2, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 6
    aput v1, p1, v0

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    array-length p2, p0

    if-lt v1, p2, :cond_2

    .line 8
    sget-object p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "header atom wasn\'t found - container might contain only an OutlineTextRefAtom"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    new-array p0, v0, [Lorg/apache/poi/hslf/record/Record;

    return-object p0

    :cond_2
    const/4 p2, 0x1

    .line 9
    :goto_2
    aget v1, p1, v0

    add-int v2, v1, p2

    array-length v3, p0

    if-ge v2, v3, :cond_4

    add-int v2, v1, p2

    .line 10
    aget-object v2, p0, v2

    .line 11
    instance-of v3, v2, Lorg/apache/poi/hslf/record/TextHeaderAtom;

    if-nez v3, :cond_4

    instance-of v2, v2, Lorg/apache/poi/hslf/record/SlidePersistAtom;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int v2, v1, p2

    .line 12
    const-class v3, [Lorg/apache/poi/hslf/record/Record;

    invoke-static {p0, v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/hslf/record/Record;

    .line 13
    aget v1, p1, v0

    add-int/2addr v1, p2

    aput v1, p1, v0

    return-object p0

    .line 14
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "records need to be set."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getText(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRawText(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRunType()I

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->toExternalString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isValidProp(Lorg/apache/poi/hslf/model/textproperties/TextProp;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "font"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$addTabStops$1(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->addTabStop(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)V

    return-void
.end method

.method private synthetic lambda$getTabStops$0(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;
    .locals 1

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$HSLFTabStopDecorator;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)V

    return-object v0
.end method

.method private static synthetic lambda$setPropVal$2(Ljava/lang/Integer;Lorg/apache/poi/hslf/model/textproperties/TextProp;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->setValue(I)V

    return-void
.end method

.method private static refreshRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/record/Record;->writeOut(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string v1, "failed dummy write"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private setFlag(IZ)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "paragraph_flags"

    invoke-virtual {v0, v1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->addWithName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;

    invoke-virtual {v0, p2, p1}, Lorg/apache/poi/hslf/model/textproperties/BitMaskTextProp;->setSubValue(ZI)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setDirty()V

    return-void
.end method

.method private setPctOrPoints(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private setPropValInner(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "+",
            "Lorg/apache/poi/hslf/model/textproperties/TextProp;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getTextPropType()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;->character:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection$TextPropType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    instance-of v2, v1, Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRunType()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndentLevel()I

    move-result v2

    const-string v3, "*"

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/apache/poi/hslf/usermodel/HSLFMasterSheet;->getPropCollection(IILjava/lang/String;Z)Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string p1, "Master text property collection can\'t be determined."

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-nez p3, :cond_3

    invoke-virtual {p1, p2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->removeByName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    goto :goto_2

    :cond_3
    invoke-virtual {p1, p2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->addWithName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setDirty()V

    return-void
.end method

.method public static setText(Ljava/util/List;Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFTextRun;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextRun;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->setText(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-direct {v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->addTextRun(Lorg/apache/poi/hslf/usermodel/HSLFTextRun;)V

    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->appendText(Ljava/util/List;Ljava/lang/String;Z)Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    move-result-object p0

    return-object p0
.end method

.method public static storeText(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->fixLineEndings(Ljava/util/List;)V

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->updateTextAtom(Ljava/util/List;)V

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->updateStyles(Ljava/util/List;)V

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->updateHyperlinks(Ljava/util/List;)V

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->refreshRecords(Ljava/util/List;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_dirty:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static supplySheet(Ljava/util/List;Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;",
            "Lorg/apache/poi/hslf/usermodel/HSLFSheet;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    .line 2
    invoke-direct {v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->supplySheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private supplySheet(Lorg/apache/poi/hslf/usermodel/HSLFSheet;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    .line 4
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    .line 5
    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->updateSheet()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toExternalString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xd

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget v0, v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->CENTER_TITLE:Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;

    iget v0, v0, Lorg/apache/poi/sl/usermodel/TextShape$TextPlaceholder;->nativeId:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x20

    :cond_1
    :goto_0
    const/16 p1, 0xb

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toInternalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\r?\\n"

    const-string v1, "\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static updateHyperlinks(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    iget-object v1, v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    instance-of v5, v4, Lorg/apache/poi/hslf/record/InteractiveInfo;

    if-nez v5, :cond_0

    instance-of v5, v4, Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v1, v4}, Lorg/apache/poi/hslf/record/RecordContainer;->removeChild(Lorg/apache/poi/hslf/record/Record;)Lorg/apache/poi/hslf/record/Record;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {v3}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getHyperlink()Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;

    move-result-object v4

    if-eqz v4, :cond_4

    if-ne v4, v0, :cond_4

    invoke-virtual {v4}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->getEndIndex()I

    move-result v0

    invoke-virtual {v3}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->setEndIndex(I)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->getInfo()Lorg/apache/poi/hslf/record/InteractiveInfo;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->getTextRunInfo()Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    move-result-object v0

    invoke-virtual {v1, v3}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I

    :cond_5
    :goto_2
    move-object v0, v4

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->getInfo()Lorg/apache/poi/hslf/record/InteractiveInfo;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/usermodel/HSLFHyperlink;->getTextRunInfo()Lorg/apache/poi/hslf/record/TxInteractiveInfoAtom;

    move-result-object v0

    invoke-virtual {v1, p0}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I

    invoke-virtual {v1, v0}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I

    :cond_7
    return-void
.end method

.method private static updateStyles(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRawText(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->toInternalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    iget-object v2, v2, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findStyleAtomPresent(Lorg/apache/poi/hslf/record/TextHeaderAtom;I)Lorg/apache/poi/hslf/record/StyleTextPropAtom;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->clearStyles()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v6}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getParagraphStyle()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    invoke-virtual {v8, v4}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->copy()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    invoke-virtual {v2, v4}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->addParagraphTextPropCollection(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    :cond_0
    invoke-virtual {v6}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {v7}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getCharacterStyle()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    invoke-virtual {v9, v5}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->copy()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/hslf/record/StyleTextPropAtom;->addCharacterTextPropCollection(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V

    :cond_1
    invoke-virtual {v7}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v7

    invoke-virtual {v8}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getCharactersCovered()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v10}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    invoke-virtual {v9, v7}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    invoke-virtual {v4}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getCharactersCovered()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v4, v10}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    invoke-virtual {v5}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getCharactersCovered()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v5, v10}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    move-object v7, v9

    goto :goto_1

    :cond_2
    move-object v6, v8

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getCharactersCovered()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    invoke-virtual {v7}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getCharactersCovered()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    invoke-virtual {v4}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getCharactersCovered()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    invoke-virtual {v5}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getCharactersCovered()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->updateTextSize(I)V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    array-length v2, p0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, p0, v1

    instance-of v4, v3, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;

    if-eqz v4, :cond_4

    check-cast v3, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v3, p0}, Lorg/apache/poi/hslf/record/TextSpecInfoAtom;->setParentSize(I)V

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    :cond_6
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string v0, "Not all TextPropCollection could be determined."

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static updateTextAtom(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRawText(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->toInternalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    iget-object v3, v3, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    iget-object v4, v4, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_byteAtom:Lorg/apache/poi/hslf/record/TextBytesAtom;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    iget-object v5, v5, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_charAtom:Lorg/apache/poi/hslf/record/TextCharsAtom;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3, v6}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->findStyleAtomPresent(Lorg/apache/poi/hslf/record/TextHeaderAtom;I)Lorg/apache/poi/hslf/record/StyleTextPropAtom;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    if-nez v4, :cond_1

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v7

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lorg/apache/poi/hslf/record/TextCharsAtom;

    invoke-direct {v1}, Lorg/apache/poi/hslf/record/TextCharsAtom;-><init>()V

    move-object v5, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v5, v0}, Lorg/apache/poi/hslf/record/TextCharsAtom;->setText(Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_4

    :cond_2
    if-nez v5, :cond_4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v7

    goto :goto_3

    :cond_4
    :goto_2
    new-instance v1, Lorg/apache/poi/hslf/record/TextBytesAtom;

    invoke-direct {v1}, Lorg/apache/poi/hslf/record/TextBytesAtom;-><init>()V

    move-object v4, v1

    move-object v1, v5

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    new-array v8, v8, [B

    invoke-static {v0, v8, v2}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;[BI)V

    invoke-virtual {v4, v8}, Lorg/apache/poi/hslf/record/TextBytesAtom;->setText([B)V

    move-object v0, v5

    move-object v5, v4

    :goto_4
    invoke-virtual {v3}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v9

    const/4 v10, -0x1

    move v11, v10

    move v12, v11

    :goto_5
    array-length v13, v9

    if-ge v2, v13, :cond_9

    aget-object v13, v9, v2

    if-ne v13, v3, :cond_5

    goto :goto_7

    :cond_5
    if-eq v13, v1, :cond_7

    if-ne v13, v5, :cond_6

    goto :goto_6

    :cond_6
    if-ne v13, v6, :cond_8

    move v12, v2

    goto :goto_7

    :cond_7
    :goto_6
    move v11, v2

    :cond_8
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    if-ne v11, v10, :cond_a

    invoke-virtual {v8, v5, v3}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    goto :goto_8

    :cond_a
    aput-object v5, v9, v11

    :goto_8
    if-ne v12, v10, :cond_b

    invoke-virtual {v8, v6, v5}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    :cond_b
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    if-ne v5, v4, :cond_c

    iput-object v4, v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_byteAtom:Lorg/apache/poi/hslf/record/TextBytesAtom;

    iput-object v7, v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_charAtom:Lorg/apache/poi/hslf/record/TextCharsAtom;

    goto :goto_9

    :cond_c
    iput-object v7, v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_byteAtom:Lorg/apache/poi/hslf/record/TextBytesAtom;

    iput-object v0, v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_charAtom:Lorg/apache/poi/hslf/record/TextCharsAtom;

    goto :goto_9

    :cond_d
    return-void
.end method


# virtual methods
.method public addTabStops(DLorg/apache/poi/sl/usermodel/TabStop$TabStopType;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;-><init>(ILorg/apache/poi/sl/usermodel/TabStop$TabStopType;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;->setPositionInPoints(D)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p1

    instance-of p1, p1, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sunia/HTREnginev2/b8h;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/b8h;-><init>(Lorg/apache/poi/hslf/model/textproperties/HSLFTabStop;)V

    iget-object p2, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string p3, "tabStops"

    invoke-direct {p0, p2, p3, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setPropValInner(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/hslf/record/RecordTypes;->TextRulerAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p1, p1, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hslf/record/TextRulerAtom;

    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/poi/hslf/record/TextRulerAtom;->getParagraphInstance()Lorg/apache/poi/hslf/record/TextRulerAtom;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/RecordContainer;->appendChildRecord(Lorg/apache/poi/hslf/record/Record;)I

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hslf/record/TextRulerAtom;->getTabStops()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addTextRun(Lorg/apache/poi/hslf/usermodel/HSLFTextRun;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTabStops()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "tabStops"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setPropValInner(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/hslf/record/RecordTypes;->TextRulerAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v0, v0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/TextRulerAtom;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextRulerAtom;->getTabStops()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public createTextRuler()Lorg/apache/poi/hslf/record/TextRulerAtom;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuler()Lorg/apache/poi/hslf/record/TextRulerAtom;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_ruler:Lorg/apache/poi/hslf/record/TextRulerAtom;

    if-nez v0, :cond_2

    invoke-static {}, Lorg/apache/poi/hslf/record/TextRulerAtom;->getParagraphInstance()Lorg/apache/poi/hslf/record/TextRulerAtom;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_ruler:Lorg/apache/poi/hslf/record/TextRulerAtom;

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_byteAtom:Lorg/apache/poi/hslf/record/TextBytesAtom;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_charAtom:Lorg/apache/poi/hslf/record/TextCharsAtom;

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_ruler:Lorg/apache/poi/hslf/record/TextRulerAtom;

    invoke-virtual {v1, v2, v0}, Lorg/apache/poi/hslf/record/RecordContainer;->addChildAfter(Lorg/apache/poi/hslf/record/Record;Lorg/apache/poi/hslf/record/Record;)I

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_ruler:Lorg/apache/poi/hslf/record/TextRulerAtom;

    return-object p0
.end method

.method public getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->styleTextProp9Atom:Lorg/apache/poi/hslf/record/StyleTextProp9Atom;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->getAutoNumberTypes()[Lorg/apache/poi/hslf/model/textproperties/TextPFException9;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndentLevel()I

    move-result p0

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    if-eq p0, v2, :cond_2

    array-length v2, v0

    if-lt p0, v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, v0, p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPFException9;->getAutoNumberScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getAutoNumberingStartAt()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->styleTextProp9Atom:Lorg/apache/poi/hslf/record/StyleTextProp9Atom;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->getAutoNumberTypes()[Lorg/apache/poi/hslf/model/textproperties/TextPFException9;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndentLevel()I

    move-result p0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt p0, v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, v0, p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPFException9;->getAutoNumberStartNumber()Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Short;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getBulletChar()Ljava/lang/Character;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "bullet.char"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getBulletColor()Ljava/awt/Color;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "bullet.color"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getFlag(I)Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result v0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    invoke-static {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getColorFromColorIndexStruct(ILorg/apache/poi/hslf/usermodel/HSLFSheet;)Ljava/awt/Color;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getFontColor()Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    invoke-interface {p0}, Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;->getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/sl/draw/DrawPaint;->applyColorTransform(Lorg/apache/poi/sl/usermodel/ColorStyle;)Ljava/awt/Color;

    move-result-object p0

    return-object p0
.end method

.method public getBulletFont()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "bullet.font"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getFlag(I)Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->getFont(I)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getDefaultFontFamily()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBulletSize()Ljava/lang/Double;
    .locals 1

    const-string v0, "bullet.size"

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPctOrPoints(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getBulletStyle()Lorg/apache/poi/sl/usermodel/TextParagraph$BulletStyle;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->isBullet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getAutoNumberingScheme()Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$1;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V

    return-object v0
.end method

.method public getDefaultFontFamily()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontGroup;->LATIN:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getFontInfo(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;->ARIAL:Lorg/apache/poi/hslf/usermodel/HSLFFontInfoPredefined;

    :cond_1
    invoke-interface {v1}, Lorg/apache/poi/common/usermodel/fonts/FontInfo;->getTypeface()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultFontSize()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getFontSize()Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultTabSize()Ljava/lang/Double;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFontAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "fontAlign"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->AUTO:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->BOTTOM:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->CENTER:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->TOP:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0

    :cond_4
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;->BASELINE:Lorg/apache/poi/sl/usermodel/TextParagraph$FontAlign;

    return-object p0
.end method

.method public getHangingPunct()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "wrapFlags"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getIndent()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_ruler:Lorg/apache/poi/hslf/record/TextRulerAtom;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/TextRulerAtom;->getBulletOffsets()[Ljava/lang/Integer;

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndentLevel()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndentLevel()I

    move-result v2

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v2, "bullet.offset"

    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    if-nez p0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v0, p0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public getIndentLevel()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->getIndentLevel()S

    move-result p0

    :goto_0
    return p0
.end method

.method public getIndex()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getLeftMargin()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_ruler:Lorg/apache/poi/hslf/record/TextRulerAtom;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/TextRulerAtom;->getTextOffsets()[Ljava/lang/Integer;

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndentLevel()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndentLevel()I

    move-result v2

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v2, "text.offset"

    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    if-nez p0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v0, p0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/util/Units;->masterToPoints(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public getLineSpacing()Ljava/lang/Double;
    .locals 1

    const-string v0, "linespacing"

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPctOrPoints(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getParagraphStyle()Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    return-object p0
.end method

.method public getParentShape()Lorg/apache/poi/hslf/usermodel/HSLFTextShape;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_parentShape:Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    return-object p0
.end method

.method public bridge synthetic getParentShape()Lorg/apache/poi/sl/usermodel/TextShape;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getParentShape()Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    move-result-object p0

    return-object p0
.end method

.method public getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/poi/hslf/model/textproperties/TextProp;",
            ">(",
            "Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->findByName(Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->isValidProp(Lorg/apache/poi/hslf/model/textproperties/TextProp;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getMasterPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    return-object p0
.end method

.method public getRecords()[Lorg/apache/poi/hslf/record/Record;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/RecordContainer;->getChildRecords()[Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-static {v0, v1, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRecords([Lorg/apache/poi/hslf/record/Record;[ILorg/apache/poi/hslf/record/TextHeaderAtom;)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p0

    return-object p0
.end method

.method public getRightMargin()Ljava/lang/Double;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRunType()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getTextType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getShapeId()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->shapeId:I

    return p0
.end method

.method public getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_sheet:Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    return-object p0
.end method

.method public getSpaceAfter()Ljava/lang/Double;
    .locals 1

    const-string v0, "spaceafter"

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPctOrPoints(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getSpaceBefore()Ljava/lang/Double;
    .locals 1

    const-string v0, "spacebefore"

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPctOrPoints(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getStartIdxOfTextRun(Lorg/apache/poi/hslf/usermodel/HSLFTextRun;)I
    .locals 3

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->parentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;

    invoke-virtual {v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    if-ne v2, p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getStyleTextProp9Atom()Lorg/apache/poi/hslf/record/StyleTextProp9Atom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->styleTextProp9Atom:Lorg/apache/poi/hslf/record/StyleTextProp9Atom;

    return-object p0
.end method

.method public getTabStops()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/sl/usermodel/TabStop;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/poi/hslf/usermodel/HSLFSlideMaster;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v2, "tabStops"

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getMasterPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hslf/model/textproperties/HSLFTabStopPropCollection;->getTabStops()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/hslf/record/RecordTypes;->TextRulerAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short v2, v2, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hslf/record/RecordContainer;->findFirstOfType(J)Lorg/apache/poi/hslf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hslf/record/TextRulerAtom;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hslf/record/TextRulerAtom;->getTabStops()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/c8h;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c8h;-><init>(Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getTextAlign()Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const-string v1, "alignment"

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;)Lorg/apache/poi/hslf/model/textproperties/TextProp;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/model/textproperties/TextProp;->getValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->LEFT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY_LOW:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->THAI_DIST:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->DIST:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->JUSTIFY:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->RIGHT:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;->CENTER:Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTextRuler()Lorg/apache/poi/hslf/record/TextRulerAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_ruler:Lorg/apache/poi/hslf/record/TextRulerAtom;

    return-object p0
.end method

.method public getTextRuns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextRun;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    return-object p0
.end method

.method public getTextboxWrapper()Lorg/apache/poi/hslf/record/EscherTextboxWrapper;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->getParentRecord()Lorg/apache/poi/hslf/record/RecordContainer;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/record/EscherTextboxWrapper;

    return-object p0
.end method

.method public isBullet()Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getFlag(I)Z

    move-result p0

    return p0
.end method

.method public isDirty()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_dirty:Z

    return p0
.end method

.method public isDrawingBased()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getIndex()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHeaderOrFooter()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getParentShape()Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFSimpleShape;->getPlaceholder()Lorg/apache/poi/sl/usermodel/Placeholder;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    sget-object v1, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$2;->$SwitchMap$org$apache$poi$sl$usermodel$Placeholder:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextRun;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public setBullet(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setFlag(IZ)V

    return-void
.end method

.method public setBulletChar(Ljava/lang/Character;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    const-string v0, "bullet.char"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setBulletColor(Ljava/awt/Color;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/Color;

    invoke-virtual {p1}, Ljava/awt/Color;->getBlue()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/Color;->getGreen()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/Color;->getRed()I

    move-result v3

    const/16 v4, 0xfe

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Color;-><init>(IIII)V

    invoke-virtual {v0}, Ljava/awt/Color;->getRGB()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    const-string v1, "bullet.color"

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setFlag(IZ)V

    return-void
.end method

.method public setBulletFont(Ljava/lang/String;)V
    .locals 3

    const-string v0, "bullet.font"

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setFlag(IZ)V

    return-void

    :cond_0
    new-instance v2, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    invoke-direct {v2, p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getSheet()Lorg/apache/poi/hslf/usermodel/HSLFSheet;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFSheet;->getSlideShow()Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFSlideShow;->addFont(Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;->getIndex()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, v1, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setFlag(IZ)V

    return-void
.end method

.method public setBulletSize(Ljava/lang/Double;)V
    .locals 1

    const-string v0, "bullet.size"

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setPctOrPoints(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public varargs setBulletStyle([Ljava/lang/Object;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setBullet(Z)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setBullet(Z)V

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p1, v1

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setBulletSize(Ljava/lang/Double;)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Ljava/awt/Color;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/awt/Color;

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setBulletColor(Ljava/awt/Color;)V

    goto :goto_1

    :cond_2
    instance-of v3, v2, Ljava/lang/Character;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setBulletChar(Ljava/lang/Character;)V

    goto :goto_1

    :cond_3
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setBulletFont(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of v2, v2, Lorg/apache/poi/sl/usermodel/AutoNumberingScheme;

    if-nez v2, :cond_5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Lorg/apache/poi/hslf/exceptions/HSLFException;

    const-string p1, "setting bullet auto-numberin scheme for HSLF not supported ... yet"

    invoke-direct {p0, p1}, Lorg/apache/poi/hslf/exceptions/HSLFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method public setDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_dirty:Z

    return-void
.end method

.method public setIndent(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    const-string v0, "bullet.offset"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setIndentLevel(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    if-eqz p0, :cond_0

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;->setIndentLevel(S)V

    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->setIndex(I)V

    :cond_0
    return-void
.end method

.method public setLeftMargin(Ljava/lang/Double;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/util/Units;->pointsToMaster(D)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    const-string v0, "text.offset"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public setLineSpacing(Ljava/lang/Double;)V
    .locals 1

    const-string v0, "linespacing"

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setPctOrPoints(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public setParagraphStyle(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    return-void
.end method

.method public setParagraphTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_paragraphStyle:Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setDirty()V

    return-void
.end method

.method public setParentShape(Lorg/apache/poi/hslf/usermodel/HSLFTextShape;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_parentShape:Lorg/apache/poi/hslf/usermodel/HSLFTextShape;

    return-void
.end method

.method public setPropVal(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sunia/HTREnginev2/d8h;

    invoke-direct {v0, p3}, Lcom/sunia/HTREnginev2/d8h;-><init>(Ljava/lang/Integer;)V

    move-object p3, v0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setPropValInner(Lorg/apache/poi/hslf/model/textproperties/TextPropCollection;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setRightMargin(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public setRunType(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_headerAtom:Lorg/apache/poi/hslf/record/TextHeaderAtom;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/hslf/record/TextHeaderAtom;->setTextType(I)V

    :cond_0
    return-void
.end method

.method public setShapeId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->shapeId:I

    return-void
.end method

.method public setSpaceAfter(Ljava/lang/Double;)V
    .locals 1

    const-string v0, "spaceafter"

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setPctOrPoints(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public setSpaceBefore(Ljava/lang/Double;)V
    .locals 1

    const-string v0, "spacebefore"

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setPctOrPoints(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public setStyleTextProp9Atom(Lorg/apache/poi/hslf/record/StyleTextProp9Atom;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->styleTextProp9Atom:Lorg/apache/poi/hslf/record/StyleTextProp9Atom;

    return-void
.end method

.method public setTextAlign(Lorg/apache/poi/sl/usermodel/TextParagraph$TextAlign;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph$2;->$SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "alignment"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->setParagraphTextPropVal(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/hslf/usermodel/HSLFTextRun;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->_runs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getTextRuns()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;

    invoke-virtual {v2}, Lorg/apache/poi/hslf/usermodel/HSLFTextRun;->getRawText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->getRunType()I

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/poi/hslf/usermodel/HSLFTextParagraph;->toExternalString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
